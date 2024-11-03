import pandas as pd
import mysql.connector
from flask import Flask, request, render_template, jsonify
from fuzzywuzzy import process
from sklearn.cluster import KMeans
from sklearn.feature_extraction.text import TfidfVectorizer
import numpy as np
import re

app = Flask(__name__)

# Koneksi ke Database MySQL
def connect_db():
    try:
        return mysql.connector.connect(
            host="localhost",
            user="root",  # ganti dengan username MySQL Anda
            password="",  # ganti dengan password MySQL Anda
            database="pt_chemco"  # ganti dengan nama database Anda
        )
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return None

# Prapemrosesan data
def preprocess_text(text):
    text = text.lower()  # Mengonversi ke huruf kecil
    text = re.sub(r'[^\w\s]', '', text)  # Menghapus tanda baca
    return text

# Auto Suggestion dan Fuzzy Search
def get_suggestions_and_fuzzy_search(query):
    db = connect_db()
    if db is None:
        return pd.DataFrame(), [], pd.DataFrame()  # Return empty dataframes on error

    try:
        cursor = db.cursor()
        cursor.execute("""
            SELECT id, no_dokumen, nama_dokumen, revisi_ke, nama_file_prod,
                   nama_file_dev, kategori_prosedur, kategori_dokumen, 
                   updated_by, status, remark, approved_by, created_by, 
                   update_at, create_at 
            FROM documents
        """)
        documents = cursor.fetchall()
        columns = [
            "id", "no_dokumen", "nama_dokumen", "revisi_ke", 
            "nama_file_prod", "nama_file_dev", "kategori_prosedur", 
            "kategori_dokumen", "updated_by", "status", 
            "remark", "approved_by", "created_by", "update_at", "create_at"
        ]
        documents_df = pd.DataFrame(documents, columns=columns)

        # Prapemrosesan dokumen
        documents_df['nama_dokumen_preprocessed'] = documents_df['nama_dokumen'].apply(preprocess_text)

        # Auto Suggestion
        suggestions = documents_df[documents_df['nama_dokumen'].str.contains(query, case=False, na=False)]

        # Fuzzy Search
        fuzzy_matches = process.extract(query, documents_df['nama_dokumen'].tolist(), limit=5)

        # Extracting detailed information for fuzzy matches
        detailed_fuzzy_matches = []
        for match in fuzzy_matches:
            match_name = match[0]
            match_score = match[1]
            matched_document = documents_df[documents_df['nama_dokumen'] == match_name]
            if not matched_document.empty:
                # Get the first match details (assuming no duplicates)
                detailed_fuzzy_matches.append((matched_document.iloc[0], match_score))

    finally:
        cursor.close()
        db.close()

    return suggestions, detailed_fuzzy_matches, documents_df

# Clustering dengan KMeans
def cluster_results(documents):
    vectorizer = TfidfVectorizer()
    X = vectorizer.fit_transform(documents['nama_dokumen'])
    
    # Adjust number of clusters
    n_clusters = min(3, len(documents)) if len(documents) > 0 else 1
    kmeans = KMeans(n_clusters=n_clusters)
    kmeans.fit(X)
    
    return kmeans.labels_

# Menghitung akurasi
def calculate_accuracy(suggestions, fuzzy_matches):
    if suggestions.empty or not fuzzy_matches:
        return 0.0  # Return 0% accuracy if suggestions or fuzzy matches are empty
    
    # Extract document names from fuzzy matches
    fuzzy_match_names = [match[0]['nama_dokumen'] for match in fuzzy_matches]
    
    # Calculate correct matches
    correct_matches = len([match for match in fuzzy_match_names if match in suggestions['nama_dokumen'].values])
    return (correct_matches / len(fuzzy_matches) * 100) if len(fuzzy_matches) > 0 else 0

@app.route("/", methods=["GET", "POST"])
def index():
    suggestions = pd.DataFrame()
    fuzzy_matches = []
    clustered_results = []
    accuracy = 0.0
    query = ""
    if request.method == "POST":
        query = request.form.get('query', '')
        
        # Mendapatkan saran dan hasil fuzzy
        suggestions, fuzzy_matches, documents_df = get_suggestions_and_fuzzy_search(query)
        
        # Melakukan clustering
        if not documents_df.empty:  # Cek apakah DataFrame tidak kosong sebelum clustering
            clustered_results = cluster_results(documents_df)

        # Menghitung akurasi
        accuracy = calculate_accuracy(suggestions, fuzzy_matches)

    suggestions_list = suggestions.to_dict(orient='records')  
    fuzzy_matches_list = [(match[0].to_dict(), match[1]) for match in fuzzy_matches] # Convert to list of dicts

    return render_template("index.html", suggestions=suggestions_list, 
                           fuzzy_matches=fuzzy_matches_list, clustered_results=clustered_results, 
                           accuracy=accuracy,query=query)

@app.route("/suggestions")
def suggestions():
    query = request.args.get("q")
    suggestions, fuzzy_matches, documents_df = get_suggestions_and_fuzzy_search(query)

    # Format suggestions to only include nama_dokumen
    suggestions_list = suggestions[['nama_dokumen']].to_dict(orient='records')

    # Format fuzzy_matches for potential future use, if needed
    fuzzy_matches_formatted = [(match[0], match[1]) for match in fuzzy_matches]

    return jsonify({"suggestions": suggestions_list, "fuzzy_matches": fuzzy_matches_formatted})

@app.context_processor
def inject_enumerate():
    return dict(enumerate=enumerate)

if __name__ == "__main__":
    app.run(debug=True)
