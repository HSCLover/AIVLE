FROM python:3.10

WORKDIR /workspace

# Git 설치 후 레포 클론
RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/HSClover/AIVLE.git

# 레포 안의 requirements.txt로 패키지 설치
RUN pip install --upgrade pip && \
    pip install -r /workspace/AIVLE/requirements.txt

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
