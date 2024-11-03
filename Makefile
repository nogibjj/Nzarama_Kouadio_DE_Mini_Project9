install:
	pip install --upgrade -r requirements.txt && pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py

test:
    pytest --nbval *.ipynb

all: install format lint test