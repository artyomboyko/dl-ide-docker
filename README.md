# dl-ide-docker
Мой первый собранный образ Docker. Образ содержит готовую среду разработки JupyterLab со всеми необходимыми библиотеками ML & DL.

## Сборка образа 
Осуществляется командой:
```console
$ docker build -t artyomboyko/dl-ide . 
```

> Примечание: Указываем имя пользователя и тег, чтобы не задавать его отдельно с помощью команды `docker tag notebook artyomboyko/dl-ide` после сборки.

## Запуск образа
Осуществляется командой:    
```console
$ docker run --rm -p 9999:8888 --gpus all -v C:\Users\ArtyomBoyko\Documents\Workspace\dl-ide-docker\.jupyter:/home/developer/project/.jupyter -v C:\Users\ArtyomBoyko\Documents\Workspace\dl-ide-docker\:/home/developer/project/ -it artyomboyko/dl-ide

## Публикация образа в Registry

Осуществляется командой:
```console
docker push artyomboyko/dl-ide
```

# Список полезных образов
- [rapidsai/base](https://hub.docker.com/r/rapidsai/base)

# TODO
- [X] https://stackoverflow.com/questions/77731122/cudf-and-numba-version-conflict
- [X] pip: not found
- [X] https://github.com/pytorch/pytorch/issues/29745#issuecomment-553588171

