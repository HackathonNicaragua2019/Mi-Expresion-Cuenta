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
  
  on delete cascade
  on update cascade
  )
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
-- Table `teoria`
-- -----------------------------------------------------
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

  
)ENGINE = InnoDB;

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
  references modulos(id),
  
  CONSTRAINT idteoria
   FOREIGN KEY (idteoria) 
   REFERENCES teoria(id)

  on delete cascade
  on update cascade
  )
ENGINE = InnoDB;

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
  references temas(id),

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
-- INSERT Table `teoria`
-- -----------------------------------------------------


INSERT INTO `teoria` (`titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  ('Los determinantes', '/images/determinantes.svg', 'En este módulo aprenderás sobre los Determinantes, su clasificación y uso en la expresión escrita.', '¿Qué son los determinantes?', 'Los determinantes son palabras que van delante del nombre o sustantivos y sirven para delimitar\r\nel significado general de dicho nombre. Los determinantes concuerdan siempre en género y\r\nnúmero con los sustantivos que acompañan.', NULL, NULL, 'https://www.youtube.com/embed/zeYS3xsyRGI');
INSERT INTO `teoria` (`titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  ('Los Adjetivos', '/images/Adjetivos.svg', 'En este módulo aprenderás sobre los Adjetivos, su clasificación y uso en la expresión escrita.', '¿Qué son los Adjetivos?', 'El adjetivo constituye una categoría de palabras que se define a partir de diferentes criterios:  <br>Desde el punto de vista morfológico, se caracteriza por prestar flexión de género y\r\nnúmero: alta, altas, alto, altos. En este sentido, los adjetivos son palabras variables.\r\n Desde el punto de vista sintáctico, el adjetivo es el núcleo de los grupos adjetivales, que\r\nfuncionan como modificadores del sustantivo (Una casa más linda, La opera Real),', 'Estudio interesante\r\nDeportista ejemplar', NULL, '');
INSERT INTO `teoria` (`titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  ('Las preposiciones', '/images/Preposiciones.svg','En este módulo aprenderás sobre las Preposiciones, su clasificación y uso en la expresión escrita.', '¿Qué son las Preposiciones?', 'Las preposiciones son partes invariables de la oración (no tienen género ni número) que tienen la\r\nfunción de relacionar palabras (nombre, pronombre, adjetivo, verbo o adverbio) con su\r\ncomplemento. Pero su presencia es indispensable para el sentido de la oración.', 'Botella de cristal; mesa de madera; café con leche; lejos de aquí; loco de atar; voy hacia\r\nParís.', NULL, '');
INSERT INTO `teoria` (`titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  ('Las Conjunciones', '/images/conectores.svg', 'En este módulo aprenderás sobre las Conjunciones, su clasificación y uso en la expresión escrita.', '¿Que son las Conjunciones?', 'Las conjunciones constituyen una clase de palabras invariables y generalmente átonas, cuya\r\nfunción es establecer relaciones entre las palabras, grupos sintácticos u oraciones.\r\nClases de conjunciones:\r\nLas conjunciones se dividen en dos grandes grupos, según el tipo de conexión que se establece\r\nentre los segmentos que relacionan, estas son conjunciones coordinantes y conjunciones\r\nsubordinantes.', NULL, NULL, '');
INSERT INTO `teoria` (`titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  ('Los Adverbios', '/images/adverbios.svg', '','','', NULL, NULL, '');
INSERT INTO `teoria` (`titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  ('Los Articulos', '/images/articulos.svg', 'En este tema aprenderas sobre los Articulos, su clasificación y uso en la expresión escrita.', '¿Que son las Articulos?', 'Los artículos son determinantes que acompañan al nombre para indicarnos si se trata de un ser conocido o desconocido. Pueden ser de dos tipos: ', 'Artículo determinado (conocido): el, la, lo, los, las. \r\nArtículo indeterminado (desconocido): un, uno, una, unos, unas.  \r\n', NULL, NULL);
INSERT INTO `teoria` (`titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  ('Los Demostrativos', '/images/demostrativo.svg', 'En este tema aprenderas sobre los Demostrativos, su clasificación y uso en la expresión escrita.', '¿Que son las Demostrativos?', 'Los demostrativos son determinantes que acompañan al nombre para indicarnos la proximidad o lejanía de un objeto. ', 'Esta niña: Nos indica que la niña está cerca de nosotros. \r\nEsa niña: nos indica que la niña está a una distancia media. \r\nAquella niña: nos indica que la niña está lejos de nosotros.\r\n', NULL, NULL);
INSERT INTO `teoria` (`titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  ('Los Posesivos', '/images/posesivo.svg', 'En este tema aprenderas sobre los Posesivos, su clasificación y uso en la expresión escrita.', '¿Que son las Posesivos?', 'Los posesivos son determinantes que acompañan al nombre para indicarnos a quién pertenece el objeto al que nos referimos, es decir, quién lo posee. \r\n', 'De un solo poseedor: el objeto o los objetos pertenecen a una sola persona.\r\n Ejemplo: Mi ordenador. \r\nDe varios poseedores: el objeto o los objetos pertenecen a varios personajes.\r\nEjemplo: Nuestro ordenador.\r\n', NULL, NULL);
INSERT INTO `teoria` (`titulo`, `imagen`, `introduccion`, `pregunta`, `respuestapregunta`, `ejemplos`, `imgejemplo`, `urlvideo`) VALUES  ('Los Numerales', '/images/numerales.svg', 'En este tema aprenderas sobre los Numerales, su clasificación y uso en la expresión escrita.', '¿Que son las Numerales?', 'Son determinantes que acompañan al nombre para indicarnos cantidad u orden. Pueden ser de dos tipos', 'Cardinales: expresan una cantidad. \r\nEjemplo: Tengo dos cascos (¿Cuántos cascos tienes?)\r\nOrdinales: indican el lugar que ocupa un objeto.\r\nEjemplo: Llegó en octava posición (¿En qué lugar llegó?)\r\n', NULL, NULL);


-- -----------------------------------------------------
-- INSERT Table `temas`
-- -----------------------------------------------------

INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `esvisible`, `imagen`, `idmodulo`, `idteoria`) VALUES ('Determinantes', 'Determinantes', '1', '/images/determinantes.svg', '1', '1');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `esvisible`, `imagen`, `idmodulo`, `idteoria`) VALUES ('Preposiciones', 'Preposiciones', '0', '/images/Adjetivos.svg', '1', '2');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `esvisible`, `imagen`, `idmodulo`, `idteoria`) VALUES ('Adjetivos', 'Adjetivos', '0', '/images/Preposiciones.svg', '1', '3');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `esvisible`, `imagen`, `idmodulo`, `idteoria`) VALUES ('Conjunciones', 'Conjunciones', '0', '/images/conectores.svg', '1', '4');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `esvisible`, `imagen`, `idmodulo`, `idteoria`) VALUES ('Adverbios', 'Adverbios', '0', '/images/adverbios.svg', '1', '5');

-- -----------------------------------------------------
-- INSERT Table `subtemas`
-- -----------------------------------------------------

INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`, `idteoria`) VALUES ('Artículos', 'Articulos', '/images/articulos.svg', '1', '6');
INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`, `idteoria`) VALUES ('Demostrativo', 'Demostrativo', '/images/demostrativo.svg', '1' ,'7');
INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`, `idteoria`) VALUES ('Posesivo', 'Posesivo', '/images/posesivo.svg', '1', '8');
INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`, `idteoria`) VALUES ('Numerales', 'Numerales', '/images/numerales.svg', '1', '9');

-- -----------------------------------------------------
-- INSERT Table `Actividades`
-- -----------------------------------------------------
INSERT INTO `miexpresioncuenta`.`actividades` (`nombre`, `nombrecorto`, `descrpcion`, `idsubtema`) VALUES ('Actividades Artículos', 'ActividadArticulos', 'actividades del subtema de articulo', '1');
INSERT INTO `miexpresioncuenta`.`actividades` (`nombre`, `nombrecorto`, `descrpcion`, `idsubtema`) VALUES ('Actividades Demostrativos', 'Actividad Demostrativo', 'actividades del subtema de demostrativo','2');
INSERT INTO `miexpresioncuenta`.`actividades` (`nombre`, `nombrecorto`, `descrpcion`, `idsubtema`) VALUES ('Actividades Posesivos', 'Actividad Posesivos', 'actividades del subtema de posesivos', '3');
INSERT INTO `miexpresioncuenta`.`actividades` (`nombre`, `nombrecorto`, `descrpcion`, `idsubtema`) VALUES ('Actividades Numerales', 'Actividad Numerales', 'actividades del subtema de Numerales', '4');
-- -----------------------------------------------------
-- INSERT Table `Preguntas - artículo`
-- -----------------------------------------------------

INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el artículo que corresponde a la imagen.', '/images/img_actividades/Sombrilla.svg', 'Sombrilla', '1');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el artículo que corresponde a la imagen.', '/images/img_actividades/Perro.svg', 'Perro', '1');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el artículo que corresponde a la imagen.', '/images/img_actividades/Carros.svg', 'Carros', '1');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el artículo que corresponde a la imagen.', '/images/img_actividades/Sillas.svg', 'Sillas', '1');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el artículo que corresponde a la imagen.', '/images/img_actividades/Arbol.svg', 'Árbol', '1');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el artículo que corresponde a la imagen.', '/images/img_actividades/Anillos.svg', 'Anillos', '1');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el artículo que corresponde a la imagen.', '/images/img_actividades/Puertas.svg', 'Puertas', '1');
-- -----------------------------------------------------------------------
-- INSERT Table `Opciones respuesta de preguntas - Actividad Articulos`
-- -----------------------------------------------------------------------

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('La', '10', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Los', '0', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('El', '0', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Las', '0', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unos', '0', '1');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unas', '0', '1');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('La', '0', '2');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Los', '0', '2');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('El', '10', '2');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Las', '0', '2');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '2');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unos', '0', '2');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unas', '0', '2');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('La', '0', '3');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Los', '10', '3');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('El', '0', '3');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Las', '0', '3');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '3');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unos', '0', '3');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unas', '0', '3');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('La', '0', '4');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Los', '0', '4');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('El', '0', '4');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Las', '10', '4');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '4');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unos', '0', '4');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unas', '0', '4');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('La', '0', '5');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Los', '0', '5');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('El', '10', '5');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Las', '0', '5');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '5');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unos', '0', '5');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unas', '0', '5');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('La', '0', '6');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Los', '10', '6');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('El', '0', '6');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Las', '0', '6');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '6');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unos', '0', '6');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unas', '0', '6');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('La', '0', '7');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Los', '0', '7');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('El', '0', '7');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Las', '10', '7');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '7');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unos', '0', '7');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Unas', '0', '7');
-- -----------------------------------------------------
-- INSERT Table `Preguntas - Demostrativo`
-- -----------------------------------------------------

INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el demostrativo que corresponde a la imagen.', '/images/img_actividades/esta_moto.svg', 'Moto', '2');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el demostrativo que corresponde a la imagen.', '/images/img_actividades/aquella_pelota.svg', 'Pelota', '2');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el demostrativo que corresponde a la imagen.', '/images/img_actividades/ese_lapiz.svg', 'Lápiz', '2');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el demostrativo que corresponde a la imagen.', '/images/img_actividades/aquel_libro.svg.svg', 'Libro', '2');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el demostrativo que corresponde a la imagen.', '/images/img_actividades/este_casco.svg', 'Casco', '2');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el demostrativo que corresponde a la imagen.', '/images/img_actividades/esa_maleta.svg', 'Maleta', '2');
-- -----------------------------------------------------------------------
-- INSERT Table `Opciones respuesta de preguntas - Actividad Demostrativo`
-- -----------------------------------------------------------------------

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esta', '10', '8');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquella', '0', '8');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Ese', '0', '8');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquel', '0', '8');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Este', '0', '8');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esa', '0', '8');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esta', '0', '9');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquella', '10', '9');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Ese', '0', '9');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquel', '0', '9');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Este', '0', '9');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esa', '0', '9');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esta', '0', '10');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquella', '0', '10');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Ese', '10', '10');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquel', '0', '10');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Este', '0', '10');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esa', '0', '10');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esta', '0', '11');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquella', '0', '11');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Ese', '0', '11');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquel', '10', '11');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Este', '0', '11');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esa', '0', '11');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esta', '0', '12');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquella', '0', '12');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Ese', '0', '12');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquel', '0', '12');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Este', '10', '12');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esa', '0', '12');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esta', '0', '13');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquella', '0', '13');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Ese', '0', '13');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Aquel', '0', '13');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Este', '0', '13');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Esa', '10', '13');

-- -----------------------------------------------------
-- INSERT Table `Preguntas - Posesivo`
-- -----------------------------------------------------

INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el posesivo que corresponde a la imagen.', '/images/img_actividades/nuestro_hermano.svg', 'Hermano', '3');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el posesivo que corresponde a la imagen.', '/images/img_actividades/tu_coche.svg', 'Coche', '3');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el posesivo que corresponde a la imagen.', '/images/img_actividades/mis_caramelos.svg', 'Caramelos', '3');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el posesivo que corresponde a la imagen.', '/images/img_actividades/su_maleta.svg', 'Maleta', '3');

-- -----------------------------------------------------------------------
-- INSERT Table `Opciones respuesta de preguntas - Actividad Posesivo`
-- -----------------------------------------------------------------------

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Mis', '0', '14');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Tu', '0', '14');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Su', '0', '14');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Nuestro', '10', '14');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Mis', '0', '15');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Tu', '10', '15');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Su', '0', '15');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Nuestro', '0', '15');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Mis', '10', '16');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Tu', '0', '16');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Su', '0', '16');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Nuestro', '0', '16');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Mis', '0', '17');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Tu', '0', '17');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Su', '10', '17');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Nuestro', '0', '17');

-- -----------------------------------------------------
-- INSERT Table `Preguntas - Numerales`
-- -----------------------------------------------------

INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el numeral que corresponde a la imagen.', '/images/img_actividades/unperro.svg', 'Perro', '4');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el numeral que corresponde a la imagen.', '/images/img_actividades/doslibros.svg', 'Libros', '4');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el numeral que corresponde a la imagen.', '/images/img_actividades/trescuadernos.svg', 'Cuadernos', '4');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el numeral que corresponde a la imagen.', '/images/img_actividades/cuatropelotas.svg', 'Pelotas', '4');
INSERT INTO `miexpresioncuenta`.`preguntas` (`nombre_pregunta`, `url_imagen`, `nombre_imagen`, `id_actividad`) VALUES ('Seleccione el numeral que corresponde a la imagen.', '/images/img_actividades/cincolapices.svg', 'Lápices', '4');

-- -----------------------------------------------------------------------
-- INSERT Table `Opciones respuesta de preguntas - Actividad Numerales`
-- -----------------------------------------------------------------------

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '10', '18');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Dos', '0', '18');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Tres', '0', '18');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Cuatro', '0', '18');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Cinco', '0', '18');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '19');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Dos', '10', '19');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Tres', '0', '19');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Cuatro', '0', '19');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Cinco', '0', '19');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '20');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Dos', '0', '20');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Tres', '10', '20');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Cuatro', '0', '20');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Cinco', '0', '20');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '21');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Dos', '0', '21');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Tres', '0', '21');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Cuatro', '10', '21');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Cinco', '0', '21');

INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Un', '0', '22');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Dos', '0', '22');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Tres', '0', '22');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Cuatro', '0', '22');
INSERT INTO `miexpresioncuenta`.`opciones` (`nombre`, `puntos`, `id_pregunta`) VALUES ('Cinco', '10', '22');