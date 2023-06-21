DROP DATABASE IF EXISTS gift;
CREATE SCHEMA gift DEFAULT CHARACTER SET utf8;
SET NAMES UTF8;
USE gift;
CREATE TABLE gift_certificate(
	id INT NOT NULL AUTO_INCREMENT,
	name varchar(20) NOT NULL,
	description VARCHAR(30) NOT NULL,
  	price INT DEFAULT 0,
        duration INT NOT NULL,
        create_date DATETIME NOT NULL,
	last_update_date DATETIME NOT NULL,
	PRIMARY KEY (id)     
);

CREATE TABLE tag(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	PRIMARY KEY (id)	
);

CREATE TABLE gift_certificate_tag (
	certificate_id INT NOT NULL,
	tag_id INT NOT NULL,
	FOREIGN KEY (certificate_id) REFERENCES gift_certificate(id),
        FOREIGN KEY (tag_id) REFERENCES tag(id),
	UNIQUE (certificate_id, tag_id)
);

INSERT INTO gift.gift_certificate (name, description, price, duration, create_date, last_update_date)
VALUES ('gift', 'abc', 2, 3, '2024-06-05 21:52:13', '2024-06-05 21:52:16');
INSERT INTO gift.gift_certificate (name, description, price, duration, create_date, last_update_date)
VALUES ('METRO', 'chain of stores', 2, 3, '2025-06-05 21:52:13', '2025-06-05 21:52:16');
INSERT INTO gift.gift_certificate (name, description, price, duration, create_date, last_update_date)
VALUES ('Google', 'global internet company', 2, 3, '2026-06-05 21:52:13', '2026-06-05 21:52:16');

INSERT INTO tag(name) VALUES ("bonus");
INSERT INTO tag(name) VALUES ("point");

INSERT INTO  gift_certificate_tag(certificate_id, tag_id) VALUES (1, 1);
INSERT INTO  gift_certificate_tag(certificate_id, tag_id) VALUES (1, 2);
