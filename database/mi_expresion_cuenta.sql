CREATE SCHEMA IF NOT EXISTS `miexpresioncuenta` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `miexpresioncuenta` ;

-- -----------------------------------------------------
-- Table `UserType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UserType` (
  `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nombre` VARCHAR(150) NULL,
  `Descripcion` VARCHAR(150) NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL
  )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `users` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `name` VARCHAR(191) NOT NULL,
  `email` VARCHAR(191) NOT NULL,
  `email_verified_at` DATETIME NULL DEFAULT NULL,
  `password` VARCHAR(191) NOT NULL,
  `remember_token` VARCHAR(191) NULL DEFAULT NULL,
  `idusertype` INT(10) NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  UNIQUE INDEX `users_email_unique` (`email` ASC),
  
  constraint idusertype
  foreign key (idusertype)
  references UserType(id)
  
  on delete (cascade)
  on update (cascade)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- -----------------------------------------------------
-- Table `miexpresioncuenta`.`modulo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modulos` (
  `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nombre` VARCHAR(150) NULL,
  `nombrecorto` VARCHAR(150) NULL,
  `Descripcion` VARCHAR(150) NULL,
  `Score` INT NULL,
  
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL
  )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `temas` (
  `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nombre` VARCHAR(150) NULL,
  `nombrecorto` VARCHAR(150) NULL,
  `Descripcion` VARCHAR(150) NULL,
  `esvisible` BOOLEAN NOT NULL DEFAULT FALSE,
  `imagen` VARCHAR(45) NULL,
  `idmodulo` INT NOT NULL,
  `idteoria` INT NOT NULL,

  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  
  constraint idmodulo
  foreign key (idmodulo)
  references modulos(id)
  
  CONSTRAINT idteoria
   FOREIGN KEY (idteoria) 
   REFERENCES teoria(id);

  on delete cascade
  on update cascade
  )
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `teoria`(
   `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `titulo` varchar(150) DEFAULT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `introduccion` varchar(250) DEFAULT NULL,
  `pregunta` varchar(250) DEFAULT NULL,
  `respuestapregunta` varchar(500) DEFAULT NULL,
  `ejemplos` varchar(250) DEFAULT NULL,
  `imgejemplo` varchar(150) DEFAULT NULL,
  `urlvideo` varchar(150) DEFAULT NULL

  
)
-- -----------------------------------------------------
-- Table `miexpresioncuenta`.`subtemas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `subtemas` (
  `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nombre` VARCHAR(150) NULL,
  `nombrecorto` VARCHAR(150) NULL,
  `Descripcion` VARCHAR(150) NULL,
  `imagen` VARCHAR(45) NULL,
  `idtema` INT NOT NULL,
  `idteoria` int NOT NULL,
  `esvisible` BOOLEAN NOT NULL DEFAULT FALSE,
  
  
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  
  constraint idtemas
  foreign key (idtema)
  references Temas(id)

  CONSTRAINT  idteoriasubtema
  FOREIGN KEY (idteoria)
   REFERENCES teoria(id)
  
  on delete cascade
  on update cascade
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Actividades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividades` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `nombre` VARCHAR(191) NOT NULL,
  `nombrecorto` VARCHAR(150) NULL,
  `descrpcion` VARCHAR(191) NOT NULL,
  `idsubtema` INT NOT NULL,
  
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  
  constraint idsubtema
  foreign key (idsubtema)
  references subtemas(id)
  
  on delete cascade
  on update cascade
  
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `preguntas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre_pregunta` VARCHAR(191) NOT NULL,
  `url_imagen` VARCHAR(191) NOT NULL,
  `nombre_imagen` VARCHAR(191) NOT NULL,
  `id_actividad` INT NOT NULL,
  
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  
  constraint id_actividad
  foreign key (id_actividad)
  references actividades(id)
  
  on delete cascade
  on update cascade
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `opciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `opciones` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre` LONGTEXT NOT NULL,
  `puntos` INT(11) NULL DEFAULT NULL,
   `id_pregunta` INT NOT NULL,
   
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  
  constraint id_pregunta
  foreign key (id_pregunta)
  references preguntas(id)
  
  on delete cascade
  on update cascade
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `resultados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `resultados` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `puntos_totales` INT(11) NULL DEFAULT NULL,
  `user_id` INT(10) UNSIGNED NOT NULL,
  
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL
  
  
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `resultado_de_preguntas`
-- -----------------------------------------------------
 CREATE TABLE IF NOT EXISTS `resultado_de_preguntas` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_resultado` INT  NOT NULL,
  `id_preguntas` INT NOT NULL,
  `id_opciones` INT  NOT NULL,
  `puntos` INT(11) NOT NULL DEFAULT '0',
  
  constraint id_resultado
  foreign key (id_resultado)
  references resultados(id)
  
  on delete cascade
  on update cascade,
 
  constraint id_opciones
  foreign key (id_opciones)
  references opciones(id)
  
  on delete cascade
  on update cascade,
   
  constraint id_preguntas
  foreign key (id_preguntas)
  references preguntas(id)
  
  on delete cascade
  on update cascade
  
  
 )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `password_resets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` VARCHAR(191) NOT NULL,
  `token` VARCHAR(191) NOT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  INDEX `password_resets_email_index` (`email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- INSERT Table `modulos`
-- -----------------------------------------------------

INSERT INTO `miexpresioncuenta`.`modulos` (`nombre`, `nombrecorto`) VALUES ('Módulo I:Mi expresión básica', 'modulo1_mi_expresion_basica');

-- -----------------------------------------------------
-- INSERT Table `temas`
-- -----------------------------------------------------

INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`, `idteoria`) VALUES ('Determinantes', 'Determinantes', '1', '1');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`, `idteoria`) VALUES ('Preposiciones', 'Preposiciones', '1', '2');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`, `idteoria`) VALUES ('Adjetivos', 'Adjetivos', '1','3');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`, `idteoria`) VALUES ('Conjunciones', 'Conjunciones', '1', '4');

UPDATE `miexpresioncuenta`.`temas` SET `imagen` = '/images/determinantes.svg' WHERE (`id` = '1');
UPDATE `miexpresioncuenta`.`temas` SET `imagen` = '/images/Adjetivos.svg' WHERE (`id` = '2');
UPDATE `miexpresioncuenta`.`temas` SET `imagen` = '/images/Preposiciones.svg' WHERE (`id` = '3');
UPDATE `miexpresioncuenta`.`temas` SET `imagen` = '/images/conectores.svg' WHERE (`id` = '4');
UPDATE `miexpresioncuenta`.`temas` SET `imagen` = '/images/conectores.svg' WHERE (`id` = '5');

-- -----------------------------------------------------
-- INSERT Table `subtemas`
-- -----------------------------------------------------

INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`, `idteoria`) VALUES ('Artículos', 'Articulos', '/images/articulos.svg', '1', '5');
INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`, `idteoria`) VALUES ('Demostrativo', 'Demostrativo', '/images/demostrativo.svg', '1' ,'6');
INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`, `idteoria`) VALUES ('Posesivo', 'Posesivo', '/images/posesivo.svg', '1', '7');
INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`, `idteoria`) VALUES ('Numerales', 'Numerales', '/images/numerales.svg', '1', '8');

-- -----------------------------------------------------
-- INSERT Table `Actividades`
-- -----------------------------------------------------
INSERT INTO `miexpresioncuenta`.`actividades` (`nombre`, `nombrecorto`, `descrpcion`, `idsubtema`) VALUES ('Actividades Artículos', 'ActividadArticulos', 'actividades del subtema de articulo', '1');
INSERT INTO `miexpresioncuenta`.`actividades` (`nombre`, `nombrecorto`, `idsubtema`) VALUES ('Actividades Demostrativos', 'ActividadDemostrativo', '2');
-- -----------------------------------------------------
-- INSERT Table `Preguntas`
-- -----------------------------------------------------
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `id_actividad`) VALUES ('Seleccione el artículo que corresponde a la imagen.', '1');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `id_actividad`) VALUES ('Seleccione el demostrativo que corresponde a la imagen.', '2');

-- -----------------------------------------------------
-- INSERT Table `Opciones respuesta de cada preguntas`
-- -----------------------------------------------------

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('La', '10', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Los', '0', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('El', '0', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Las', '0', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unos', '0', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unas', '0', '1');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esta', '10', '2');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquella', '0', '2');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Ese', '0', '2');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquel', '0', '2');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Este', '0', '2');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esa', '0', '2');

-- -----------------------------------------------------
-- INSERT Table `Opciones respuesta de cada preguntas`
-- -----------------------------------------------------


INSERT INTO `teoria` (`id`, `titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  (1, 'Los determinantes', NULL, 'En este módulo aprenderás sobre los Determinantes, su clasificación y uso en la expresión escrita.', '¿Qué son los determinantes?', 'Los determinantes son palabras que van delante del nombre o sustantivos y sirven para delimitar\r\nel significado general de dicho nombre. Los determinantes concuerdan siempre en género y\r\nnúmero con los sustantivos que acompañan.', NULL, NULL, 'https://www.youtube.com/embed/zeYS3xsyRGI');
INSERT INTO `teoria` (`id`, `titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  (2, 'Las preposiciones', NULL, 'En este módulo aprenderás sobre las Preposiciones, su clasificación y uso en la expresión escrita.', '¿Qué son las Preposiciones?', 'Las preposiciones son partes invariables de la oración (no tienen género ni número) que tienen la\r\nfunción de relacionar palabras (nombre, pronombre, adjetivo, verbo o adverbio) con su\r\ncomplemento. Pero su presencia es indispensable para el sentido de la oración.', 'Botella de cristal; mesa de madera; café con leche; lejos de aquí; loco de atar; voy hacia\r\nParís.', NULL, 'https://www.youtube.com/embed/1bGOgY1CmiU');
INSERT INTO `teoria` (`id`, `titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  (3, 'Los Adjetivos', NULL, 'En este módulo aprenderás sobre los Adjetivos, su clasificación y uso en la expresión escrita.', '¿Qué son los Adjetivos?', 'El adjetivo constituye una categoría de palabras que se define a partir de diferentes criterios:  <br>Desde el punto de vista morfológico, se caracteriza por prestar flexión de género y\r\nnúmero: alta, altas, alto, altos. En este sentido, los adjetivos son palabras variables.\r\n Desde el punto de vista sintáctico, el adjetivo es el núcleo de los grupos adjetivales, que\r\nfuncionan como modificadores del sustantivo (Una casa más linda, La opera Real),', 'Estudio interesante\r\nDeportista ejemplar', NULL, 'https://www.youtube.com/embed/1bGOgY1CmiU');
INSERT INTO `teoria` (`id`, `titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  (4, 'Las Conjunciones', NULL, 'En este módulo aprenderás sobre las Conjunciones, su clasificación y uso en la expresión escrita.', '¿Que son las Conjunciones?', 'Las conjunciones constituyen una clase de palabras invariables y generalmente átonas, cuya\r\nfunción es establecer relaciones entre las palabras, grupos sintácticos u oraciones.\r\nClases de conjunciones:\r\nLas conjunciones se dividen en dos grandes grupos, según el tipo de conexión que se establece\r\nentre los segmentos que relacionan, estas son conjunciones coordinantes y conjunciones\r\nsubordinantes.', NULL, NULL, 'https://www.youtube.com/embed/1bGOgY1CmiU');
INSERT INTO `teoria` (`id`, `titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  (5, 'Los Articulos', NULL, 'En este tema aprenderas sobre los Articulos, su clasificación y uso en la expresión escrita.', '¿Que son las Articulos?', 'Los artículos son determinantes que acompañan al nombre para indicarnos si se trata de un ser conocido o desconocido. Pueden ser de dos tipos: ', 'Artículo determinado (conocido): el, la, lo, los, las. \r\nArtículo indeterminado (desconocido): un, uno, una, unos, unas.  \r\n', NULL, NULL);
INSERT INTO `teoria` (`id`, `titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  (6, 'Los Demostrativos', NULL, 'En este tema aprenderas sobre los Demostrativos, su clasificación y uso en la expresión escrita.', '¿Que son las Demostrativos?', 'Los demostrativos son determinantes que acompañan al nombre para indicarnos la proximidad o lejanía de un objeto. ', 'Esta niña: Nos indica que la niña está cerca de nosotros. \r\nEsa niña: nos indica que la niña está a una distancia media. \r\nAquella niña: nos indica que la niña está lejos de nosotros.\r\n', NULL, NULL);
INSERT INTO `teoria` (`id`, `titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  (7, 'Los Posesivos', NULL, 'En este tema aprenderas sobre los Posesivos, su clasificación y uso en la expresión escrita.', '¿Que son las Posesivos?', 'Los posesivos son determinantes que acompañan al nombre para indicarnos a quién pertenece el objeto al que nos referimos, es decir, quién lo posee. \r\n', 'De un solo poseedor: el objeto o los objetos pertenecen a una sola persona.\r\n Ejemplo: Mi ordenador. \r\nDe varios poseedores: el objeto o los objetos pertenecen a varios personajes.\r\nEjemplo: Nuestro ordenador.\r\n', NULL, NULL);
INSERT INTO `teoria` (`id`, `titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  (8, 'Los Numerales', NULL, 'En este tema aprenderas sobre los Numerales, su clasificación y uso en la expresión escrita.', '¿Que son las Numerales?', 'Son determinantes que acompañan al nombre para indicarnos cantidad u orden. Pueden ser de dos tipos', 'Cardinales: expresan una cantidad. \r\nEjemplo: Tengo dos cascos (¿Cuántos cascos tienes?)\r\nOrdinales: indican el lugar que ocupa un objeto.\r\nEjemplo: Llegó en octava posición (¿En qué lugar llegó?)\r\n', NULL, NULL);
