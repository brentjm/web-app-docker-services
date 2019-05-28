"""
Example Flask app
"""

from flask import Flask

application = Flask(__name__)


@application.route("/test")
def test():
    """
    Default route
    """
    return "Hello World!"


if __name__ == "__main__":
    application.run(host="0.0.0.0:5000")
