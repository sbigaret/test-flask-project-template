FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN test_flask_project_template create-db
RUN test_flask_project_template populate-db
RUN test_flask_project_template add-user -u admin -p admin
EXPOSE 5000
CMD ["test_flask_project_template", "run"]
