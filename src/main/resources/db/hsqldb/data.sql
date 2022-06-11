-- One admin user, named admin1 with password 4dm1n and authority admin
INSERT INTO users(username,password,enabled) VALUES ('admin1','4dm1n',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (1,'admin1','admin');
-- One owner user, named owner1 with password 0wn3r
INSERT INTO users(username,password,enabled) VALUES ('owner1','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (2,'owner1','owner');
INSERT INTO users(username,password,enabled) VALUES ('owner2','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (4,'owner2','owner');
INSERT INTO users(username,password,enabled) VALUES ('owner3','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (5,'owner3','owner');
INSERT INTO users(username,password,enabled) VALUES ('owner4','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (6,'owner4','owner');
INSERT INTO users(username,password,enabled) VALUES ('owner5','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (7,'owner5','owner');
INSERT INTO users(username,password,enabled) VALUES ('owner6','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (8,'owner6','owner');
INSERT INTO users(username,password,enabled) VALUES ('owner7','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (9,'owner7','owner');
INSERT INTO users(username,password,enabled) VALUES ('owner8','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (10,'owner8','owner');
INSERT INTO users(username,password,enabled) VALUES ('owner9','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (11,'owner9','owner');
INSERT INTO users(username,password,enabled) VALUES ('owner10','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (12,'owner10','owner');
-- One vet user, named vet1 with passwor v3t
INSERT INTO users(username,password,enabled) VALUES ('vet1','v3t',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (3,'vet1','veterinarian');

INSERT INTO users(username,password,enabled) VALUES ('clinicOwner','0wn3r',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (13,'clinicOwner','clinicOwner');

INSERT INTO clinic_owner(id,plan,first_name,last_name,username) VALUES (1,'BASICO','James','Wilson','clinicOwner'); 

INSERT INTO clinics(id,name,clinic_owner_id) VALUES (1,'Huellas', 1);

INSERT INTO vets(id, first_name,last_name,clinic_id) VALUES (1, 'James', 'Carter',1);
INSERT INTO vets(id, first_name,last_name,clinic_id) VALUES (2, 'Helen', 'Leary',1);
INSERT INTO vets(id, first_name,last_name,clinic_id) VALUES (3, 'Linda', 'Douglas',1);
INSERT INTO vets(id, first_name,last_name,clinic_id) VALUES (4, 'Rafael', 'Ortega',1);
INSERT INTO vets(id, first_name,last_name,clinic_id) VALUES (5, 'Henry', 'Stevens',1);
INSERT INTO vets(id, first_name,last_name,clinic_id) VALUES (6, 'Sharon', 'Jenkins',1);

INSERT INTO causes(id,name,description,budget_target,non_profit_organization,status) VALUES (1,'causa1', 'descripcion de causa 1', 99.7,'ong','OPEN');
INSERT INTO causes(id,name,description,budget_target,non_profit_organization,status) VALUES (2,'causa2', 'descripcion de causa 2', 29.7,'ong2','OPEN');

INSERT INTO donations(id,date,amount,username,cause) values (1,'2020-08-06',15,'owner1',1);
INSERT INTO donations(id,date,amount,username,cause) values (2,'2020-08-07',20,'owner2',1);
INSERT INTO donations(id,date,amount,username,cause) values (3,'2020-08-07',10,'owner3',1);
INSERT INTO donations(id,date,amount,username,cause) values (4,'2020-08-08',5,'owner2',1);

INSERT INTO specialties VALUES (1, 'radiology');
INSERT INTO specialties VALUES (2, 'surgery');
INSERT INTO specialties VALUES (3, 'dentistry');

INSERT INTO vet_specialties VALUES (2, 1);
INSERT INTO vet_specialties VALUES (3, 2);
INSERT INTO vet_specialties VALUES (3, 3);
INSERT INTO vet_specialties VALUES (4, 2);
INSERT INTO vet_specialties VALUES (5, 1);

INSERT INTO types VALUES (1, 'cat');
INSERT INTO types VALUES (2, 'dog');
INSERT INTO types VALUES (3, 'lizard');
INSERT INTO types VALUES (4, 'snake');
INSERT INTO types VALUES (5, 'bird');
INSERT INTO types VALUES (6, 'hamster');

INSERT INTO owners VALUES (1, 'George', 'Franklin', '110 W. Liberty St.', 'Madison', '608555102', 'owner1');
INSERT INTO owners VALUES (2, 'Betty', 'Davis', '638 Cardinal Ave.', 'Sun Prairie', '608555174', 'owner2');
INSERT INTO owners VALUES (3, 'Eduardo', 'Rodriquez', '2693 Commerce St.', 'McFarland', '608555876', 'owner3');
INSERT INTO owners VALUES (4, 'Harold', 'Davis', '563 Friendly St.', 'Windsor', '608555319', 'owner4');
INSERT INTO owners VALUES (5, 'Peter', 'McTavish', '2387 S. Fair Way', 'Madison', '608555276', 'owner5');
INSERT INTO owners VALUES (6, 'Jean', 'Coleman', '105 N. Lake St.', 'Monona', '608555265', 'owner6');
INSERT INTO owners VALUES (7, 'Jeff', 'Black', '1450 Oak Blvd.', 'Monona', '608555538', 'owner7');
INSERT INTO owners VALUES (8, 'Maria', 'Escobito', '345 Maple St.', 'Madison', '608555768', 'owner8');
INSERT INTO owners VALUES (9, 'David', 'Schroeder', '2749 Blackhawk Trail', 'Madison', '608555943', 'owner9');
INSERT INTO owners VALUES (10, 'Carlos', 'Estaban', '2335 Independence La.', 'Waunakee', '6085555487', 'owner10');

INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (1, 'Leo', '2010-09-07', 1, 1);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (14, 'Messi', '2013-04-09', 1, 2);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (15, 'Isco', '2015-02-22', 1, 2);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (2, 'Basil', '2012-08-06', 6, 2);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (3, 'Rosy', '2011-04-17', 2, 3);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (4, 'Jewel', '2010-03-07', 2, 3);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (5, 'Iggy', '2010-11-30', 3, 4);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (6, 'George', '2010-01-20', 4, 5);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (7, 'Samantha', '2012-09-04', 1, 6);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (8, 'Max', '2012-09-04', 1, 6);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (9, 'Lucky', '2011-08-06', 5, 7);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (10, 'Mulligan', '2007-02-24', 2, 8);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (11, 'Freddy', '2010-03-09', 5, 9);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (12, 'Lucky', '2010-06-24', 2, 10);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (13, 'Sly', '2012-06-08', 1, 10);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (16, 'Mika', '2013-03-25', 1, 1);
INSERT INTO pets(id,name,birth_date,type_id,owner_id) VALUES (17, 'Toby', '2010-02-25', 2, 1);

INSERT INTO visits(id,pet_id,visit_date,description) VALUES (1, 7, '2013-01-01', 'rabies shot');
INSERT INTO visits(id,pet_id,visit_date,description) VALUES (2, 8, '2013-01-02', 'rabies shot');
INSERT INTO visits(id,pet_id,visit_date,description) VALUES (3, 8, '2013-01-03', 'neutered');
INSERT INTO visits(id,pet_id,visit_date,description) VALUES (4, 7, '2013-01-04', 'spayed');

INSERT INTO adoption_requests(id,owner_id,pet_id) VALUES (1,2,2);
INSERT INTO adoption_requests(id,owner_id,pet_id) VALUES (2,2,14);
INSERT INTO adoption_requests(id,owner_id,pet_id) VALUES (3,3,4);
INSERT INTO adoption_requests(id,owner_id,pet_id) VALUES (4,6,7);
INSERT INTO adoption_requests(id,owner_id,pet_id) VALUES (5,10,12);
INSERT INTO adoption_requests(id,owner_id,pet_id) VALUES (6,1,16);
INSERT INTO adoption_requests(id,owner_id,pet_id) VALUES (7,1,17);

INSERT INTO adoption_applications(id,owner_id,adoption_request_id,description) VALUES (1,1,2,'La voy a cuidar muy bien');
INSERT INTO adoption_applications(id,owner_id,adoption_request_id,description) VALUES (2,1,1,'Siempre he querido tener un perro');
INSERT INTO adoption_applications(id,owner_id,adoption_request_id,description) VALUES (3,2,6,'Siempre he querido tener un gato');
INSERT INTO adoption_applications(id,owner_id,adoption_request_id,description) VALUES (4,3,7,'Estoy seguro que se llevara muy bien con mi mascota');

