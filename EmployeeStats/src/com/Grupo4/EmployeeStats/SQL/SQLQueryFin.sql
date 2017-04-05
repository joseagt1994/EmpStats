CREATE TABLE Area
  (
    Codigo_Area              VARCHAR (100) NOT NULL ,
    Nombre_Area              VARCHAR (100) NOT NULL ,
    Jefe_Inmediato           VARCHAR (100) NOT NULL ,
    Id_Area                  INTEGER IDENTITY (1,1) NOT NULL ,
    Trabajador_Id_Trabajador INTEGER NULL
  ) ;
/*CREATE UNIQUE INDEX Area__IDX ON Area
  (
    Trabajador_Id_Trabajador ASC
  )
  ;*/
ALTER TABLE Area ADD CONSTRAINT Area_PK PRIMARY KEY ( Id_Area ) ;

INSERT INTO Area (Codigo_Area,Nombre_Area,Jefe_Inmediato) VALUES ('4.1.48.1.01.','Depto de Mantenimiento','Juarez Cardenas, Manuel Humberto');
INSERT INTO Area (Codigo_Area,Nombre_Area,Jefe_Inmediato) VALUES ('4.1.48.1.02.','Depto de Servicios','Muñoz, Alejandro');
INSERT INTO Area (Codigo_Area,Nombre_Area,Jefe_Inmediato) VALUES ('4.1.48.1.03.','Cordinadora de Parqueos','Ochatea Galindo, Harry');
INSERT INTO Area (Codigo_Area,Nombre_Area,Jefe_Inmediato) VALUES ('4.1.48.1.04.','Depto de Vigilancia','Medrano, Leonel Eleazar');
INSERT INTO Area (Codigo_Area,Nombre_Area,Jefe_Inmediato) VALUES ('4.1.48.1.05.','Jefatura','Milian');
INSERT INTO Area (Codigo_Area,Nombre_Area,Jefe_Inmediato) VALUES ('4.1.48.1.06.','Diseño Urbaniz y Construc','Breitner, Roely');
INSERT INTO Area (Codigo_Area,Nombre_Area,Jefe_Inmediato) VALUES ('4.3.48.2.04.','Mantenimiento Gerenal Edificios Universitarios','falta');
INSERT INTO Area (Codigo_Area,Nombre_Area,Jefe_Inmediato) VALUES ('4.3.48.2.07.','Plan General de Remodelaciones USAC','falta');

CREATE TABLE Estado_Civil
  (
    Codigo_EC INTEGER IDENTITY (1,1) NOT NULL ,
    Nombre_EC VARCHAR (100) UNIQUE NOT NULL
  ) ;
ALTER TABLE Estado_Civil ADD CONSTRAINT Estado_Civil_PK PRIMARY KEY ( Codigo_EC ) ;

INSERT INTO Estado_Civil VALUES('Casado');
INSERT INTO Estado_Civil VALUES('Soltero');
INSERT INTO Estado_Civil VALUES('Viudo');
INSERT INTO Estado_Civil VALUES('Divorciado');

CREATE TABLE Login
  (
    Id_Login   INTEGER IDENTITY (1,1) NOT NULL ,
    Usuario    VARCHAR (100) UNIQUE NOT NULL ,
    Contraseña VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Login ADD CONSTRAINT Login_PK PRIMARY KEY ( Id_Login ) ;


CREATE TABLE Nacionalidad
  (
    Codigo_Nacionalidad INTEGER NOT NULL ,
    Nombre_Nacionalidad VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Nacionalidad ADD CONSTRAINT Nacionalidad_PK PRIMARY KEY ( Codigo_Nacionalidad ) ;


CREATE TABLE Profesion
  (
    Codigo_Profesion INTEGER NOT NULL ,
    Nombre_Profesion VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Profesion ADD CONSTRAINT Profesion_PK PRIMARY KEY ( Codigo_Profesion ) ;


CREATE TABLE Proyecto
  (
    Codigo_Proyecto INTEGER NOT NULL ,
    Nombre_Proyecto VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Proyecto ADD CONSTRAINT Proyecto_PK PRIMARY KEY ( Codigo_Proyecto ) ;


CREATE TABLE Puesto_Funcional
  (
    Codigo_PF     INTEGER NOT NULL ,
    Nombre_Puesto VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Puesto_Funcional ADD CONSTRAINT Puesto_Funcional_PK PRIMARY KEY ( Codigo_PF ) ;


CREATE TABLE Puesto_Nominal
  (
    Codigo_PN     INTEGER NOT NULL ,
    Nombre_Puesto VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Puesto_Nominal ADD CONSTRAINT Puesto_Nominal_PK PRIMARY KEY ( Codigo_PN ) ;

INSERT INTO Puesto_Nominal VALUES('134526','Jefe de Mantenimiento de');
INSERT INTO Puesto_Nominal VALUES('120518','Secretaria III');
INSERT INTO Puesto_Nominal VALUES('120556','Oficinista I');
INSERT INTO Puesto_Nominal VALUES('42027','Guardalmacén II');
INSERT INTO Puesto_Nominal VALUES('134517','Encargado de Mantenimiento II');
INSERT INTO Puesto_Nominal VALUES('130526','Reparador de Equipo Telefónico');
INSERT INTO Puesto_Nominal VALUES('132016','Electricista');
INSERT INTO Puesto_Nominal VALUES('141521','Piloto Automovilista I');
INSERT INTO Puesto_Nominal VALUES('132517','Carpintero II');
INSERT INTO Puesto_Nominal VALUES('131016','Albañil');
INSERT INTO Puesto_Nominal VALUES('132516','Carpintero I');
INSERT INTO Puesto_Nominal VALUES('133516','Plomero');
INSERT INTO Puesto_Nominal VALUES('133016','Herrero Soldador');
INSERT INTO Puesto_Nominal VALUES('42016','Ayudante de Almacén');
INSERT INTO Puesto_Nominal VALUES('134016','Ayudante de Trabajo Operativo');
INSERT INTO Puesto_Nominal VALUES('140516','Auxiliar de Servicios I');
INSERT INTO Puesto_Nominal VALUES('141517','Mensajero II');
INSERT INTO Puesto_Nominal VALUES('999990','Fuera de Clasificación');
INSERT INTO Puesto_Nominal VALUES('140531','Jefe de Servicios Generales');
INSERT INTO Puesto_Nominal VALUES('123016','Telefonista');
INSERT INTO Puesto_Nominal VALUES('141531','Encargado de Mensajería y');
INSERT INTO Puesto_Nominal VALUES('141516','Mensajero I');
INSERT INTO Puesto_Nominal VALUES('142016','Jardinero');
INSERT INTO Puesto_Nominal VALUES('143016','Peón');
INSERT INTO Puesto_Nominal VALUES('140522','Encargado de Servicios II');
INSERT INTO Puesto_Nominal VALUES('140521','Encargado de Servicios I');
INSERT INTO Puesto_Nominal VALUES('120557','Oficinista II');
INSERT INTO Puesto_Nominal VALUES('91021','Operador de Informática I');
INSERT INTO Puesto_Nominal VALUES('141017','Agent de Vigilancia II');
INSERT INTO Puesto_Nominal VALUES('141019','Encargado de Vigilantes');
INSERT INTO Puesto_Nominal VALUES('141016','Agente de Vigilancia I');
INSERT INTO Puesto_Nominal VALUES('31566','Jefe de Infraestructura Física y');
INSERT INTO Puesto_Nominal VALUES('41517','Auxiliar de Tesorero III');
INSERT INTO Puesto_Nominal VALUES('120519','Secretaria IV');
INSERT INTO Puesto_Nominal VALUES('120516','Secretaria I');
INSERT INTO Puesto_Nominal VALUES('61516','Operador de Equipo de');
INSERT INTO Puesto_Nominal VALUES('41516','Auxiliar de Tesorero II');
INSERT INTO Puesto_Nominal VALUES('141522','Piloto Automovilista II');
INSERT INTO Puesto_Nominal VALUES('41515','Auxiliar de Tesoro I');
INSERT INTO Puesto_Nominal VALUES('12141','Asesor Especifico');
INSERT INTO Puesto_Nominal VALUES('71021','Asesor de Obras de Ingeniería y Construcción');
INSERT INTO Puesto_Nominal VALUES('71526','Jefe de Diseño, Urbanización y');
INSERT INTO Puesto_Nominal VALUES('71516','Auxiliar de Arquitecto');
INSERT INTO Puesto_Nominal VALUES('70521','Dibujante de Construcción');
INSERT INTO Puesto_Nominal VALUES('71521','Asesor de Proyecto Arquitectónicos');


CREATE TABLE Sexo
  (
    Codigo_Sexo INTEGER IDENTITY (1,1) NOT NULL ,
    Nombre_Sexo VARCHAR (100) UNIQUE NOT NULL
  ) ;
ALTER TABLE Sexo ADD CONSTRAINT Sexo_PK PRIMARY KEY ( Codigo_Sexo ) ;

Insert INTO Sexo Values('Masculino');
Insert INTO Sexo Values('Femenino');

CREATE TABLE Tipo_Area
  (
    Codigo_TipoArea VARCHAR (100) NOT NULL ,
    Nombre_TipoArea VARCHAR (100) NOT NULL ,
    Id_TipoArea     INTEGER IDENTITY (1,1) NOT NULL
  ) ;
ALTER TABLE Tipo_Area ADD CONSTRAINT Tipo_Area_PK PRIMARY KEY ( Id_TipoArea ) ;

INSERT INTO Tipo_Area (Codigo_TipoArea,Nombre_TipoArea) VALUES('0.11','Personal Permanente');
INSERT INTO Tipo_Area (Codigo_TipoArea,Nombre_TipoArea) VALUES('0.22','Personal por Contrato');

CREATE TABLE Trabajador
  (
    Id_Trabajador    INTEGER IDENTITY (1,1) NOT NULL ,
    DPI              VARCHAR (100) NOT NULL ,
    Pasaporte        VARCHAR (100) NOT NULL ,
    Primer_Apellido  VARCHAR (100) NOT NULL ,
    Segundo_Apellido VARCHAR (100) ,
    Nombre           VARCHAR (100) NOT NULL ,
    Lugar_Nacimiento VARCHAR (100) ,
    Fecha_Nacimiento DATE NOT NULL ,
    Ciudad           VARCHAR (100) NOT NULL ,
    No_Colegiado     VARCHAR (100) ,
    Direccion        VARCHAR (100) NOT NULL ,
    Tel_Residencia   VARCHAR (100) NOT NULL ,
    Tel_Celular      VARCHAR (100) ,
    Tel_Emergencia   VARCHAR (100) ,
    Foto             VARCHAR (500) ,
    Funciones        VARCHAR (100) ,
    Especializacion  VARCHAR (100) ,
    Email            VARCHAR (100),
    Fecha_Ingreso              DATE NOT NULL ,
    Tel_Oficina_Ext            VARCHAR (100) NOT NULL ,
    Puesto_Funcional_Codigo_PF INTEGER NULL ,
    Puesto_Nominal_Codigo_PN   INTEGER NOT NULL ,
    Estado_Civil_Codigo_EC     INTEGER NOT NULL ,
    Sexo_Codigo_Sexo           INTEGER NOT NULL ,
    Area_Id_Area               INTEGER  NULL ,
    Area_Id_Area1              INTEGER NOT NULL ,
    Tipo_Area_Id_TipoArea      INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Trabajador__IDX ON Trabajador
  (
    Area_Id_Area ASC
  )
  ;
ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_PK PRIMARY KEY ( Id_Trabajador ) ;


CREATE TABLE Trabajador_Nacionalidad
  (
    Nacionalidad_Codigo_Nacionalidad INTEGER NOT NULL ,
    Trabajador_Id_Trabajador         INTEGER NOT NULL
  ) ;


CREATE TABLE Trabajador_Profesion
  (
    Profesion_Codigo_Profesion INTEGER NOT NULL ,
    Trabajador_Id_Trabajador   INTEGER NOT NULL
  ) ;


CREATE TABLE Trabajador_Proyecto
  (
    Porcentaje               NUMERIC (2,2) NOT NULL ,
    Proyecto_Codigo_Proyecto INTEGER NOT NULL ,
    Trabajador_Id_Trabajador INTEGER NOT NULL
  ) ;


ALTER TABLE Area ADD CONSTRAINT Area_Trabajador_FK FOREIGN KEY ( Trabajador_Id_Trabajador ) REFERENCES Trabajador ( Id_Trabajador ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Area_FK FOREIGN KEY ( Area_Id_Area ) REFERENCES Area ( Id_Area ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Area_FKv1 FOREIGN KEY ( Area_Id_Area1 ) REFERENCES Area ( Id_Area ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Estado_Civil_FK FOREIGN KEY ( Estado_Civil_Codigo_EC ) REFERENCES Estado_Civil ( Codigo_EC ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE Trabajador_Nacionalidad ADD CONSTRAINT Trabajador_Nacionalidad_Nacionalidad_FK FOREIGN KEY ( Nacionalidad_Codigo_Nacionalidad ) REFERENCES Nacionalidad ( Codigo_Nacionalidad ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE Trabajador_Nacionalidad ADD CONSTRAINT Trabajador_Nacionalidad_Trabajador_FK FOREIGN KEY ( Trabajador_Id_Trabajador ) REFERENCES Trabajador ( Id_Trabajador ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE Trabajador_Profesion ADD CONSTRAINT Trabajador_Profesion_Profesion_FK FOREIGN KEY ( Profesion_Codigo_Profesion ) REFERENCES Profesion ( Codigo_Profesion ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE Trabajador_Profesion ADD CONSTRAINT Trabajador_Profesion_Trabajador_FK FOREIGN KEY ( Trabajador_Id_Trabajador ) REFERENCES Trabajador ( Id_Trabajador ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE Trabajador_Proyecto ADD CONSTRAINT Trabajador_Proyecto_Proyecto_FK FOREIGN KEY ( Proyecto_Codigo_Proyecto ) REFERENCES Proyecto ( Codigo_Proyecto ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE Trabajador_Proyecto ADD CONSTRAINT Trabajador_Proyecto_Trabajador_FK FOREIGN KEY ( Trabajador_Id_Trabajador ) REFERENCES Trabajador ( Id_Trabajador ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Puesto_Funcional_FK FOREIGN KEY ( Puesto_Funcional_Codigo_PF ) REFERENCES Puesto_Funcional ( Codigo_PF ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Puesto_Nominal_FK FOREIGN KEY ( Puesto_Nominal_Codigo_PN ) REFERENCES Puesto_Nominal ( Codigo_PN ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Sexo_FK FOREIGN KEY ( Sexo_Codigo_Sexo ) REFERENCES Sexo ( Codigo_Sexo ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Tipo_Area_FK FOREIGN KEY ( Tipo_Area_Id_TipoArea ) REFERENCES Tipo_Area ( Id_TipoArea ) ;
