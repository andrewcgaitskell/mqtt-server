python3 -m venv env

source /home/andrew_gaitskell/env/bin/activate

pip install wheel
pip install uwsgi
pip install Flask

hello world app
===============

from flask import Flask
app = Flask(__name__)
@app.route('/')
def hello_world():
    return 'Hello, World!'


uwsgi
======

uwsgi -s /tmp/yourapplication.sock --manage-script-name --mount /yourapplication=myapp:app

--virtualenv /path/to/virtual/environment.

uwsgi -s /tmp/yourapplication.sock --manage-script-name --mount /yourapplication=hello:app --virtualenv /home/andrew_gaitskell/env


You might also need to add --plugin python or --plugin python3 depending on which python version you use for your project.
