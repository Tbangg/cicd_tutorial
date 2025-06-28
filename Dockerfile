FROM ubuntu:latest
MAINTAINER Tieu Bang "bangb2205973@student.ctu.edu.vn"
ENV PIP_BREAK_SYSTEM_PACKAGES=1
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]

