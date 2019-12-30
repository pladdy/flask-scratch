from flask_scratch import app


@app.route("/hello")
def hello():
    name = request.args.get("name", "world")
    return f"Hello, {escape(name)}!"
