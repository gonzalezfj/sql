CREATE DATABASE Colectivos;
use Colectivos;
CREATE TABLE Colectivo (
	id INT NOT NULL,
	linea INT NOT NULL,
	discriminador varchar(15),
	empresa_id INT,
	PRIMARY KEY (id, distinct)
);

CREATE TABLE Empresa (
	id INT NOT NULL,
	nombre INT,
	PRIMARY KEY (id)
);

CREATE TABLE Chofer (
	id INT NOT NULL,
	nombre INT,
	dni INT,
	PRIMARY KEY (id)
);

CREATE TABLE ColectivoChofer (
	colectivo_id INT REFERENCES Colectivo(id)
					 ON UPDATE CASCADE ON DELETE CASCADE,
	chofer_id INT REFERENCES Chofer(id)
				  ON UPDATE CASCADE ON DELETE CASCADE,
	turno_desde date NOT NULL,
	turno_hasta date NOT NULL,
	PRIMARY KEY (colectivo_id, chofer_id)
);

