
CREATE DATABASE IF NOT EXISTS uripass;

USE uripass;

CREATE TABLE users(
  id_user INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(30) NOT NULL,
  user_last_name VARCHAR(30) NOT NULL,
  user_avatar VARCHAR(150) DEFAULT 'no-poster.jpg',
  user VARCHAR(15) NOT NULL,
  email VARCHAR(80) UNIQUE NOT NULL,
  pass CHAR(32) NOT NULL,
  role ENUM('Admin', 'User') NOT NULL
);

CREATE TABLE accounts(
  id_account INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  id_user INTEGER UNSIGNED NOT NULL,
  id_categorie INTEGER UNSIGNED NOT NULL,
  account_name VARCHAR(80) NOT NULL,
  FOREIGN KEY (id_user) REFERENCES users(id_user)
      ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE categories(
  id_categorie INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  categorie_name VARCHAR(20) NOT NULL
);

CREATE TABLE info(
  id_account INTEGER UNSIGNED NOT NULL,
  id_categorie INTEGER UNSIGNED NOT NULL,
  sm_login VARCHAR(20) NOT NULL,
  sm_password VARCHAR(30) NOT NULL,
  sm_email VARCHAR(80),
  sm_tel VARCHAR(20),
  sus_login VARCHAR(20) NOT NULL,
  sus_password VARCHAR(30) NOT NULL,
  sus_email VARCHAR(80),
  sus_tel VARCHAR(20),
  edu_login VARCHAR(20) NOT NULL,
  edu_password VARCHAR(30) NOT NULL,
  edu_email VARCHAR(80),
  edu_url VARCHAR(150),
  ema_login VARCHAR(20) NOT NULL,
  ema_password VARCHAR(30) NOT NULL,
  ema_tel VARCHAR(20),
  bnk_on_login VARCHAR(20) NOT NULL,
  bnk_on_password VARCHAR(30) NOT NULL,
  bnk_tel_password VARCHAR(30),
  bnk_num_account INTEGER,
  bnk_clabe INTEGER,
  serv_on_login VARCHAR(20) NOT NULL,
  serv_on_password VARCHAR(30) NOT NULL,
  serv_url VARCHAR(150),
  serv_ftp_user VARCHAR(30),
  serv_ftp_pass VARCHAR(30),
  serv_ftp_url VARCHAR(150),
  FOREIGN KEY (id_categorie) REFERENCES categories(id_categorie)
      ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_account) REFERENCES accounts(id_account)
      ON DELETE CASCADE ON UPDATE CASCADE
);

/*
* Inserts de catalogo
*/

INSERT INTO categories (categorie_name) VALUES
 ('social media'),
 ('suscriptions'),
 ('education'),
 ('e-mails'),
 ('banks'),
 ('servers');



 /*
 * Inserts de pruebas
 */

 INSERT INTO users(user_name, user_last_name, user, email, pass, role) VALUES
    ('Adan Uri', 'Plata', 'urivanhalen', 'adnauriplata@gmail.com', MD5('irunada'), 'Admin');


INSERT INTO accounts(id_user, id_categorie, account_name) VALUES
    (1, 1, 'Twitter');

INSERT INTO accounts(id_user, id_categorie, account_name) VALUES
    (1, 1, 'Twitter');

INSERT INTO info(id_account, id_categorie, sm_login, sm_password, sm_email) VALUES
    (1, 1, 'urivanplata', MD5('irunada6'), 'adanuriplata@gmail.com');

INSERT INTO info(id_account, id_categorie, sm_login, sm_password, sm_email) VALUES
    (1, 1, 'urivanplata', MD5('irunada6'), 'adanuriplata@gmail.com');


/*
*
* Query+s Test
*
*/

SELECT  info.sm_login, info.sm_password, info.sus_password, accounts.account_name
FROM info
INNER JOIN accounts ON info.id_account = accounts.id_account
WHERE id_user = 1;
