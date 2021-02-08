FROM gcr.io/deeplearning-platform-release/tf2-cpu
# TODO 3

COPY . /code

WORKDIR /code

RUN pip3 install cloudml-hypertune
RUN pip3 install tensorflow_recommenders
RUN pip3 install gcsfs
RUN pip3 install tensorflow==2.3.0

ENTRYPOINT ["python3", "-m", "trainer.task"]
