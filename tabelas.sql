-- João Rafael Pendezza Medeiros
-- João Ricardo Frazão Romano Rocha
-- Otavio Matias Medeiros
-- Lucca Martins Silva
-- Matheus Amim Martins de Almeida


DROP TABLE users;
DROP TABLE tweets ;

--Tabel 1
CREATE TABLE users (
  idusers SERIAL PRIMARY KEY,
  complet_name VARCHAR(30) NOT NULL UNIQUE ,
  email TEXT NOT NULL UNIQUE ,
  password VARCHAR(20) NOT NULL ,
  phone_number INTEGER NOT NULL ,
  create_date TIMESTAMP NOT NULL
);

--Tabela 2
CREATE TABLE  tweets (
  text VARCHAR(100) NOT NULL,
  post_date TIMESTAMP NOT NULL,
  idtweets SERIAL PRIMARY KEY
);

--Tabela de ligação 
CREATE TABLE users_tweets (
  id SERIAL PRIMARY KEY,
  user_id SERIAL, --(FOREIGN KEY)  ,
  tweets_id SERIAL  ,
  FOREIGN KEY (user_id) REFERENCES users(idusers),
  FOREIGN KEY (tweets_id) REFERENCES tweets(idtweets)
);


