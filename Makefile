.PHONY: black cov-reports cover cover-codacy dependencies docs requirements.txt run
.PHONY: docker-build docker-rebuild docker-run
.PHONY: poetry poetry-win poetry-update
.PHONY: test test-name test-with-cov

# colors for echos
BLU = \033[0;36m
CYN = \033[1;36m
NC= \033[0m
WHT = \033[1;37m

CONTAINER_NAME = flask-scratch-container
IMAGE_NAME = flask-scratch:latest
TEST = PYTHONPATH=./ poetry run pytest tests -s -v

all: poetry dependencies test

black:
	black --exclude git --exclude venv ./

cov-reports:
	$(TEST) --cov-report html --cov-report xml --cov flask_scratch/

cover: cov-reports
	open htmlcov/index.html

cover-codacy: cov-reports
	source .env && poetry run python-codacy-coverage -r coverage.xml

dependencies:
	pip install black
	pip install coverage
	@echo
	@echo "$(WHT)App dependencies are managed through '$(CYN)poetry$(WHT)'.$(NC)"
	@echo "$(WHT)See '$(BLU)https://python-poetry.org/docs/$(WHT)' for poetry usage (to update app dependencies).$(NC)"
	@echo
	poetry install --no-root
	@echo
	@echo "$(WHT)'$(CYN)poetry shell$(WHYT)' to start a shell.$(NC)"
	@echo "$(WHT)'$(CYN)exit$(WHT)' to leave shell.$(NC)"

docker-build: requirements.txt
	docker build -t $(IMAGE_NAME) .

docker-rebuild: requirements.txt
	docker build --no-cache -t $(IMAGE_NAME) .

docker-run: docker-build
	docker run -d -p 5000:5000 flask-scratch --name $(CONTAINER_NAME)

docker-stop:
	docker container stop $(CONTAINER_NAME)

docs:
	poetry run pdoc --html flask-scratch/ --force
	open html/flask-scratch/index.html

# https://python-poetry.org/docs/#installation
poetry:
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
poetry-win:
	(Invoke-WebRequest -Uri https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py -UseBasicParsing).Content | python
poetry-update:
	poetry self update

requirements.txt:
	poetry export -f $@ > $@

run:
	@echo "$(WHT)Running app, '$(CYN)CTRL+C$(WHT)' to stop.$(NC)"
	env FLASK_APP=flask_scratch.app poetry run flask run

test:
	$(TEST)

test-name:
ifdef name
	$(TEST) -k $(name)
else
	@echo Syntax is 'make $@ name=<test name>'
endif

test-with-cov: htmlcov
