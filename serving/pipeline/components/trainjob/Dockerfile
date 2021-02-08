FROM google/cloud-sdk:latest

COPY . /code
WORKDIR /code

RUN pip3 install cloudml-hypertune
RUN pip3 install tensorflow_recommenders
RUN pip3 install gcsfs
RUN pip3 tensorflow==2.3.0

ENTRYPOINT ["./main.sh"]