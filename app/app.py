import flask

app = flask.Flask(__name__)
app.config["DEBUG"] = False

@app.route('/', methods=['GET'])
def home():
    return "Hello APK"

app.run(host='0.0.0.0')
