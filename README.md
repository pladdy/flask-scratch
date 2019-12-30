[![Code Quaity](https://api.codacy.com/project/badge/Grade/0abfde75eb144632a928a8b1b37ac7cd)](https://www.codacy.com/manual/pladdy/flask-scratch?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=pladdy/flask-scratch&amp;utm_campaign=Badge_Grade)
[![Code Coverage](https://api.codacy.com/project/badge/Coverage/0abfde75eb144632a928a8b1b37ac7cd)](https://www.codacy.com/manual/pladdy/flask-scratch?utm_source=github.com&utm_medium=referral&utm_content=pladdy/flask-scratch&utm_campaign=Badge_Coverage)
[![Build Status](https://travis-ci.com/pladdy/flask-scratch.svg?branch=master)](https://travis-ci.com/pladdy/flask-scratch)
[![License](https://img.shields.io/github/license/pladdy/flask-scratch.svg)](https://github.com/pladdy/flask-scratch/blob/master/LICENSE)

# flask-scratch

Scratch pad/project for playing around with [Flask](https://www.palletsprojects.com/p/flask/).

## Setup

Python 3.7 should be installed; on a mac use `brew install python`.  On macOS Catalina this should install python 3 and pip 3.

Then `make`

### Project Initialization History

Below steps were run to set up project (these don't need to be re-run, only here for reference)
```
brew install python # running on macOS Catalina, python3 is default
pip install --upgrade pip
pip install python-language-server[all] # for atom IDE plugin
pip install python-dotenv # for .env file
make dependencies # installs black and poetry
poetry init # used defaults mostly
poetry add -D pytest
poetry add -D pytest-cov
poetry add -D codecov
poetry add -D pdoc3
poetry add flask
```

### Codacy

To send reports to codacy a `.env` file has to be created with CODACY_PROJECT_TOKEN set to the codacy project token.

Once `.env` file is set up with the correct token, `make cover-codacy` will generate coverage reports and send to codacy.

## References

Different resources used/referenced to set up the repo.

### Dependency References

  - [Poetry](https://python-poetry.org/docs/)

### Deployment

  - [Example with uwsgi](https://www.digitalocean.com/community/tutorials/how-to-deploy-python-wsgi-applications-using-uwsgi-web-server-with-nginx)
  - [WSGI Servers/Deploy](https://www.fullstackpython.com/wsgi-servers.html)

#### Packaging/Distribution

  - [Briefcase](https://beeware.org/project/projects/tools/briefcase/)
  - [Nuitka](https://nuitka.net/)
  - [PyInstaller](https://www.pyinstaller.org/)
  - [PyOxidizer](https://pyoxidizer.readthedocs.io/en/latest/#)

### Docker(izing)

  - [Docker & Flask Tutorial](https://codefresh.io/docker-tutorial/hello-whale-getting-started-docker-flask/)
  - [Flask megatutorial: Docker](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-xix-deployment-on-docker-containers)
  - [Digital Ocean Flask & Docker](https://www.digitalocean.com/community/tutorials/how-to-build-and-deploy-a-flask-application-using-docker-on-ubuntu-18-04)
  - [Dev.to Docker](https://dev.to/riverfount/dockerize-a-flask-app-17ag)

### Flask Project

  - [Flask Project](https://www.palletsprojects.com/p/flask/)
  - [Flask Project Docs](https://flask.palletsprojects.com/en/1.1.x/)
  - [Flask Github](https://github.com/pallets/flask)
  - [Flask Tutorial](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world)

### Misc References

  - [FullStackPython Flask](https://www.fullstackpython.com/flask.html)
  - [FullStackPython Flask Deploy](https://www.fullstackpython.com/deployment.html)
  - [Pallets projects](https://palletsprojects.com/)
  - [Python web frameworks](https://www.fullstackpython.com/web-frameworks.html)
  - [Python web dev](https://www.fullstackpython.com/web-development.html)

### Python

  - [Python structure](https://docs.python-guide.org/writing/structure/)
  - [Pytest](https://docs.pytest.org/en/latest/index.html)
  - [Pytest Cov](https://pytest-cov.readthedocs.io/en/latest/index.html)
  - [Kite](https://help.kite.com/article/60-using-the-atom-plugin)
  - [WSGI (web server gateway interface, pronounced whiskey)](https://en.wikipedia.org/wiki/Web_Server_Gateway_Interface)
    - [WSGI Docs](https://wsgi.readthedocs.io/en/latest/)
