from flask import Flask, render_template
import psycopg2

app = Flask(__name__)

conn = psycopg2.connect("dbname=postgres user=postgres password=admin123 host=localhost port=5432")

@app.route('/')
def index():
    return render_template("home.html")
    # return "<h>Hello, World!</h>"

@app.route("/exp")
def exp():
    cur = conn.cursor()
    cur.execute("SELECT * FROM expenses")
    records = cur.fetchall()
    return render_template("exp.html", expenses=records)

@app.route("/cat")
def cat():
    cur = conn.cursor()
    cur.execute("SELECT * FROM categories")
    records = cur.fetchall()
    return render_template("cat.html", categories=records)

@app.route("/pay")
def pay():
    cur = conn.cursor()
    cur.execute("SELECT * FROM payments")
    records = cur.fetchall()
    return render_template("pay.html", payments=records)