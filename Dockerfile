FROM python:3.9.17

ENV PIP_NO_CACHE_DIR=true
WORKDIR /tmp
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r requirements.txt

WORKDIR /app
COPY ./images /app/images
COPY ./main.py /app/main.py
COPY ./assets /app/assets

EXPOSE 8501

CMD ["streamlit", "run","main.py"]