from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello from Brown Bench app!, This is from version v0.1"

if __name__ == "__main__":
    app.run(host='0.0.0.0')
