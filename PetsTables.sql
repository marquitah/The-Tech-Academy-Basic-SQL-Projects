USE db_pets

CREATE TABLE tbl_name_breed (
    Pet_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Dog_name VARCHAR(20) NOT NULL, 
    Dog_Breed VARCHAR(20) NOT NULL
	);



INSERT INTO tbl_name_breed 
	(Dog_name, Dog_Breed)
	VALUES 
	('Sammy','Australian shepard'),
	('Gracie', 'Cat'),
	('Duke', 'Dachshund')
	;

SELECT * FROM tbl_name_breed


CREATE TABLE tbl_owner (
		owner_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		owner_contact VARCHAR(50) NOT NULL, 
		Pet_id INT NULL CONSTRAINT fk_owner FOREIGN KEY REFERENCES tbl_name_breed(pet_id)
);

--DROP TABLE tbl_owner;
TRUNCATE TABLE TBL_OWNER


INSERT INTO tbl_owner 
	(owner_contact, Pet_id)
	VALUES 
	('Mary', 4),
	('Trey', 5),
	('Matt', 3)
;

SELECT * FROM tbl_owner;

/*Query to connect two tables --- Retrieve pet name from tbl_name_breed with corresponding owner from tbl_owner*/

SELECT Dog_name, Dog_breed, owner_contact
	FROM tbl_name_breed
	JOIN tbl_owner ON tbl_name_breed.Pet_id = tbl_owner.Pet_id
;

		





    