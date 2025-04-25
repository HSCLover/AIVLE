FROM python:3.10

WORKDIR /workspace

RUN apt-get update && \
    apt-get install -y git && \
    pip install --upgrade pip

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
