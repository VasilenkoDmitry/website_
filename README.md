Зависимости которые были установлены во время создания проекта:
server npm install express pg pg-hstore sequelize cors dotenv
server npm install -D nodemon
server npm i express-fileupload
server npm i uuid
server npm i jsonwebtoken bcrypt
client npm i axios react-router-dom mobx mobx-react-lite
client npm install react-bootstrap bootstrap
client npm i jwt-decode
папка в которую устанавливались зависимости.

Настройки подключения к базе данных были вынесены в переменное окружение в папке server, файл называется .env

Для запуска серверной части требуется ввести npm run dev при нахожднии в папке server
Для запуска клиентской части требуется ввести npm start при нахожднии в папке client
