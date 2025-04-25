FROM python:3.10

# 사용자 추가 (UID 1000이 adan과 일치하게끔 설정)
RUN useradd -ms /bin/bash -u 1000 vscode && \
    apt-get update && apt-get install -y sudo && \
    echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER vscode
WORKDIR /workspace

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
