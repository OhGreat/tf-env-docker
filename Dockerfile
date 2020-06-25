FROM tensorflow/tensorflow

RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 8888

RUN apt-get install sudo
RUN useradd -m -d /home/user -s /bin/bash user
RUN usermod -aG sudo user
RUN echo "user:password" | chpasswd

USER user
