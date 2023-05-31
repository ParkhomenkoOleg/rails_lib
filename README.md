# Oleh Parkhomenko CS34
Library app


## HTTP Verbs
| HTTP METHOD | URL                 | Payload | Description              |
|-------------|---------------------|-------|--------------------------|
| GET         | /libraries          | {}    | all libraries            |
| POST        | /libraries/new      | {}    | create new library       |
| UPDATE      | /libraries/:id/edit | {}    | update library           |
| DELETE      | /libraries/:id      | {}    | destroy library          |
| GET         | /books              | {}    | all books                |
| POST        | /books/new          | {}    | create new books         |
| UPDATE      | /books/:id/edit     | {}    | update books             |
| DELETE      | /books/:id          | {}    | destroy books            |
| GET         | /genres             | {}    | all genres               |
| POST        | /genres/new         | {}    | create new genre         |
| UPDATE      | /genres/:id/edit    | {}    | update genre             |
| DELETE      | /genres/:id         | {}    | destroy genre            |
| GET         | /authors            | {}    | all authors              |
| POST        | /authors/new        | {}    | create new author        |
| UPDATE      | /authors/:id/edit   | {}    | update author            |
| DELETE      | /authors/:id        | {}    | destroy author           |
| GET         | /users              | {}    | all users                |
| POST        | /users/new          | {}    | create new user          |
| UPDATE      | /users/:id/edit     | {}    | update user              |
| DELETE      | /users/:id          | {}    | destroy user             |
| GET         | /card_readers       | {}    | all card_readers         |
| POST        | /card_readers/new          | {}    | create new card_reader   |
| UPDATE      | /card_readers/:id/edit     | {}    | update card_reader       |
| DELETE      | /card_readers/:id          | {}    | destroy card_readers     |

### Labs

- [х] Task 1 -> Створити Rails додаток під назвою Library, створити базу даних з такими таблицями: Бібліотеки (поля на вибір), Книги (поля на вибір. Бібліотека може мати n книг), Автори(поля на вибір. Книга може мати n авторів), Жанр(поля на вибір. Книга може мати n авторів), Карта Читача (поля на вибір. Бібліотека може мати n карт), Користувачі (поля на вибір У карті може бути 1 користувач).
- [] Task 2 --> Вставити 100 записів у наші таблиці. У кожній групі по 6 таблиць в 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ.
  У кожній моделі повинні бути методи на оновлення. В 3 таблиці зробити методи, які будуть обгорткою на чистому SQL. У 3 таблиці просто на ОРМ.
  Зробити по 2 SQL VIEW.
- [] Task 3 --> Зробити CRUD форми під шкірну модель.
- [] Task 4 -->  - Додати гем Devise до вашого веб застосунку (повинна бути можливість зареєструватись/залогінитись/востановити пароль). Додати тести. Додати CSS/JS 🌞
- [] Task 5 --> Зробити root_page (наповнення яке завгодно але повинне бути посилання на  вхід/реєстрацію). Пропрацювати інформацію про лікарні, бібліотеки (треба додати назву, рік створення). Створити таблиці як на зображені (кожна таблиця повинна мати пагінацію,  якщо ви бачите поля "number of ... " то так це кількість моделей в асоціації 🙂 не треба створвати поле треба його порахувати) (додати CSS) . Створити сторінки під кожну модель. Додати логіку під Пошук та Сортування ----- Створити це за допомогою QueryObject. Додати тести під кожний елемент.