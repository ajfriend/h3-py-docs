env:
	python -m venv env
	env/bin/pip install --upgrade pip wheel setuptools
	env/bin/pip install -r requirements.txt


build:
	env/bin/jupyter-book build docs/

purge: clean
	rm -rf env

clean:
	rm -rf docs/_build/

open:
	open docs/_build/html/index.html

