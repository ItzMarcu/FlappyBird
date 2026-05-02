
FROM fedora:43

RUN dnf install -y \ 
	python3-pygame \
	mesa-libGL \
	libX11 \
	&& dnf clean all

WORKDIR /app

COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt || true

CMD ["python3", "game.py"]

