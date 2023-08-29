## [REST API](http://localhost:8080/doc)

## Концепция:

- Spring Modulith
    - [Spring Modulith: достигли ли мы зрелости модульности](https://habr.com/ru/post/701984/)
    - [Introducing Spring Modulith](https://spring.io/blog/2022/10/21/introducing-spring-modulith)
    - [Spring Modulith - Reference documentation](https://docs.spring.io/spring-modulith/docs/current-SNAPSHOT/reference/html/)

```
  url: jdbc:postgresql://localhost:5432/jira
  username: jira
  password: JiraRush
```

- Есть 2 общие таблицы, на которых не fk
    - _Reference_ - справочник. Связь делаем по _code_ (по id нельзя, тк id привязано к окружению-конкретной базе)
    - _UserBelong_ - привязка юзеров с типом (owner, lead, ...) к объекту (таска, проект, спринт, ...). FK вручную будем
      проверять

## Аналоги

- https://java-source.net/open-source/issue-trackers

## Тестирование

- https://habr.com/ru/articles/259055/

Список выполненных задач:

    V 1. Удалить социальные сети: vk, yandex.

    V 2. Вынести чувствительную информацию в отдельный проперти файл, значения этих проперти должны считываться при старте сервера из переменных окружения машины. 

    V 3. Переделать тесты так, чтоб во время тестов использовалась in memory БД (H2), а не PostgreSQL.

    V 4. Написать тесты для всех публичных методов контроллера ProfileRestController. 

    V 5. Сделать рефакторинг метода com.javarush.jira.bugtracking.attachment.FileUtil#upload чтоб он использовал современный подход для работы с файловой системмой. 

    X 6. Добавить новый функционал: добавления тегов к задаче (REST API + реализация на сервисе). Фронт делать необязательно.

    X 7. Добавить подсчет времени сколько задача находилась в работе и тестировании. 

    V 8. Написать Dockerfile для основного сервера.

    V 9. Написать docker-compose файл для запуска контейнера сервера вместе с БД и nginx.

    X 10. Добавить локализацию минимум на двух языках для шаблонов писем (mails) и стартовой страницы index.html.

    X 11. Переделать механизм распознавания «свой-чужой» между фронтом и беком с JSESSIONID на JWT. 