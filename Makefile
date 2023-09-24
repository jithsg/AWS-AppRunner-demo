install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C,W1203,W0702 app.py

test:
	python -m pytest -vv --cov=app test_app.py

deploy:
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 185183796631.dkr.ecr.us-east-1.amazonaws.com
	docker build -t apprunner-container-demo .
	docker tag apprunner-container-demo:latest 185183796631.dkr.ecr.us-east-1.amazonaws.com/apprunner-container-demo:latest
	docker push 185183796631.dkr.ecr.us-east-1.amazonaws.com/apprunner-container-demo:latest


all: install lint test deploy