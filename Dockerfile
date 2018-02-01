FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/

CMD ["python3","manager.py","runserver"]