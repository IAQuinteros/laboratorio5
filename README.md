# Laboratorio 5
1. Crear modelos y tablas de base de datos
Tendrás que crear al menos 3 modelos independientes (y sus respectivas tablas). Más adelante en el curso aprenderemos a crear asociaciones entre modelos, pero por el momento todos los modelos serán independientes entre sí.

1.1 Creación del modelo y tabla de base de datos User
Crea el modelo User y su respectiva tabla de base de datos con al menos los siguientes atributos:

email (de tipo string)

first_name (tipo string)

last_name (tipo string)

created_at (tipo datetime)

updated_at (tipo datetime)

1.2 Creación del modelo y tabla de base de datos Chat
Crea el modelo Chat y su respectiva tabla de base de datos con los siguientes atributos:

sender_id (de tipo integer)

receiver_id (tipo integer)

created_at (tipo datetime)

updated_at (tipo datetime)

1.3 Creación del modelo y tabla de base de datos Message
Crea el modelo Message y su respectiva tabla de base de datos con los siguientes atributos:

chat_id (tipo integer)

user_id (tipo integer)

body (tipo text)

created_at (tipo datetime)

updated_at (tipo datetime)

Todos los atributos deben ser NOT NULL a nivel de base de datos.

2. Crear datos de prueba
Llena el archivo db/seeds.rb con al menos 10 instancias de cada modelo. Este archivo se usa para poblar la base de datos con datos usando sentencias create, y se ejecuta con el comando:

bin/rails db:seed
