FROM python:3.7.2-alpine3.9

COPY ./k8secode ./

RUN pip install pyyaml

ENTRYPOINT ["./k8secode"]
