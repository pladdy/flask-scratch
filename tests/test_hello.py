import pytest

from flask_scratch import create_app
from http import HTTPStatus


@pytest.fixture
def app():
    app = create_app({"TESTING": True})
    yield app


@pytest.fixture
def client(app):
    return app.test_client()


def test_root(client):
    res = client.get("/")
    assert res.status_code == HTTPStatus.NOT_FOUND
    return True


def test_hello(client):
    res = client.get("/hello")
    assert res.status_code == HTTPStatus.OK
    return True
