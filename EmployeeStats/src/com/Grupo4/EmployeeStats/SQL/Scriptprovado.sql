CREATE TABLE Area
  (
    Codigo_area              VARCHAR (15) NOT NULL ,
    tipo_area                VARCHAR (10) NOT NULL ,
    Nombre_area              VARCHAR (100) NOT NULL ,
    Jefe_inmediato           VARCHAR (100) NOT NULL ,
    Tipo_de_Area_tipo_area   VARCHAR (10) NOT NULL ,
    Trabajador_Id_trabajador INTEGER NOT NULL
  ) ;
ALTER TABLE Area ADD CONSTRAINT Area_PK PRIMARY KEY ( Codigo_area ) ;


CREATE TABLE Ciudad
  (
    Codigo_postal INTEGER NOT NULL ,
    Nombre_ciudad VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Ciudad ADD CONSTRAINT Ciudad_PK PRIMARY KEY ( Codigo_postal ) ;


CREATE TABLE Especialización
  (
    No_especialización     INTEGER NOT NULL ,
    nombre_especialización VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Especialización ADD CONSTRAINT Especialización_PK PRIMARY KEY ( No_especialización ) ;


CREATE TABLE Estado_Civil
  (
    Codigo_EC                INTEGER NOT NULL ,
    Nombre_EC                VARCHAR (100) NOT NULL ,
    Trabajador_Id_trabajador INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Estado_Civil__IDX ON Estado_Civil
  (
    Trabajador_Id_trabajador ASC
  )
  ;
ALTER TABLE Estado_Civil ADD CONSTRAINT Estado_Civil_PK PRIMARY KEY ( Codigo_EC ) ;


CREATE TABLE Nacionalidad
  (
    Codigo_nacionalidad INTEGER NOT NULL ,
    nombre_nacionalidad VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Nacionalidad ADD CONSTRAINT Nacionalidad_PK PRIMARY KEY ( Codigo_nacionalidad ) ;


CREATE TABLE Profesión_u_Oficio
  (
    Codigo_profesión INTEGER NOT NULL ,
    Nombre_Profesión VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Profesión_u_Oficio ADD CONSTRAINT Profesión_u_Oficio_PK PRIMARY KEY ( Codigo_profesión ) ;


CREATE TABLE Proyecto
  (
    Codigo_proyecto     INTEGER NOT NULL ,
    Nombre_proyecto     VARCHAR (50) NOT NULL ,
    Porcentaje_proyecto NUMERIC (2,2) NOT NULL
  ) ;
ALTER TABLE Proyecto ADD CONSTRAINT Proyecto_PK PRIMARY KEY ( Codigo_proyecto ) ;


CREATE TABLE Puesto_Funciona
  (
    Codigo_PF     INTEGER NOT NULL ,
    Nombre_puesto VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Puesto_Funciona ADD CONSTRAINT Puesto_Funciona_PK PRIMARY KEY ( Codigo_PF ) ;


CREATE TABLE Puesto_Nominal
  (
    Codigo_PN     INTEGER NOT NULL ,
    Nombre_puesto VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Puesto_Nominal ADD CONSTRAINT Puesto_Nominal_PK PRIMARY KEY ( Codigo_PN ) ;


CREATE TABLE Sexo
  (
    Codigo_sexo              INTEGER NOT NULL ,
    Nombre_sexo              VARCHAR (100) NOT NULL ,
    Trabajador_Id_trabajador INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Sexo__IDX ON Sexo
  (
    Trabajador_Id_trabajador ASC
  )
  ;
ALTER TABLE Sexo ADD CONSTRAINT Sexo_PK PRIMARY KEY ( Codigo_sexo ) ;


CREATE TABLE Tipo_de_Area
  (
    tipo_area   VARCHAR (10) NOT NULL ,
    Nombre_area VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Tipo_de_Area ADD CONSTRAINT Tipo_de_Area_PK PRIMARY KEY ( tipo_area ) ;


CREATE TABLE Trabajador
  (
    Id_trabajador             INTEGER NOT NULL ,
    DPI                       INTEGER NOT NULL ,
    Pasaporte                 INTEGER ,
    Primer_apellido           VARCHAR (100) ,
    Segundo_apellido          VARCHAR (100) ,
    Nombre                    VARCHAR (100) ,
    Codigo_sexo               INTEGER NOT NULL ,
    Lugar_nacimiento          VARCHAR (300) ,
    Fecha_naciomiento         DATE ,
    Codigo_EC                 INTEGER ,
    Codigo_postal             INTEGER ,
    No_colegiado              INTEGER ,
    Dirección                 VARCHAR (300) ,
    Tel_residencial           INTEGER ,
    Tel_celular               INTEGER ,
    Tel_emergencia            INTEGER ,
    Foto                      VARCHAR (300) ,
    Funciones                 VARCHAR (500) ,
    Email                     VARCHAR (100) ,
    Codigo_PF                 INTEGER ,
    Codigo_PN                 INTEGER ,
    Codigo_area               VARCHAR (15) ,
    Fecha_ingreso             DATE ,
    Tel_oficina_y_ext         INTEGER ,
    Ciudad_Codigo_postal      INTEGER NOT NULL ,
    Estado_Civil_Codigo_EC    INTEGER NOT NULL ,
    Puesto_Nominal_Codigo_PN  INTEGER NOT NULL ,
    Puesto_Funciona_Codigo_PF INTEGER NOT NULL ,
    Sexo_Codigo_sexo          INTEGER NOT NULL ,
    Area_Codigo_area          VARCHAR (15) NOT NULL ,
    Area_Codigo_area1         VARCHAR (15) NOT NULL
  ) ;
CREATE UNIQUE INDEX Trabajador__IDX ON Trabajador
  (
    Estado_Civil_Codigo_EC ASC
  )
  ;
CREATE UNIQUE INDEX Trabajador__IDXv1 ON Trabajador
  (
    Sexo_Codigo_sexo ASC
  )
  ;
CREATE UNIQUE INDEX Trabajador__IDXv2 ON Trabajador
  (
    Area_Codigo_area1 ASC
  )
  ;
ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_PK PRIMARY KEY ( Id_trabajador ) ;


CREATE TABLE "Trabajador-Especialización"
  (
    Id_trabajador      INTEGER NOT NULL ,
    No_especialización INTEGER NOT NULL ,
    --  ERROR: Column name length exceeds maximum allowed length(30)
    Especialización_No_especialización INTEGER NOT NULL ,
    Trabajador_Id_trabajador           INTEGER NOT NULL
  ) ;
ALTER TABLE "Trabajador-Especialización" ADD CONSTRAINT "Trabajador-Especialización_PK" PRIMARY KEY ( Id_trabajador, No_especialización ) ;


CREATE TABLE "Trabajador-Nacionalidad"
  (
    Id_trabajador       INTEGER NOT NULL ,
    Codigo_nacionalidad INTEGER NOT NULL ,
    --  ERROR: Column name length exceeds maximum allowed length(30)
    Nacionalidad_Codigo_nacionalidad INTEGER NOT NULL ,
    Trabajador_Id_trabajador         INTEGER NOT NULL
  ) ;
ALTER TABLE "Trabajador-Nacionalidad" ADD CONSTRAINT "Trabajador-Nacionalidad_PK" PRIMARY KEY ( Id_trabajador, Codigo_nacionalidad ) ;


CREATE TABLE "Trabajador-ProfesiónUOficio"
  (
    Id_trabajador    INTEGER NOT NULL ,
    Codigo_profesión INTEGER NOT NULL ,
    --  ERROR: Column name length exceeds maximum allowed length(30)
    Profesión_u_Oficio_Codigo_profesión INTEGER NOT NULL ,
    Trabajador_Id_trabajador            INTEGER NOT NULL
  ) ;
ALTER TABLE "Trabajador-ProfesiónUOficio" ADD CONSTRAINT "Trabajador-ProfesiónUOficio_PK" PRIMARY KEY ( Id_trabajador, Codigo_profesión ) ;


CREATE TABLE "Trabajador-Proyecto"
  (
    Id_trabajador            INTEGER NOT NULL ,
    Codigo_proyecto          INTEGER NOT NULL ,
    Proyecto_Codigo_proyecto INTEGER NOT NULL ,
    Trabajador_Id_trabajador INTEGER NOT NULL
  ) ;
ALTER TABLE "Trabajador-Proyecto" ADD CONSTRAINT "Trabajador-Proyecto_PK" PRIMARY KEY ( Id_trabajador, Codigo_proyecto ) ;


ALTER TABLE Area ADD CONSTRAINT Area_Tipo_de_Area_FK FOREIGN KEY ( Tipo_de_Area_tipo_area ) REFERENCES Tipo_de_Area ( tipo_area ) ;

ALTER TABLE Area ADD CONSTRAINT Area_Trabajador_FK FOREIGN KEY ( Trabajador_Id_trabajador ) REFERENCES Trabajador ( Id_trabajador ) ;

ALTER TABLE Estado_Civil ADD CONSTRAINT Estado_Civil_Trabajador_FK FOREIGN KEY ( Trabajador_Id_trabajador ) REFERENCES Trabajador ( Id_trabajador ) ;

ALTER TABLE Sexo ADD CONSTRAINT Sexo_Trabajador_FK FOREIGN KEY ( Trabajador_Id_trabajador ) REFERENCES Trabajador ( Id_trabajador ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE "Trabajador-Especialización" ADD CONSTRAINT "Trabajador-Especialización_Especialización_FK" FOREIGN KEY ( Especialización_No_especialización ) REFERENCES Especialización ( No_especialización ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE "Trabajador-Especialización" ADD CONSTRAINT "Trabajador-Especialización_Trabajador_FK" FOREIGN KEY ( Trabajador_Id_trabajador ) REFERENCES Trabajador ( Id_trabajador ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE "Trabajador-Nacionalidad" ADD CONSTRAINT "Trabajador-Nacionalidad_Nacionalidad_FK" FOREIGN KEY ( Nacionalidad_Codigo_nacionalidad ) REFERENCES Nacionalidad ( Codigo_nacionalidad ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE "Trabajador-Nacionalidad" ADD CONSTRAINT "Trabajador-Nacionalidad_Trabajador_FK" FOREIGN KEY ( Trabajador_Id_trabajador ) REFERENCES Trabajador ( Id_trabajador ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE "Trabajador-ProfesiónUOficio" ADD CONSTRAINT "Trabajador-ProfesiónUOficio_Profesión_u_Oficio_FK" FOREIGN KEY ( Profesión_u_Oficio_Codigo_profesión ) REFERENCES Profesión_u_Oficio ( Codigo_profesión ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE "Trabajador-ProfesiónUOficio" ADD CONSTRAINT "Trabajador-ProfesiónUOficio_Trabajador_FK" FOREIGN KEY ( Trabajador_Id_trabajador ) REFERENCES Trabajador ( Id_trabajador ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE "Trabajador-Proyecto" ADD CONSTRAINT "Trabajador-Proyecto_Proyecto_FK" FOREIGN KEY ( Proyecto_Codigo_proyecto ) REFERENCES Proyecto ( Codigo_proyecto ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE "Trabajador-Proyecto" ADD CONSTRAINT "Trabajador-Proyecto_Trabajador_FK" FOREIGN KEY ( Trabajador_Id_trabajador ) REFERENCES Trabajador ( Id_trabajador ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Area_FK FOREIGN KEY ( Area_Codigo_area ) REFERENCES Area ( Codigo_area ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Area_FKv1 FOREIGN KEY ( Area_Codigo_area1 ) REFERENCES Area ( Codigo_area ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Ciudad_FK FOREIGN KEY ( Ciudad_Codigo_postal ) REFERENCES Ciudad ( Codigo_postal ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Estado_Civil_FK FOREIGN KEY ( Estado_Civil_Codigo_EC ) REFERENCES Estado_Civil ( Codigo_EC ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Puesto_Funciona_FK FOREIGN KEY ( Puesto_Funciona_Codigo_PF ) REFERENCES Puesto_Funciona ( Codigo_PF ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Puesto_Nominal_FK FOREIGN KEY ( Puesto_Nominal_Codigo_PN ) REFERENCES Puesto_Nominal ( Codigo_PN ) ;

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Sexo_FK FOREIGN KEY ( Sexo_Codigo_sexo ) REFERENCES Sexo ( Codigo_sexo ) ;