# Определим базовый образ
FROM nvidia/cuda:12.2.2-cudnn8-devel-ubuntu22.04

# Обновим ОС и установим Python & Pip
USER root
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y python3 python3-pip nano mc htop iotop


# Установим необоходимые пакеты Python
COPY requirements.txt /tmp

# Установим необходимые пакеты с зависимостями Nvidia Pip 
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Создадим пользователя для запуска JyputerLab
RUN useradd -m -s /bin/bash developer
USER developer

# Создадим рабочую директорию
RUN mkdir /home/developer/project/
WORKDIR /home/developer/project/

# Переопределяем место хранения кеша библиотек Transformer, Datasets
ENV TRANSFORMERS_CACHE='/home/developer/project/data/cache/Transformer'
ENV HF_DATASETS_CACHE='/home/developer/project/data/cache/Datasets'

# Публикуем порт JupyterLab
EXPOSE 8888

# Запускаем JupyterLab
ENTRYPOINT [ "jupyter-lab" ]
CMD [ "--ip", "0.0.0.0" ]