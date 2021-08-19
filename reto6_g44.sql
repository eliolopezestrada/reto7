CREATE TABLE tb_products(
	id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(25) NOT NULL,
    precio int NOT NULL,
    description varchar(50) NOT NULL
);
CREATE TABLE tb_clients(
	id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(25) NOT NULL,
    document int NOT NULL
);

CREATE TABLE tb_products_clients(
	id int AUTO_INCREMENT PRIMARY KEY,
    id_product int NOT NULL,
    id_client int NOT NULL,
    FOREIGN KEY (id_product) REFERENCES tb_products(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_client) REFERENCES tb_clients(id)ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `tb_clients`(name, document) 
VALUES ('Pedro Marmol', 75310222),
('Andres',75310333),
('Juan',75310444),
('Andrea',75310555),
('Esteban',75310666),
('Francisco',75310777);


INSERT INTO `tb_products`( `name`, `precio`, `description`) 
VALUES ('Celular Samsung','2300000','Celular'),
('TV SONY','2300000','TV'),
('Celular Apple','5700000','Celular'),
('Audifonos','780000','Celular'),
('Mouse Microsoft','100000','Tecnología'),
('Computador portatil DELL','5400000','Tecnología');

INSERT INTO `tb_products_clients`(`id_product`, `id_client`) 
VALUES 
('1','2'),
('3','2'),
('4','2'),
('6','1'),
('2','3'),
('2','4'),
('1','5'),
('6','5'),
('6','6');

SELECT tb_products.id, tb_products.name, tb_products.description, tb_products.precio
FROM tb_products_clients
INNER JOIN tb_products ON (tb_products_clients.id_product = tb_products.id)
INNER JOIN tb_clients ON (tb_products_clients.id_client = tb_clients.id)
WHERE tb_clients.id = tb_clientstb_clients;

SELECT * FROM tb_products;


