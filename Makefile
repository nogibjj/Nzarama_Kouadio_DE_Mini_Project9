install:
	pip install --upgrade -r requirements.txt && pip install -r requirements.txt

format:
	black *.ipynb

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?ipynb *.ipynb

test:
	pytest --nbval *.ipynb

all: install format lint test
