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
INSERT INTO Area (Codigo_Area,Nombre_Area,Jefe_Inmediato) VALUES ('4.1.48.1.06.','Diseño Urbaniz y Construc','Breitner Gonzales, Roely');
INSERT INTO Area (Codigo_Area,Nombre_Area,Jefe_Inmediato) VALUES ('4.3.48.2.04.','Mantenimiento Gerenal Edificios Universitarios','Juarez Cardenas, Manuel Humberto');
INSERT INTO Area (Codigo_Area,Nombre_Area,Jefe_Inmediato) VALUES ('4.3.48.2.07.','Plan General de Remodelaciones USAC','Breitner Gonzales, Roely');

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
    Iso_Pais CHAR(2) NOT NULL,
  Nombre_Pais VARCHAR(80) NOT NULL,
  Nombre_Imprimible VARCHAR(80) NOT NULL,
  Iso_3 CHAR(3),
  numcode SMALLINT
  ) ;
ALTER TABLE Nacionalidad ADD CONSTRAINT Nacionalidad_PK PRIMARY KEY (Iso_Pais) ;

INSERT INTO Nacionalidad VALUES ('AF','AFGHANISTAN','Afghanistan','AFG','004');
INSERT INTO Nacionalidad VALUES ('AL','ALBANIA','Albania','ALB','008');
INSERT INTO Nacionalidad VALUES ('DZ','ALGERIA','Algeria','DZA','012');
INSERT INTO Nacionalidad VALUES ('AS','AMERICAN SAMOA','American Samoa','ASM','016');
INSERT INTO Nacionalidad VALUES ('AD','ANDORRA','Andorra','AND','020');
INSERT INTO Nacionalidad VALUES ('AO','ANGOLA','Angola','AGO','024');
INSERT INTO Nacionalidad VALUES ('AI','ANGUILLA','Anguilla','AIA','660');
INSERT INTO Nacionalidad VALUES ('AQ','ANTARCTICA','Antarctica',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG','028');
INSERT INTO Nacionalidad VALUES ('AR','ARGENTINA','Argentina','ARG','032');
INSERT INTO Nacionalidad VALUES ('AM','ARMENIA','Armenia','ARM','051');
INSERT INTO Nacionalidad VALUES ('AW','ARUBA','Aruba','ABW','533');
INSERT INTO Nacionalidad VALUES ('AU','AUSTRALIA','Australia','AUS','036');
INSERT INTO Nacionalidad VALUES ('AT','AUSTRIA','Austria','AUT','040');
INSERT INTO Nacionalidad VALUES ('AZ','AZERBAIJAN','Azerbaijan','AZE','031');
INSERT INTO Nacionalidad VALUES ('BS','BAHAMAS','Bahamas','BHS','044');
INSERT INTO Nacionalidad VALUES ('BH','BAHRAIN','Bahrain','BHR','048');
INSERT INTO Nacionalidad VALUES ('BD','BANGLADESH','Bangladesh','BGD','050');
INSERT INTO Nacionalidad VALUES ('BB','BARBADOS','Barbados','BRB','052');
INSERT INTO Nacionalidad VALUES ('BY','BELARUS','Belarus','BLR','112');
INSERT INTO Nacionalidad VALUES ('BE','BELGIUM','Belgium','BEL','056');
INSERT INTO Nacionalidad VALUES ('BZ','BELIZE','Belize','BLZ','084');
INSERT INTO Nacionalidad VALUES ('BJ','BENIN','Benin','BEN','204');
INSERT INTO Nacionalidad VALUES ('BM','BERMUDA','Bermuda','BMU','060');
INSERT INTO Nacionalidad VALUES ('BT','BHUTAN','Bhutan','BTN','064');
INSERT INTO Nacionalidad VALUES ('BO','BOLIVIA','Bolivia','BOL','068');
INSERT INTO Nacionalidad VALUES ('BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH','070');
INSERT INTO Nacionalidad VALUES ('BW','BOTSWANA','Botswana','BWA','072');
INSERT INTO Nacionalidad VALUES ('BV','BOUVET ISLAND','Bouvet Island',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('BR','BRAZIL','Brazil','BRA','076');
INSERT INTO Nacionalidad VALUES ('IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN','096');
INSERT INTO Nacionalidad VALUES ('BG','BULGARIA','Bulgaria','BGR','100');
INSERT INTO Nacionalidad VALUES ('BF','BURKINA FASO','Burkina Faso','BFA','854');
INSERT INTO Nacionalidad VALUES ('BI','BURUNDI','Burundi','BDI','108');
INSERT INTO Nacionalidad VALUES ('KH','CAMBODIA','Cambodia','KHM','116');
INSERT INTO Nacionalidad VALUES ('CM','CAMEROON','Cameroon','CMR','120');
INSERT INTO Nacionalidad VALUES ('CA','CANADA','Canada','CAN','124');
INSERT INTO Nacionalidad VALUES ('CV','CAPE VERDE','Cape Verde','CPV','132');
INSERT INTO Nacionalidad VALUES ('KY','CAYMAN ISLANDS','Cayman Islands','CYM','136');
INSERT INTO Nacionalidad VALUES ('CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF','140');
INSERT INTO Nacionalidad VALUES ('TD','CHAD','Chad','TCD','148');
INSERT INTO Nacionalidad VALUES ('CL','CHILE','Chile','CHL','152');
INSERT INTO Nacionalidad VALUES ('CN','CHINA','China','CHN','156');
INSERT INTO Nacionalidad VALUES ('CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('CO','COLOMBIA','Colombia','COL','170');
INSERT INTO Nacionalidad VALUES ('KM','COMOROS','Comoros','COM','174');
INSERT INTO Nacionalidad VALUES ('CG','CONGO','Congo','COG','178');
INSERT INTO Nacionalidad VALUES ('CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD','180');
INSERT INTO Nacionalidad VALUES ('CK','COOK ISLANDS','Cook Islands','COK','184');
INSERT INTO Nacionalidad VALUES ('CR','COSTA RICA','Costa Rica','CRI','188');
INSERT INTO Nacionalidad VALUES ('CI','COTE D\IVOIRE','Cote D\Ivoire','CIV','384');
INSERT INTO Nacionalidad VALUES ('HR','CROATIA','Croatia','HRV','191');
INSERT INTO Nacionalidad VALUES ('CU','CUBA','Cuba','CUB','192');
INSERT INTO Nacionalidad VALUES ('CY','CYPRUS','Cyprus','CYP','196');
INSERT INTO Nacionalidad VALUES ('CZ','CZECH REPUBLIC','Czech Republic','CZE','203');
INSERT INTO Nacionalidad VALUES ('DK','DENMARK','Denmark','DNK','208');
INSERT INTO Nacionalidad VALUES ('DJ','DJIBOUTI','Djibouti','DJI','262');
INSERT INTO Nacionalidad VALUES ('DM','DOMINICA','Dominica','DMA','212');
INSERT INTO Nacionalidad VALUES ('DO','DOMINICAN REPUBLIC','Dominican Republic','DOM','214');
INSERT INTO Nacionalidad VALUES ('EC','ECUADOR','Ecuador','ECU','218');
INSERT INTO Nacionalidad VALUES ('EG','EGYPT','Egypt','EGY','818');
INSERT INTO Nacionalidad VALUES ('SV','EL SALVADOR','El Salvador','SLV','222');
INSERT INTO Nacionalidad VALUES ('GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ','226');
INSERT INTO Nacionalidad VALUES ('ER','ERITREA','Eritrea','ERI','232');
INSERT INTO Nacionalidad VALUES ('EE','ESTONIA','Estonia','EST','233');
INSERT INTO Nacionalidad VALUES ('ET','ETHIOPIA','Ethiopia','ETH','231');
INSERT INTO Nacionalidad VALUES ('FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK','238');
INSERT INTO Nacionalidad VALUES ('FO','FAROE ISLANDS','Faroe Islands','FRO','234');
INSERT INTO Nacionalidad VALUES ('FJ','FIJI','Fiji','FJI','242');
INSERT INTO Nacionalidad VALUES ('FI','FINLAND','Finland','FIN','246');
INSERT INTO Nacionalidad VALUES ('FR','FRANCE','France','FRA','250');
INSERT INTO Nacionalidad VALUES ('GF','FRENCH GUIANA','French Guiana','GUF','254');
INSERT INTO Nacionalidad VALUES ('PF','FRENCH POLYNESIA','French Polynesia','PYF','258');
INSERT INTO Nacionalidad VALUES ('TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('GA','GABON','Gabon','GAB','266');
INSERT INTO Nacionalidad VALUES ('GM','GAMBIA','Gambia','GMB','270');
INSERT INTO Nacionalidad VALUES ('GE','GEORGIA','Georgia','GEO','268');
INSERT INTO Nacionalidad VALUES ('DE','GERMANY','Germany','DEU','276');
INSERT INTO Nacionalidad VALUES ('GH','GHANA','Ghana','GHA','288');
INSERT INTO Nacionalidad VALUES ('GI','GIBRALTAR','Gibraltar','GIB','292');
INSERT INTO Nacionalidad VALUES ('GR','GREECE','Greece','GRC','300');
INSERT INTO Nacionalidad VALUES ('GL','GREENLAND','Greenland','GRL','304');
INSERT INTO Nacionalidad VALUES ('GD','GRENADA','Grenada','GRD','308');
INSERT INTO Nacionalidad VALUES ('GP','GUADELOUPE','Guadeloupe','GLP','312');
INSERT INTO Nacionalidad VALUES ('GU','GUAM','Guam','GUM','316');
INSERT INTO Nacionalidad VALUES ('GT','GUATEMALA','Guatemala','GTM','320');
INSERT INTO Nacionalidad VALUES ('GN','GUINEA','Guinea','GIN','324');
INSERT INTO Nacionalidad VALUES ('GW','GUINEA-BISSAU','Guinea-Bissau','GNB','624');
INSERT INTO Nacionalidad VALUES ('GY','GUYANA','Guyana','GUY','328');
INSERT INTO Nacionalidad VALUES ('HT','HAITI','Haiti','HTI','332');
INSERT INTO Nacionalidad VALUES ('HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT','336');
INSERT INTO Nacionalidad VALUES ('HN','HONDURAS','Honduras','HND','340');
INSERT INTO Nacionalidad VALUES ('HK','HONG KONG','Hong Kong','HKG','344');
INSERT INTO Nacionalidad VALUES ('HU','HUNGARY','Hungary','HUN','348');
INSERT INTO Nacionalidad VALUES ('IS','ICELAND','Iceland','ISL','352');
INSERT INTO Nacionalidad VALUES ('IN','INDIA','India','IND','356');
INSERT INTO Nacionalidad VALUES ('ID','INDONESIA','Indonesia','IDN','360');
INSERT INTO Nacionalidad VALUES ('IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN','364');
INSERT INTO Nacionalidad VALUES ('IQ','IRAQ','Iraq','IRQ','368');
INSERT INTO Nacionalidad VALUES ('IE','IRELAND','Ireland','IRL','372');
INSERT INTO Nacionalidad VALUES ('IL','ISRAEL','Israel','ISR','376');
INSERT INTO Nacionalidad VALUES ('IT','ITALY','Italy','ITA','380');
INSERT INTO Nacionalidad VALUES ('JM','JAMAICA','Jamaica','JAM','388');
INSERT INTO Nacionalidad VALUES ('JP','JAPAN','Japan','JPN','392');
INSERT INTO Nacionalidad VALUES ('JO','JORDAN','Jordan','JOR','400');
INSERT INTO Nacionalidad VALUES ('KZ','KAZAKHSTAN','Kazakhstan','KAZ','398');
INSERT INTO Nacionalidad VALUES ('KE','KENYA','Kenya','KEN','404');
INSERT INTO Nacionalidad VALUES ('KI','KIRIBATI','Kiribati','KIR','296');
INSERT INTO Nacionalidad VALUES ('KP','KOREA, DEMOCRATIC PEOPLE\S REPUBLIC OF','Korea, Democratic People\s Republic of','PRK','408');
INSERT INTO Nacionalidad VALUES ('KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR','410');
INSERT INTO Nacionalidad VALUES ('KW','KUWAIT','Kuwait','KWT','414');
INSERT INTO Nacionalidad VALUES ('KG','KYRGYZSTAN','Kyrgyzstan','KGZ','417');
INSERT INTO Nacionalidad VALUES ('LA','LAO PEOPLE\S DEMOCRATIC REPUBLIC','Lao People\s Democratic Republic','LAO','418');
INSERT INTO Nacionalidad VALUES ('LV','LATVIA','Latvia','LVA','428');
INSERT INTO Nacionalidad VALUES ('LB','LEBANON','Lebanon','LBN','422');
INSERT INTO Nacionalidad VALUES ('LS','LESOTHO','Lesotho','LSO','426');
INSERT INTO Nacionalidad VALUES ('LR','LIBERIA','Liberia','LBR','430');
INSERT INTO Nacionalidad VALUES ('LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY','434');
INSERT INTO Nacionalidad VALUES ('LI','LIECHTENSTEIN','Liechtenstein','LIE','438');
INSERT INTO Nacionalidad VALUES ('LT','LITHUANIA','Lithuania','LTU','440');
INSERT INTO Nacionalidad VALUES ('LU','LUXEMBOURG','Luxembourg','LUX','442');
INSERT INTO Nacionalidad VALUES ('MO','MACAO','Macao','MAC','446');
INSERT INTO Nacionalidad VALUES ('MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD','807');
INSERT INTO Nacionalidad VALUES ('MG','MADAGASCAR','Madagascar','MDG','450');
INSERT INTO Nacionalidad VALUES ('MW','MALAWI','Malawi','MWI','454');
INSERT INTO Nacionalidad VALUES ('MY','MALAYSIA','Malaysia','MYS','458');
INSERT INTO Nacionalidad VALUES ('MV','MALDIVES','Maldives','MDV','462');
INSERT INTO Nacionalidad VALUES ('ML','MALI','Mali','MLI','466');
INSERT INTO Nacionalidad VALUES ('MT','MALTA','Malta','MLT','470');
INSERT INTO Nacionalidad VALUES ('MH','MARSHALL ISLANDS','Marshall Islands','MHL','584');
INSERT INTO Nacionalidad VALUES ('MQ','MARTINIQUE','Martinique','MTQ','474');
INSERT INTO Nacionalidad VALUES ('MR','MAURITANIA','Mauritania','MRT','478');
INSERT INTO Nacionalidad VALUES ('MU','MAURITIUS','Mauritius','MUS','480');
INSERT INTO Nacionalidad VALUES ('YT','MAYOTTE','Mayotte',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('MX','MEXICO','Mexico','MEX','484');
INSERT INTO Nacionalidad VALUES ('FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM','583');
INSERT INTO Nacionalidad VALUES ('MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA','498');
INSERT INTO Nacionalidad VALUES ('MC','MONACO','Monaco','MCO','492');
INSERT INTO Nacionalidad VALUES ('MN','MONGOLIA','Mongolia','MNG','496');
INSERT INTO Nacionalidad VALUES ('MS','MONTSERRAT','Montserrat','MSR','500');
INSERT INTO Nacionalidad VALUES ('MA','MOROCCO','Morocco','MAR','504');
INSERT INTO Nacionalidad VALUES ('MZ','MOZAMBIQUE','Mozambique','MOZ','508');
INSERT INTO Nacionalidad VALUES ('MM','MYANMAR','Myanmar','MMR','104');
INSERT INTO Nacionalidad VALUES ('NA','NAMIBIA','Namibia','NAM','516');
INSERT INTO Nacionalidad VALUES ('NR','NAURU','Nauru','NRU','520');
INSERT INTO Nacionalidad VALUES ('NP','NEPAL','Nepal','NPL','524');
INSERT INTO Nacionalidad VALUES ('NL','NETHERLANDS','Netherlands','NLD','528');
INSERT INTO Nacionalidad VALUES ('AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT','530');
INSERT INTO Nacionalidad VALUES ('NC','NEW CALEDONIA','New Caledonia','NCL','540');
INSERT INTO Nacionalidad VALUES ('NZ','NEW ZEALAND','New Zealand','NZL','554');
INSERT INTO Nacionalidad VALUES ('NI','NICARAGUA','Nicaragua','NIC','558');
INSERT INTO Nacionalidad VALUES ('NE','NIGER','Niger','NER','562');
INSERT INTO Nacionalidad VALUES ('NG','NIGERIA','Nigeria','NGA','566');
INSERT INTO Nacionalidad VALUES ('NU','NIUE','Niue','NIU','570');
INSERT INTO Nacionalidad VALUES ('NF','NORFOLK ISLAND','Norfolk Island','NFK','574');
INSERT INTO Nacionalidad VALUES ('MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP','580');
INSERT INTO Nacionalidad VALUES ('NO','NORWAY','Norway','NOR','578');
INSERT INTO Nacionalidad VALUES ('OM','OMAN','Oman','OMN','512');
INSERT INTO Nacionalidad VALUES ('PK','PAKISTAN','Pakistan','PAK','586');
INSERT INTO Nacionalidad VALUES ('PW','PALAU','Palau','PLW','585');
INSERT INTO Nacionalidad VALUES ('PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('PA','PANAMA','Panama','PAN','591');
INSERT INTO Nacionalidad VALUES ('PG','PAPUA NEW GUINEA','Papua New Guinea','PNG','598');
INSERT INTO Nacionalidad VALUES ('PY','PARAGUAY','Paraguay','PRY','600');
INSERT INTO Nacionalidad VALUES ('PE','PERU','Peru','PER','604');
INSERT INTO Nacionalidad VALUES ('PH','PHILIPPINES','Philippines','PHL','608');
INSERT INTO Nacionalidad VALUES ('PN','PITCAIRN','Pitcairn','PCN','612');
INSERT INTO Nacionalidad VALUES ('PL','POLAND','Poland','POL','616');
INSERT INTO Nacionalidad VALUES ('PT','PORTUGAL','Portugal','PRT','620');
INSERT INTO Nacionalidad VALUES ('PR','PUERTO RICO','Puerto Rico','PRI','630');
INSERT INTO Nacionalidad VALUES ('QA','QATAR','Qatar','QAT','634');
INSERT INTO Nacionalidad VALUES ('RE','REUNION','Reunion','REU','638');
INSERT INTO Nacionalidad VALUES ('RO','ROMANIA','Romania','ROM','642');
INSERT INTO Nacionalidad VALUES ('RU','RUSSIAN FEDERATION','Russian Federation','RUS','643');
INSERT INTO Nacionalidad VALUES ('RW','RWANDA','Rwanda','RWA','646');
INSERT INTO Nacionalidad VALUES ('SH','SAINT HELENA','Saint Helena','SHN','654');
INSERT INTO Nacionalidad VALUES ('KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA','659');
INSERT INTO Nacionalidad VALUES ('LC','SAINT LUCIA','Saint Lucia','LCA','662');
INSERT INTO Nacionalidad VALUES ('PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM','666');
INSERT INTO Nacionalidad VALUES ('VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT','670');
INSERT INTO Nacionalidad VALUES ('WS','SAMOA','Samoa','WSM','882');
INSERT INTO Nacionalidad VALUES ('SM','SAN MARINO','San Marino','SMR','674');
INSERT INTO Nacionalidad VALUES ('ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP','678');
INSERT INTO Nacionalidad VALUES ('SA','SAUDI ARABIA','Saudi Arabia','SAU','682');
INSERT INTO Nacionalidad VALUES ('SN','SENEGAL','Senegal','SEN','686');
INSERT INTO Nacionalidad VALUES ('CS','SERBIA AND MONTENEGRO','Serbia and Montenegro',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('SC','SEYCHELLES','Seychelles','SYC','690');
INSERT INTO Nacionalidad VALUES ('SL','SIERRA LEONE','Sierra Leone','SLE','694');
INSERT INTO Nacionalidad VALUES ('SG','SINGAPORE','Singapore','SGP','702');
INSERT INTO Nacionalidad VALUES ('SK','SLOVAKIA','Slovakia','SVK','703');
INSERT INTO Nacionalidad VALUES ('SI','SLOVENIA','Slovenia','SVN','705');
INSERT INTO Nacionalidad VALUES ('SB','SOLOMON ISLANDS','Solomon Islands','SLB','090');
INSERT INTO Nacionalidad VALUES ('SO','SOMALIA','Somalia','SOM','706');
INSERT INTO Nacionalidad VALUES ('ZA','SOUTH AFRICA','South Africa','ZAF','710');
INSERT INTO Nacionalidad VALUES ('GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('ES','SPAIN','Spain','ESP','724');
INSERT INTO Nacionalidad VALUES ('LK','SRI LANKA','Sri Lanka','LKA','144');
INSERT INTO Nacionalidad VALUES ('SD','SUDAN','Sudan','SDN','736');
INSERT INTO Nacionalidad VALUES ('SR','SURINAME','Suriname','SUR','740');
INSERT INTO Nacionalidad VALUES ('SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM','744');
INSERT INTO Nacionalidad VALUES ('SZ','SWAZILAND','Swaziland','SWZ','748');
INSERT INTO Nacionalidad VALUES ('SE','SWEDEN','Sweden','SWE','752');
INSERT INTO Nacionalidad VALUES ('CH','SWITZERLAND','Switzerland','CHE','756');
INSERT INTO Nacionalidad VALUES ('SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR','760');
INSERT INTO Nacionalidad VALUES ('TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN','158');
INSERT INTO Nacionalidad VALUES ('TJ','TAJIKISTAN','Tajikistan','TJK','762');
INSERT INTO Nacionalidad VALUES ('TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA','834');
INSERT INTO Nacionalidad VALUES ('TH','THAILAND','Thailand','THA','764');
INSERT INTO Nacionalidad VALUES ('TL','TIMOR-LESTE','Timor-Leste',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('TG','TOGO','Togo','TGO','768');
INSERT INTO Nacionalidad VALUES ('TK','TOKELAU','Tokelau','TKL','772');
INSERT INTO Nacionalidad VALUES ('TO','TONGA','Tonga','TON','776');
INSERT INTO Nacionalidad VALUES ('TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO','780');
INSERT INTO Nacionalidad VALUES ('TN','TUNISIA','Tunisia','TUN','788');
INSERT INTO Nacionalidad VALUES ('TR','TURKEY','Turkey','TUR','792');
INSERT INTO Nacionalidad VALUES ('TM','TURKMENISTAN','Turkmenistan','TKM','795');
INSERT INTO Nacionalidad VALUES ('TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA','796');
INSERT INTO Nacionalidad VALUES ('TV','TUVALU','Tuvalu','TUV','798');
INSERT INTO Nacionalidad VALUES ('UG','UGANDA','Uganda','UGA','800');
INSERT INTO Nacionalidad VALUES ('UA','UKRAINE','Ukraine','UKR','804');
INSERT INTO Nacionalidad VALUES ('AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE','784');
INSERT INTO Nacionalidad VALUES ('GB','UNITED KINGDOM','United Kingdom','GBR','826');
INSERT INTO Nacionalidad VALUES ('US','UNITED STATES','United States','USA','840');
INSERT INTO Nacionalidad VALUES ('UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL);
INSERT INTO Nacionalidad VALUES ('UY','URUGUAY','Uruguay','URY','858');
INSERT INTO Nacionalidad VALUES ('UZ','UZBEKISTAN','Uzbekistan','UZB','860');
INSERT INTO Nacionalidad VALUES ('VU','VANUATU','Vanuatu','VUT','548');
INSERT INTO Nacionalidad VALUES ('VE','VENEZUELA','Venezuela','VEN','862');
INSERT INTO Nacionalidad VALUES ('VN','VIET NAM','Viet Nam','VNM','704');
INSERT INTO Nacionalidad VALUES ('VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB','092');
INSERT INTO Nacionalidad VALUES ('VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR','850');
INSERT INTO Nacionalidad VALUES ('WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF','876');
INSERT INTO Nacionalidad VALUES ('EH','WESTERN SAHARA','Western Sahara','ESH','732');
INSERT INTO Nacionalidad VALUES ('YE','YEMEN','Yemen','YEM','887');
INSERT INTO Nacionalidad VALUES ('ZM','ZAMBIA','Zambia','ZMB','894');
INSERT INTO Nacionalidad VALUES ('ZW','ZIMBABWE','Zimbabwe','ZWE','716');

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
    Nacionalidad_Codigo_Nacionalidad CHAR(2)  NOT NULL ,
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

ALTER TABLE Trabajador ADD CONSTRAINT Trabajador_Estado_Civil_FK FOREIGN KEY ( Estado_Civil_Codigo_EC ) REFERENCES Estado_Civil ( Codigo_EC ) ;

--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE Trabajador_Nacionalidad ADD CONSTRAINT Trabajador_Nacionalidad_Nacionalidad_FK FOREIGN KEY ( Nacionalidad_Codigo_Nacionalidad ) REFERENCES Nacionalidad ( Iso_Pais ) ;

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
