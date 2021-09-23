FROM neylsoncrepalde/airflow-docker:latest

COPY config/airflow.cfg ${AIRFLOW_HOME}/airflow.cfg
COPY requirements.txt /requirements.txt
ENV PYTHONPATH /usr/local/airflow
RUN pip install -r /requirements.txt
