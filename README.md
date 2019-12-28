# flask-scratch

Scratch pad/project for playing around with [Flask](https://www.palletsprojects.com/p/flask/).

# Setup

Python 3.7 should be installed; on a mac use `brew install python`.  On macOS Catalina this should install python 3 and pip 3.

Then `make`

## Project Initialization History

Below steps were run to set up project (these don't need to be re-run, only here for reference)
```
pip install --upgrade pip
pip install python-language-server[all] # for atom IDE plugin
make dependencies # installs black and poetry
poetry init # used defaults mostly
poetry add -D pytest
poetry add -D pytest-cov
poetry add -D codecov
poetry add -D pdoc3
poetry add flask
```

# References

## Dependency References

  - [Poetry](https://python-poetry.org/docs/)

## Deployment

  - [Example with uwsgi](https://www.digitalocean.com/community/tutorials/how-to-deploy-python-wsgi-applications-using-uwsgi-web-server-with-nginx)
  - [WSGI Servers/Deploy](https://www.fullstackpython.com/wsgi-servers.html)

### Packaging/Distribution

  - [Briefcase](https://beeware.org/project/projects/tools/briefcase/)
  - [Nuitka](https://nuitka.net/)
  - [PyInstaller](https://www.pyinstaller.org/)
  - [PyOxidizer](https://pyoxidizer.readthedocs.io/en/latest/#)

## Flask Project

  - [Flask Project](https://www.palletsprojects.com/p/flask/)
  - [Flask Project Docs](https://flask.palletsprojects.com/en/1.1.x/)
  - [Flask Github](https://github.com/pallets/flask)
  - [Flask Tutorial](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world)

## Misc References

  - [FullStackPython Flask](https://www.fullstackpython.com/flask.html)
  - [FullStackPython Flask Deploy](https://www.fullstackpython.com/deployment.html)
  - [Pallets projects](https://palletsprojects.com/)
  - [Python web frameworks](https://www.fullstackpython.com/web-frameworks.html)
  - [Python web dev](https://www.fullstackpython.com/web-development.html)

## Python

  - [Python structure](https://docs.python-guide.org/writing/structure/)
  - [Pytest](https://docs.pytest.org/en/latest/index.html)
  - [Pytest Cov](https://pytest-cov.readthedocs.io/en/latest/index.html)
  - [Kite](https://help.kite.com/article/60-using-the-atom-plugin)
  - [WSGI (web server gateway interface, pronounced whiskey)](https://en.wikipedia.org/wiki/Web_Server_Gateway_Interface)
    - [WSGI Docs](https://wsgi.readthedocs.io/en/latest/)
