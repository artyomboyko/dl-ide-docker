# Определим базовый образ
FROM python:3.10

# Создадим рабочее пространство для IDE
#RUN mkdir -v /workspace
COPY requirements.txt /tmp

# Установим необходимые пакеты с зависимостями
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Создадим пользователя для запуска JyputerLab
RUN useradd -m -s /bin/bash developer
USER developer

# Поменяем рабочую директорию
WORKDIR /home/developer

# Публикуем порт JupyterLab
EXPOSE 8888

# Запускаем JupyterLab
ENTRYPOINT [ "jupyter-lab" ]
CMD [ "--ip", "0.0.0.0" ]