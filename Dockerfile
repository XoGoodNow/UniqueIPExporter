FROM  python:3.10
ENV PYTHONBUFFER=1
COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt
WORKDIR /app
COPY exporter.py .
ENTRYPOINT ["python3", :"./exporter.py"]




