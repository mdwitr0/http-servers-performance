# save this as app.py
from flask import Flask, request
from markupsafe import escape

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, world!'