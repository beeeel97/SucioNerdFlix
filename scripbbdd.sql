drop database if exists nerdflix;
CREATE DATABASE nerdflix;

use NerdFlix;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- Base de datos: `nerdflix`


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulos`

CREATE TABLE IF NOT EXISTS `titulos` (

	`cod_titulo` int(4) NOT NULL,
	`nombre` varchar(20) DEFAULT NULL,
	`genero` enum ('drama', 'comedia', 'terror', 'aventura'),
	`sinopsis` varchar(100) DEFAULT NULL,
	`fecha_estreno` date DEFAULT NULL,
	`imagen` varchar(100) DEFAULT NULL,
	`temporadas` int(2) DEFAULT NULL,
	`tipo` enum('p', 's') NOT NULL, 

	PRIMARY KEY (`cod_titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Estructura de tabla para la tabla `capitulos`


CREATE TABLE IF NOT EXISTS `capitulos` (

	`cod_titulo` int(4) NOT NULL,
	`cod_temporada` int(2) NOT NULL,
	`cod_capitulo` int(4) NOT NULL,


	PRIMARY KEY (`cod_titulo`, `cod_temporada`, `cod_capitulo`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Estructura de tabla para la tabla `usuarios`


CREATE TABLE IF NOT EXISTS `usuarios` (

	`cod_usuario` int(4) NOT NULL,
	`nombre` varchar(20) DEFAULT NULL,
	`password` varchar(20) DEFAULT NULL,
	`correo` varchar(20) DEFAULT NULL,
	`telefono` varchar(13) DEFAULT NULL,
	

	PRIMARY KEY (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Estructura de tabla para la tabla `reproduciendo`

CREATE TABLE IF NOT EXISTS `reproduciendo` (

	`cod_usuario` int(4) NOT NULL,
	`cod_titulo` int(4) NOT NULL,
	`cod_temporada` int(2) NOT NULL,
	`cod_capitulo` int(4) NOT NULL,
	
	PRIMARY KEY (`cod_usuario`, `cod_titulo`, `cod_temporada`, `cod_capitulo`),
 	FOREIGN KEY (`cod_usuario`) REFERENCES usuarios(`cod_usuario`),
 	FOREIGN KEY (`cod_titulo`, `cod_temporada`, `cod_capitulo` ) REFERENCES capitulos(`cod_titulo`, `cod_temporada`, `cod_capitulo`)
 

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Estructura de tabla para la tabla `favoritos`

CREATE TABLE IF NOT EXISTS `favoritos` (

	`cod_fav` int(4) NOT NULL,
	`cod_usuario` int(4) NOT NULL,
	`cod_titulo` int(4) NOT NULL,
	PRIMARY KEY (`cod_usuario`, `cod_fav`),
 	FOREIGN KEY (`cod_usuario`) REFERENCES usuarios(`cod_usuario`),
 	FOREIGN KEY (`cod_titulo`) REFERENCES capitulos(`cod_titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;







