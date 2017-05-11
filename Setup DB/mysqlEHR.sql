/*EHR database creation for MySQL*/

--Run this line alone
--create database EHR;

create table patient(
    id int unsigned AUTO_INCREMENT,
    fname varchar(30),
    lname varchar(30),
    birthdate date,
    sex char(1),
    PRIMARY Key(id)
);
    
create table record(
    id int unsigned AUTO_INCREMENT,
    bloodtype varchar(3),
    idPatient int unsigned,
    PRIMARY key(id),
    FOREIGN key (idPatient) references patient(id)
);
    
create table allergies(
    idRecord int unsigned,
    allergy varchar(30),
    PRIMARY key(idRecord, allergy),
    foreign key(idRecord) REFERENCES record(id)
);
    
create table doctorVisit(
	id int unsigned AUTO_INCREMENT,
    dateVisit date,
    temp float,
    height float,
    bloodPressureS int,
    bloodPressureD int,
    comments varchar(250),
    idRecord int unsigned,
    idDoctor int unsigned,
    idPrescription int unsigned,
    PRIMARY key (id),
    FOREIGN key(idRecord) REFERENCES record(id)
);

create table doctor(
	id int unsigned AUTO_INCREMENT,
    name varchar(60),
    sex char(1),
    specialty varchar(30),
    cedulaProf varchar(10),
    PRIMARY key(id)
);

alter table doctorVisit
add FOREIGN key(idDoctor) REFERENCES Doctor(id);

create table prescription(
	id int unsigned AUTO_INCREMENT,
    datePresc date,
    PRIMARY key(id)
);

alter table doctorVisit
add FOREIGN key(idPrescription) REFERENCES prescription(id);

create table drugCatalog(
	id int unsigned AUTO_INCREMENT,
    genericName varchar(50),
    sideEffects varchar(100),
    comments varchar(200),
    PRIMARY key(id)
);

create table prescriptionDetails(
	idPrescription int unsigned,
    idDrugCatalog int unsigned,
    instructions varchar(200),
    startdate date,
    enddate date,
    PRIMARY key(idPrescription, idDrugCatalog),
    foreign key(idPrescription) REFERENCES prescription(id),
    foreign key(idDrugCatalog) REFERENCES DrugCatalog(id)
);

create table labtest(
	id int unsigned AUTO_INCREMENT,
    dateLabtest date,
    idLabtestCatalog int unsigned not null,
    idRecord int unsigned,
    PRIMARY key (id),
    foreign key (idRecord) REFERENCES record(id)
);

create table labtestCatalog(
	id int unsigned AUTO_INCREMENT,
    name varchar(30),
    primary key(id)
);

alter table labtest
add FOREIGN key (idLabtestCatalog) REFERENCES LabtestCatalog(id);

create table labtestResults(
	id int unsigned AUTO_INCREMENT,
    testVal float,
    isAnormal varchar(1),
    comments varchar(250),
    idLabtest int unsigned not null,
    idLabtestIndicatorCatalog int unsigned not null,
    PRIMARY key(id),
    foreign key(idLabtest) REFERENCES labtest(id)
);

create table labtestIndicatorCatalog(
	id int unsigned AUTO_INCREMENT,
    minVal float,
    maxVal float,
    indicator varchar(100),
    idLabtestCatalog int unsigned not null,
    PRIMARY KEY(id),
    foreign key(idLabtestCatalog) references LabtestCatalog(id)
);

alter table labtestResults
add FOREIGN key(idLabtestIndicatorCatalog) REFERENCES LabtestIndicatorCatalog(id);

create table InmunizationCatalog(
    id int unsigned AUTO_INCREMENT,
    name varchar(100),
    PRIMARY KEY(id)
);

create table InmuneDetail(
    idInmunizationCatalog int unsigned,
    idRecord int unsigned,
    dateInmunization date,
    PRIMARY KEY(idInmunizationCatalog, idRecord),
    FOREIGN KEY(idInmunizationCatalog) references InmunizationCatalog(id),
    FOREING KEY(idRecord) references record(id)
);