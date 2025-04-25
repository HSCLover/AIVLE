FROM python:3.10

# 1. vscode 사용자 생성 (UID/GID 1000, 홈 디렉토리 포함)
RUN useradd -ms /bin/bash vscode && \
    apt-get update && apt-get install -y sudo && \
    echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# 2. vscode 사용자로 실행되도록 설정
USER vscode

WORKDIR /workspace

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
