# dl-ide-docker
Мой первый собранный образ Docker. Образ содержит готовую среду разработки JupyterLab со всеми установленными необходимыми библиотеками.

## Сборка образа 
Осуществляется командой `docker build -t notebook . -t artyomboyko/dl-ide`

> Примечание: Указываем имя пользователя и тег, чтобы не задавать его отдельно с помощью команды `docker tag notebook artyomboyko/dl-ide` после сборки.

## Публикация образа в Registry

Осуществляется командой `docker push`

## Запуск образа
Осуществляется командой `docker run --rm -p 9999:8888 --gpus all -v C:\Users\ArtyomBoyko\Documents\Workspace\dl-ide-docker\.jupyter:/home/developer/.jupyter -v C:\Users\ArtyomBoyko\Documents\Workspace\dl-ide-docker\data:/home/developer/data -it artyomboyko/dl-ide`

# TODO
- [ ] https://stackoverflow.com/questions/77731122/cudf-and-numba-version-conflict

