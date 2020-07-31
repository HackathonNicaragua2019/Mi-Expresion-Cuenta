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
  
  on delete cascade
  on update cascade
  )
ENGINE = InnoDB;

CREATE TABLE IF NO EXISTS `teoria`(
  `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `Descripcion` VARCHAR(150) NULL,
  `imagen` VARCHAR(45) null

  
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
  `esvisible` BOOLEAN NOT NULL DEFAULT FALSE,
  
  
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL,
  
  constraint idtemas
  foreign key (idtema)
  references Temas(id)
  
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
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`, `idteoria`) VALUES ('Preposiciones', 'Preposiciones', '1', '1');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`, `idteoria`) VALUES ('Adjetivos', 'Adjetivos', '1','1');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`, `idteoria`) VALUES ('Conjunciones', 'Conjunciones', '1', '1');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`, `idteoria`) VALUES ('Adverbios', 'Adverbios', '1','1');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`) VALUES ('Determinantes', 'Determinantes', '1');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`) VALUES ('Preposiciones', 'Preposiciones', '1');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`) VALUES ('Adjetivos', 'Adjetivos', '1');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`) VALUES ('Conjunciones', 'Conjunciones', '1');
INSERT INTO `miexpresioncuenta`.`temas` (`nombre`, `nombrecorto`, `idmodulo`) VALUES ('Adverbios', 'Adverbios', '1');

UPDATE `miexpresioncuenta`.`temas` SET `imagen` = '/images/determinantes.svg' WHERE (`id` = '1');
UPDATE `miexpresioncuenta`.`temas` SET `imagen` = '/images/Adjetivos.svg' WHERE (`id` = '2');
UPDATE `miexpresioncuenta`.`temas` SET `imagen` = '/images/Preposiciones.svg' WHERE (`id` = '3');
UPDATE `miexpresioncuenta`.`temas` SET `imagen` = '/images/conectores.svg' WHERE (`id` = '4');
UPDATE `miexpresioncuenta`.`temas` SET `imagen` = '/images/conectores.svg' WHERE (`id` = '5');

-- -----------------------------------------------------
-- INSERT Table `subtemas`
-- -----------------------------------------------------

INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`) VALUES ('Artículos', 'Articulos', '/images/articulos.svg', '1');
INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`) VALUES ('Demostrativo', 'Demostrativo', '/images/demostrativo.svg', '1');
INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`) VALUES ('Posesivo', 'Posesivo', '/images/posesivo.svg', '1');
INSERT INTO `miexpresioncuenta`.`subtemas` (`nombre`, `nombrecorto`, `imagen`, `idtema`) VALUES ('Numerales', 'Numerales', '/images/numerales.svg', '1');

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

