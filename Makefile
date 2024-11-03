install:
	pip install --upgrade -r requirements.txt && pip install -r requirements.txt

format:
	nbqa black *.ipynb

lint:
	nbqa flake8 *.ipynb --max-line-length=800 --ignore=F821


test:
	pytest --nbval *.ipynb

all: install format lint test

