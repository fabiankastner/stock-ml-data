FROM python:3

RUN mkdir /app
WORKDIR /app

COPY ./requirements.txt /app/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./config.ini /app/
COPY ./nasdaqlisted.txt /app/
COPY ./main.py /app/

CMD python main.py