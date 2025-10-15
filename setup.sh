#!/usr/bin/env bash

echo "Installing pip dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Installing spaCy model..."
python -m spacy download en_core_web_sm

echo "Downloading NLTK data..."
python -c "import nltk; nltk.download('punkt'); nltk.download('wordnet'); nltk.download('averaged_perceptron_tagger')"
