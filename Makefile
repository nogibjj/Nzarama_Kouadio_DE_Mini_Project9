install:
    pip install -r requirements.txt

format:
    black .

lint:
    flake8 .

test:
    pytest --nbval *.ipynb
