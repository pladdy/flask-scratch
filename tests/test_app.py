import pytest

from http import HTTPStatus
from flask_scratch.app import create_app


@pytest.fixture
def app_in_test():
    app = create_app({"TESTING": True})
    yield app


@pytest.fixture
def client_in_test(app_in_test):
    return app_in_test.test_client()


def test_root(client_in_test):
    res = client_in_test.get("/")
    assert res.status_code == HTTPStatus.NOT_FOUND


def test_hello(client_in_test):
    res = client_in_test.get("/hello")
    assert res.status_code == HTTPStatus.OK
