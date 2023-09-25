# AWS-AppRunner-demo
[![Build with Github Actions](https://github.com/jithsg/AWS-AppRunner-demo/actions/workflows/main.yml/badge.svg)](https://github.com/jithsg/AWS-AppRunner-demo/actions/workflows/main.yml)
This project demonstrates a CI/CD pipeline using GitHub Actions to build a Python application and deploy it to Amazon Elastic Container Registry (ECR).

## Workflow: Build with GitHub Actions and Deploy to Amazon ECR

The GitHub Actions workflow is triggered on every push to the repository. It performs the following steps:

1. **Checkout Code:** Checks out the code to the GitHub runner.
2. **Set up Python:** Sets up Python 3.8 environment on the runner.
3. **Install Dependencies:** Installs the project dependencies.
4. **Linting:** Lints the code using pylint.
5. **Testing:** Runs tests using pytest.
6. **Configure AWS Credentials:** Configures AWS credentials for accessing Amazon ECR.
7. **Deploy to Amazon ECR:** Builds a Docker image of the application, tags it, and pushes it to Amazon ECR.
