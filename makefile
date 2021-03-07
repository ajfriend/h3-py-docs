env:
	python -m venv env
	env/bin/pip install --upgrade pip wheel setuptools
	env/bin/pip install -r requirements.txt
	env/bin/pip install -e .


build:
	env/bin/jupyter-book build docs/

purge: clean
	rm -rf env

clean:
	rm -rf docs/_build/
	-@rm -rf .pytest_cache tests/__pycache__ __pycache__ _skbuild dist .coverage
	-@find . -type d -name '*.egg-info' | xargs rm -r
	-@find . -type f -name '*.pyc' | xargs rm -r
	-@find . -type d -name '*.ipynb_checkpoints' | xargs rm -r

open:
	open docs/_build/html/index.html

