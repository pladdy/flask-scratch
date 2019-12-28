from flask import Flask, escape, request


def create_app(test_config=None):
    app = Flask(__name__, instance_relative_config=True)

    @app.route("/hello")
    def hello():
        name = request.args.get("name", "world")
        return f"Hello, {escape(name)}!"

    return app
