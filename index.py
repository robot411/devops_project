from flask import Flask, render_template
import psycopg2

app = Flask(__name__)

conn = psycopg2.connect("dbname=postgres user=postgres password=admin123 host=localhost port=5432")

@app.route('/')
def index():
    return "<h>Hello, World!</h>"

@app.route("/exp")
def exp():
    cur = conn.cursor()
    cur.execute("SELECT * FROM expenses")
    records = cur.fetchall()
    return render_template("exp.html", expenses=records)