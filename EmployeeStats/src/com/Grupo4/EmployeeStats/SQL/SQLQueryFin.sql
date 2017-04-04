CREATE TABLE Area
  (
    Codigo_Area              VARCHAR (100) NOT NULL ,
    Nombre_Area              VARCHAR (100) NOT NULL ,
    Jefe_Inmediato           VARCHAR (100) NOT NULL ,
    Id_Area                  INTEGER NOT NULL ,
    Trabajador_Id_Trabajador INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Area__IDX ON Area
  (
    Trabajador_Id_Trabajador ASC
  )
  ;
ALTER TABLE Area ADD CONSTRAINT Area_PK PRIMARY KEY ( Id_Area ) ;


CREATE TABLE Estado_Civil
  (
    Codigo_EC INTEGER NOT NULL ,
    Nombre_EC VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Estado_Civil ADD CONSTRAINT Estado_Civil_PK PRIMARY KEY ( Codigo_EC ) ;


CREATE TABLE Login
  (
    Id_Login   INTEGER NOT NULL ,
    Usuario    VARCHAR (100) NOT NULL ,
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


CREATE TABLE Sexo
  (
    Codigo_Sexo INTEGER NOT NULL ,
    Nombre_Sexo VARCHAR (100) NOT NULL
  ) ;
ALTER TABLE Sexo ADD CONSTRAINT Sexo_PK PRIMARY KEY ( Codigo_Sexo ) ;


CREATE TABLE Tipo_Area
  (
    Codigo_TipoArea VARCHAR (100) NOT NULL ,
    Nombre_TipoArea VARCHAR (100) NOT NULL ,
    Id_TipoArea     INTEGER NOT NULL
  ) ;
ALTER TABLE Tipo_Area ADD CONSTRAINT Tipo_Area_PK PRIMARY KEY ( Id_TipoArea ) ;


CREATE TABLE Trabajador
  (
    Id_Trabajador    INTEGER NOT NULL ,
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
    --  ERROR: VARCHAR2 size not specified
    
    Fecha_Ingreso              DATE NOT NULL ,
    Tel_Oficina_Ext            VARCHAR (100) NOT NULL ,
    Puesto_Funcional_Codigo_PF INTEGER NOT NULL ,
    Puesto_Nominal_Codigo_PN   INTEGER NOT NULL ,
    Estado_Civil_Codigo_EC     INTEGER NOT NULL ,
    Sexo_Codigo_Sexo           INTEGER NOT NULL ,
    Area_Id_Area               INTEGER NOT NULL ,
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
    --  ERROR: Column name length exceeds maximum allowed length(30)
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
