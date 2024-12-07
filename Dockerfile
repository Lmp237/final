FROM python:3.7-slim
RUN mkdir -p /app & \
    mkdir -p /app/templates & \
    mkdir -p /app/static
RUN /usr/local/bin/python -m pip install --upgrade pip
COPY ./static /app/static/
COPY ./templates /app/templates/
COPY requirements.txt /requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY dbconnect.py /app/dbconnect.py
RUN chmod -x /app/app.py
ENTRYPOINT ["python","app.py"]



























