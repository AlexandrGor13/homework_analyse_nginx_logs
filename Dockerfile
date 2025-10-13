FROM python:3.13

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV TZ=Europe/Moscow

COPY . /app
WORKDIR app

RUN pip3 install --upgrade pip && pip3 install poetry
RUN poetry install --without=dev

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
