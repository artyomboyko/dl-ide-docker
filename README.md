# dl-ide-docker
Мой первый собранный образ Docker. Образ содержит готовую среду разработки JupyterLab со всеми необходимыми библиотеками ML & DL.

## Сборка образа 
Осуществляется командой:
```console
docker build -t artyomboyko/dl-ide . 
```

> Примечание: Указываем имя пользователя и тег, чтобы не задавать его отдельно с помощью команды `docker tag notebook artyomboyko/dl-ide` после сборки.

## Публикация образа в Registry

Осуществляется командой:
```console
docker push artyomboyko/dl-ide
```

## Запуск образа
Осуществляется командой:    
```console
docker run --rm -p 8888:8888 --gpus all -v C:\Users\<user_name>\Documents\Workspace\<project_name>\.jupyter:/home/developer/.jupyter -v C:\Users\<user_name>\Documents\Workspace\<project_name>\data:/home/developer/data -it artyomboyko/dl-ide
```
# Список полезных образов
- [rapidsai/base](https://hub.docker.com/r/rapidsai/base)

# TODO
- [X] https://stackoverflow.com/questions/77731122/cudf-and-numba-version-conflict
- [X]  pip: not found
- [X] https://github.com/pytorch/pytorch/issues/29745#issuecomment-553588171

