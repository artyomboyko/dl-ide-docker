# dl-ide-docker
Мой первый собранный образ Docker. Образ содержит готовую среду разработки JupyterLab со всеми установленными необходимыми библиотеками.

## Сборка образа 
Осуществляется командой `docker build -t notebook . -t artyomboyko/dl-ide`

> Примечание: Указываем имя пользователя и тег, чтобы не задавать его отдельно с помощью команды `docker tag notebook artyomboyko/dl-ide` после сборки.

## Публикачия образа в Registry

Осуществляется командой `docker push`

## Запуск образа
Осуществляется командой `docker run --rm -p 8888:8888 -v C:\Users\ArtyomBoyko\Desktop\First_Docker_image\.jupyter:/home/developer/.jupyter -v C:\Users\ArtyomBoyko\Desktop\First_Docker_image\data:/home/developer/data -it notebook`

## 

