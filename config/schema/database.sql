-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2019 a las 05:55:39
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `munvic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `law_id` int(11) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `law_id`, `chapter_id`, `name`, `description`, `created`, `modified`) VALUES
(1, 1, 2, 'ARTICULO 1º', '<p>Proveedores de cosas o servicios. Quedan obligados al cumplimiento de esta ley todas las personas físicas o jurídicas, de naturaleza pública o privada que, en forma profesional, aun ocasionalmente, produzcan, importen, distribuyan o comercialicen cosas o presten servicios a consumidores o usuarios. Se excluyen del ámbito de esta ley los contratos realizados entre consumidores cuyo objeto sean cosas usadas.&nbsp; </p><p>No tendrán el carácter de consumidores o usuarios, quienes adquieran, almacenen, utilicen o consuman bienes o servicios para integrarlos en procesos de producción, transformación, comercialización o prestación a terceros. No están comprendidos en esta ley los servicios de profesionales liberales que requieran para su ejercicio título universitario y matrícula otorgada por colegios profesionales reconocidos oficialmente o autoridad facultada para ello, pero sí la publicidad que se haga de su ofrecimiento.</p>', '2018-02-27 10:03:40', '2018-03-07 21:16:06'),
(2, 1, 2, 'ARTICULO 2º', '<p>Proveedores de cosas o servicios. Quedan obligados al\r\n cumplimiento de esta ley todas las personas físicas o jurídicas, de \r\nnaturaleza pública o privada que, en forma profesional, aun \r\nocasionalmente, produzcan, importen, distribuyan o comercialicen cosas o\r\n presten servicios a consumidores o usuarios. Se excluyen del ámbito de \r\nesta ley los contratos realizados entre consumidores cuyo objeto sean \r\ncosas usadas.\r\n</p><p align="JUSTIFY">No tendrán el carácter de consumidores o usuarios, \r\nquienes adquieran, almacenen, utilicen o consuman bienes o servicios \r\npara integrarlos en procesos de producción, transformación, \r\ncomercialización o prestación a terceros. No están comprendidos en esta \r\nley los servicios de profesionales liberales que requieran para su \r\nejercicio título universitario y matrícula otorgada por colegios \r\nprofesionales reconocidos oficialmente o autoridad facultada para ello, \r\npero sí la publicidad que se haga de su ofrecimiento.</p>', '2018-02-27 10:03:51', NULL),
(3, 1, 2, 'ARTICULO 3º', '<p>Interpretación. Las disposiciones de esta ley se integran con las normas\r\n generales y especiales aplicables a las relaciones jurídicas antes \r\ndefinidas, en particular las de defensa de la competencia y de lealtad \r\ncomercial. En caso de duda, se estará siempre a la interpretación más \r\nfavorable para el consumidor.</p>', '2018-02-27 10:04:05', NULL),
(4, 1, 3, 'ARTICULO 4º', '<p>Información. Quienes produzcan, importen, distribuyan o comercialicen \r\ncosas o presten servicios, deben suministrar a los consumidores o \r\nusuarios, en forma cierta y objetiva, información veraz, detallada, \r\neficaz y suficiente sobre las características esenciales de los mismos.</p>', '2018-02-27 10:04:16', NULL),
(5, 1, 3, 'ARTICULO 5º', '<p>Protección al Consumidor. Las cosas y servicios deben ser suministrados o\r\n prestados en forma tal que, utilizados en condiciones previsibles o \r\nnormales de uso, no presenten peligro alguno para la salud o integridad \r\nfísica de los consumidores o usuarios.</p>', '2018-02-27 10:04:25', NULL),
(6, 1, 3, 'ARTICULO 6º', '<p>Cosas y Servicios Riesgosos. Las cosas y servicios, \r\nincluidos los servicios públicos domiciliarios, cuya utilización pueda \r\nsuponer un riesgo para la salud o la integridad física de los \r\nconsumidores o usuarios, deben comercializarse observando los \r\nmecanismos, instrucciones y normas establecidas o razonables para \r\ngarantizar la seguridad de los mismos.\r\n</p><p align="JUSTIFY">En tales casos debe entregarse un manual en idioma \r\nnacional sobre el uso, la instalación y mantenimiento de la cosa o \r\nservicio de que se trate y brindarle adecuado asesoramiento. Igual \r\nobligación regirá en todos los casos en que se trate de artículos \r\nimportados, siendo los sujetos anunciados en el artículo 4º responsables\r\n del contenido de la traducción.</p>', '2018-02-27 10:04:35', NULL),
(7, 1, 4, 'ARTICULO 7º', '<p>Oferta. La oferta dirigida a consumidores potenciales\r\n indeterminados, obliga a quien la emite durante el tiempo en que se \r\nrealice, debiendo contener la fecha precisa de comienzo y de \r\nfinalización, así como también sus modalidades, condiciones o \r\nlimitaciones.\r\n</p><p align="JUSTIFY">La revocación de la oferta hecha pública es eficaz \r\nuna vez que haya sido difundida por medios similares a los empleados \r\npara hacerla conocer.</p>', '2018-02-27 10:04:46', NULL),
(8, 1, 4, 'ARTICULO 8º', '<p>Efectos de la Publicidad. Las precisiones formuladas en la publicidad o \r\nen anuncios prospectos, circulares u otros medios de difusión obligan al\r\n oferente y se tienen por incluidas en el contrato con el consumidor.</p>', '2018-02-27 10:04:55', NULL),
(9, 1, 4, 'ARTICULO 9º', '<p>Cosas Deficientes Usadas o Reconstituidas. Cuando se ofrezcan en forma \r\npública a consumidores potenciales indeterminados cosas que presenten \r\nalguna deficiencia, que sean usadas o reconstituidas debe indicarse las \r\ncircunstancia en forma precisa y notoria.</p>', '2018-02-27 10:05:04', NULL),
(10, 1, 4, 'ARTICULO 10', '<p>Contenido del Documento de Venta. En el documento que\r\n se extienda por la venta de cosas muebles, sin perjuicio de la \r\ninformación exigida por otras leyes o normas, deberá constar:\r\n</p><p align="JUSTIFY">a) La descripción y especificación de la cosa;</p>\r\n<p align="JUSTIFY">b) El nombre y domicilio del vendedor;</p>\r\n<p align="JUSTIFY">c) El nombre y domicilio del fabricante, distribuidor o del importador cuando correspondiere;</p>\r\n<p align="JUSTIFY">d) La mención de las características de la garantía conforme a lo establecido en esta ley;</p>\r\n<p align="JUSTIFY">e) Los plazos y condiciones de entrega;</p>\r\n<p align="JUSTIFY">f) El precio y las condiciones de pago.</p>\r\n<p align="JUSTIFY">La redacción debe ser hecha en idioma nacional, ser \r\ncompleta, clara y fácilmente legible, sin reenvíos a textos o documentos\r\n que no se entreguen previa o simultáneamente. Un ejemplar debe ser \r\nentregado al consumidor. Cuando se incluyan cláusulas adicionales a las \r\naquí indicadas o exigibles en virtud de lo previsto en esta ley, \r\naquéllas deberán ser escritas en letra destacada y suscritas por ambas \r\npartes.</p>\r\n<p align="JUSTIFY">La reglamentación establecerá modalidades más simples\r\n cuando la índole de la cosa objeto de la contratación así lo determine,\r\n siempre que asegure la finalidad perseguida por esta ley.</p>', '2018-02-27 10:05:16', NULL),
(11, 2, 14, 'ARTÍCULO 1°', '<p>Sustitúyese el artículo 7° de la ley 26.994 por el siguiente:<br>\r\n<br>\r\nArtículo 7°: La presente ley entrará en vigencia el 1° de agosto de 2015.</p>', '2018-02-27 10:11:41', NULL),
(12, 2, 14, 'ARTICULO 2°', '<p>Comuníquese al Poder Ejecutivo nacional.</p>', '2018-02-27 10:12:07', NULL),
(13, 0, 15, 'ARTICULO 1º', '<p><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Autorízase al Departamento Ejecutivo Municipal a conformar una comisión de tres\r\n(3) miembros redactora del anteproyecto del Estatuto del Empleado Municipal.-</span></b></p>', '2018-06-07 11:27:19', NULL),
(14, 0, 17, 'ARTÍCULO 2°', '<p><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Establécese como plazo máximo para que la comisión produzca su despacho, el\r\nlapso de&nbsp; noventa (90) días.-</span></b></p>', '2018-06-07 11:29:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chapters`
--

CREATE TABLE `chapters` (
  `id` int(11) NOT NULL,
  `law_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `chapters`
--

INSERT INTO `chapters` (`id`, `law_id`, `name`, `description`, `created`, `modified`) VALUES
(1, 1, 'TITULO I', '<p><b></b><b><p align="CENTER">NORMAS DE PROTECCION Y DEFENSA DE LOS CONSUMIDORES</p></b></p>', '2018-02-27 09:59:38', NULL),
(2, 1, 'CAPITULO I', 'DISPOSICIONES GENERALES', '2018-02-27 10:00:05', NULL),
(3, 1, 'CAPITULO II', 'INFORMACION AL CONSUMIDOR Y PROTECCION DE SU SALUD', '2018-02-27 10:00:25', NULL),
(4, 1, 'CAPITULO III', '<p>CONDICIONES DE LA OFERTA Y VENTA<br></p>', '2018-02-27 10:00:41', NULL),
(5, 1, 'CAPITULO IV', '<p>COSAS MUEBLES NO CONSUMIBLES<br></p>', '2018-02-27 10:00:51', NULL),
(6, 1, 'CAPITULO V', '<p>DE LA PRESTACION DE LOS SERVICIOS<br></p>', '2018-02-27 10:01:05', NULL),
(7, 1, 'CAPITULO VI', '<p>USUARIOS DE SERVICIOS PUBLICOS DOMICILIARIOS<br></p>', '2018-02-27 10:01:18', NULL),
(8, 1, 'CAPITULO VII', 'DE LA VENTA DOMICILIARIA POR CORRESPONDENCIA Y OTRAS<br>', '2018-02-27 10:01:35', NULL),
(9, 1, 'CAPITULO VIII', '<p>DE LAS OPERACIONES DE VENTA DE CREDITOS<br></p>', '2018-02-27 10:01:56', NULL),
(10, 1, 'CAPITULO IX', '<p>DE LOS TERMINOS ABUSIVOS Y CLAUSULAS INEFICACES<br></p>', '2018-02-27 10:02:04', NULL),
(11, 1, 'CAPITULO X', '<p>RESPONSABILIDAD POR DAÑOS<br></p>', '2018-02-27 10:02:16', NULL),
(12, 1, 'TITULO II', '<p>AUTORIDAD DE APLICACION PROCEDIMIENTO Y SANCIONES<br></p>', '2018-02-27 10:02:27', NULL),
(13, 1, 'CAPITULO XI', '<p>AUTORIDAD DE APLICACION<br></p>', '2018-02-27 10:02:36', NULL),
(14, 2, 'CAPITULO I', '', '2018-02-27 10:11:15', NULL),
(15, 4, 'TITULO I', '', '2018-06-07 11:25:34', NULL),
(16, 1, 'CAPITULO I', '', '2018-06-07 11:26:02', NULL),
(17, 4, 'ARTICULO 2º', '<br>', '2018-06-07 11:28:27', '2018-06-07 11:28:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configurations`
--

CREATE TABLE `configurations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text,
  `description` text,
  `type` varchar(50) NOT NULL,
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT '0',
  `autoload` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `configurations`
--

INSERT INTO `configurations` (`id`, `name`, `value`, `description`, `type`, `editable`, `weight`, `autoload`, `created`, `modified`) VALUES
(1, 'App.Name', 'Munvic', NULL, 'text', 1, 1, 1, '2018-02-06 04:11:14', NULL),
(2, 'App.Copyright', 'Los contenidos están licenciados bajo Creative Commons Reconocimiento 2.5 Argentina License', NULL, 'text', 1, 2, 1, '2018-02-06 04:11:14', NULL),
(3, 'App.Logo', '/img/logo.png', NULL, 'file', 1, 3, 1, '2018-02-06 04:11:14', NULL),
(4, 'App.Debug', '1', NULL, 'checkbox', 1, 4, 1, '2018-02-06 04:11:14', NULL),
(5, 'Recaptcha.type', 'image', NULL, 'select', 1, 1, 1, '2018-02-06 04:11:14', NULL),
(6, 'Recaptcha.theme', 'light', NULL, 'select', 1, 2, 1, '2018-02-06 04:11:14', NULL),
(7, 'Recaptcha.lang', 'en', NULL, 'select', 1, 3, 1, '2018-02-06 04:11:14', NULL),
(8, 'Recaptcha.enable', '0', NULL, 'checkbox', 1, 4, 1, '2018-02-06 04:11:14', NULL),
(9, 'Recaptcha.sitekey', '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI', NULL, 'text', 1, 5, 1, '2018-02-06 04:11:14', NULL),
(10, 'Recaptcha.secret', '6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe', NULL, 'text', 1, 6, 1, '2018-02-06 04:11:14', NULL),
(11, 'SchedulerShell.jobs.01.task', 'EmailSender', 'EmailSender', 'text', 0, 1, 1, '2018-02-06 04:11:14', NULL),
(12, 'SchedulerShell.jobs.01.interval', 'PT1M', 'EmailSender', 'select', 1, 2, 1, '2018-02-06 04:11:14', NULL),
(13, 'SchedulerShell.jobs.02.task', 'Backup', 'Backup', 'text', 0, 3, 1, '2018-02-06 04:11:14', NULL),
(14, 'SchedulerShell.jobs.02.interval', 'P1M', 'Backup', 'select', 1, 4, 1, '2018-02-06 04:11:14', NULL),
(15, 'Member.AnyoneCanRegister', '0', NULL, 'checkbox', 1, 1, 1, '2018-02-06 04:11:14', NULL),
(16, 'Member.AnyoneCanDeactive', '0', NULL, 'checkbox', 1, 2, 1, '2018-02-06 04:11:14', NULL),
(17, 'Member.RegisterTokenExpired', '24 hours', NULL, 'select', 1, 3, 1, '2018-02-06 04:11:14', NULL),
(18, 'Member.ResetPasswordTokenExpired', '24 hours', NULL, 'select', 1, 4, 1, '2018-02-06 04:11:14', NULL),
(19, 'Maintenance.enable', '0', NULL, 'checkbox', 1, 1, 1, '2018-02-06 04:11:14', NULL),
(20, 'Maintenance.allowedIp', '127.0.0.1', NULL, 'text', 1, 2, 1, '2018-02-06 04:11:14', NULL),
(21, 'BruteForceProtection.retries', '3', 'Number of allowed login attempts', 'number', 1, 1, 1, '2018-02-06 04:11:14', NULL),
(22, 'BruteForceProtection.expires', '5 minutes', 'Time to block attack ip', 'select', 1, 2, 1, '2018-02-06 04:11:14', NULL),
(23, 'BruteForceProtection.file_path', 'prevent_brute_force', 'Folder to store list attacker ip', 'text', 1, 3, 1, '2018-02-06 04:11:14', NULL),
(24, 'BruteForceProtection.message.locked', 'You have exceeded the number of allowed login attempts. Please try again in {0}', 'Locked message', 'text', 1, 4, 1, '2018-02-06 04:11:14', NULL),
(25, 'BruteForceProtection.message.login_fail', 'Incorrect username or password. {0} retries remain. Please try again', 'Retries remain message', 'text', 1, 5, 1, '2018-02-06 04:11:14', NULL),
(26, 'Remember.enable', '1', 'Allow store user/pass to Cookie', 'checkbox', 1, 1, 1, '2018-02-06 04:11:14', NULL),
(27, 'Remember.key', 'RememberMe', 'Key to store', 'text', 1, 2, 1, '2018-02-06 04:11:14', NULL),
(28, 'Remember.expires', '1 month', 'Time to keep in Cookie', 'select', 1, 3, 1, '2018-02-06 04:11:14', NULL),
(29, 'Member.AnyoneCanRecoverPassword', '0', 'Is recover password enabled?', 'checkbox', 1, 1, 1, '2018-02-05 00:00:00', '2018-02-05 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_queue`
--

CREATE TABLE `email_queue` (
  `id` int(11) NOT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `email_to` text NOT NULL,
  `email_cc` text,
  `email_bcc` text,
  `email_reply_to` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `config` varchar(30) NOT NULL DEFAULT 'default',
  `template` varchar(50) NOT NULL,
  `layout` varchar(50) NOT NULL DEFAULT 'default',
  `theme` varchar(50) DEFAULT NULL,
  `format` varchar(5) NOT NULL DEFAULT 'html',
  `template_vars` text,
  `headers` text,
  `sent` tinyint(1) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `send_tries` int(2) DEFAULT '0',
  `send_at` datetime NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_queue`
--

INSERT INTO `email_queue` (`id`, `from_email`, `from_name`, `email_to`, `email_cc`, `email_bcc`, `email_reply_to`, `subject`, `config`, `template`, `layout`, `theme`, `format`, `template_vars`, `headers`, `sent`, `locked`, `send_tries`, `send_at`, `created`, `modified`) VALUES
(1, NULL, NULL, 'sidneyrees@gmail.com', NULL, NULL, NULL, 'Reset Password', 'default', 'Users/reset_password', 'default', '', 'html', 'a:3:{s:4:"user";O:21:"App\\Model\\Entity\\User":11:{s:14:"\0*\0_accessible";a:2:{s:1:"*";b:1;s:2:"id";b:0;}s:10:"\0*\0_hidden";a:1:{i:0;s:8:"password";}s:14:"\0*\0_properties";a:9:{s:2:"id";i:1;s:7:"role_id";i:1;s:5:"email";s:20:"sidneyrees@gmail.com";s:9:"full_name";s:11:"Sidney Rees";s:8:"password";s:60:"$2y$10$1TRSbd27dBHbM4Y1U7W4t.S7GjUg5.yCPOGypTu5aLME.L1WkWN.O";s:6:"status";b:1;s:7:"created";O:20:"Cake\\I18n\\FrozenTime":3:{s:4:"date";s:26:"2018-02-06 04:11:14.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:10:"Asia/Tokyo";}s:8:"modified";O:14:"Cake\\I18n\\Time":3:{s:4:"date";s:26:"2018-02-06 11:37:41.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:10:"Asia/Tokyo";}s:13:"token_created";O:20:"Cake\\I18n\\FrozenTime":3:{s:4:"date";s:26:"2018-02-06 11:37:41.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:10:"Asia/Tokyo";}}s:12:"\0*\0_original";a:0:{}s:11:"\0*\0_virtual";a:0:{}s:13:"\0*\0_className";N;s:9:"\0*\0_dirty";a:0:{}s:7:"\0*\0_new";b:0;s:10:"\0*\0_errors";a:0:{}s:11:"\0*\0_invalid";a:0:{}s:17:"\0*\0_registryAlias";s:5:"Users";}s:7:"expired";s:16:"2/7/18, 11:37 AM";s:3:"url";s:106:"http://localhost/munvic/admin/reset-password/daf72a7caf397fb228c3ee29e670ccd2ea5d32f0/sidneyrees@gmail.com";}', 'a:0:{}', 0, 0, 0, '2018-02-06 11:37:41', '2018-02-06 11:37:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laws`
--

CREATE TABLE `laws` (
  `id` int(11) NOT NULL,
  `bulletin` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `introduction` text,
  `comments` text,
  `type` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `sanction_date` date DEFAULT NULL,
  `promulgated_date` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `laws`
--

INSERT INTO `laws` (`id`, `bulletin`, `name`, `description`, `introduction`, `comments`, `type`, `number`, `sanction_date`, `promulgated_date`, `created`, `modified`) VALUES
(1, 27744, 'DEFENSA DEL CONSUMIDOR', 'NORMAS DE PROTECCION Y DEFENSA DE LOS CONSUMIDORES - AMBITO DE \r\nAPLICACION - AUTORIDAD DE APLICACION PROCEDIMIENTOS Y SANCIONES - \r\nDISPOSICIONES FINALES\r\n							\r\n						', '<p align="CENTER">El Senado y Cámara de Diputados de la Nación Argentina reunidos en Congreso, etc., sancionan con fuerza de Ley:</p>\r\n<b><p align="CENTER">LEY DE DEFENSA DEL CONSUMIDOR</p></b>', '<p>OBSERVADA: INC. C) DEL ART. 10, ART. 13, 14, 31, 40, 52, 53, 54 Y 56. PROMULGADA Y VETADA PARCIALMENTE POR DEC. 2089 DEL13/10/93\r\n								\r\n							</p>', '1', 24240, '2018-12-27', '2018-12-27', '2018-02-27 09:48:35', '2018-03-06 02:15:54'),
(2, 33034, 'CÓDIGO CIVIL Y COMERCIAL DE LA NACIÓN', '<p>SUSTITUYESE EL ARTICULO 7° DE LA LEY 26.994 POR EL SIGUIENTE: ARTICULO \r\n7°: LA PRESENTE LEY ENTRARA EN VIGENCIA EL 1° DE AGOSTO DE 2015.\r\n							\r\n						</p>', '<p>El Senado y Cámara de Diputados de la Nación Argentina reunidos en Congreso, etc. sancionan con fuerza de<br>\r\n<br>\r\nLey:</p>', '', '1', 27081, '2018-12-27', '2018-12-27', '2018-02-27 10:11:00', NULL),
(3, NULL, 'Ordenanza tributaria', '<p>Ordenanza tributaria actualizada al 15 de marzo de 2018.</p>', '', '', '25', 2475, '2005-12-27', '2005-12-27', '2018-03-16 09:43:33', NULL),
(4, NULL, 'Autorizando al Pte. Municipal a conformar una comisión redactora del anteproyecto Estatuto del Empleado Municipal', '<p class="MsoNormal" align="right" style="text-align:right"><br></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">EL\r\nHONORABLE CONCEJO DELIBERANTE DE LA CIUDAD DE VICTORIA, SANCIONA LA SIGUIENTE:<o:p></o:p></span></b></p><p class="MsoNormal"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nbsp;O R D E N A N Z A<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n1º)-</span></b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nAutorízase al Departamento Ejecutivo Municipal a conformar una comisión de tres\r\n(3) miembros redactora del anteproyecto del Estatuto del Empleado Municipal.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n2º)-</span></b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nEstablécese como plazo máximo para que la comisión produzca su despacho, el\r\nlapso de&nbsp; noventa (90) días.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n3º)-</span></b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nComuníquese, regístrese y archívese.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Sala de\r\nSesiones, Victoria Entre Ríos, 27 de diciembre de 1.983.-<o:p></o:p></span></b></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">FIRMADO:\r\nSRA. ADRIANA M. MUZZIO SECRETARIA DEL H.C.D.<o:p></o:p></span></b></p>', '', '', '25', 1, '1983-12-27', '1983-12-27', '2018-03-26 10:15:19', NULL),
(5, NULL, 'Estableciendo un régimen de presentación espontánea y facilidades de pago de las contribuciones municipales y conceptos adeudados.- ', '<p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">EL\r\nH.C.DELIBERANTE DE LA MUNICIPALIDDA DE VICTORIA, SANCIONA LA SIGUIENTE:<o:p></o:p></span></b></p><p class="MsoNormal"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">O&nbsp; R D E N A N Z A <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n1º)- Establécese un régimen de presentación espontánea y facilidades de pago de\r\nlas contribuciones municipales y conceptos adeudados, que se enumeran en la\r\npresente Ordenanza con los/ beneficios de acuerdo a las condiciones, requisitos\r\ny plazos que se determinan en la misma.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n2º)- Los beneficios que se acuerdan en la presente Ordenanza, alcanza los\r\nsujetos pasivos de las contribuciones sobre inmuebles, tasas sobre la\r\npropiedad, servicios obras sanitarias y construcciones por los servicios de\r\ninspección general de higiene, profilaxis y seguridad que indican sobre la\r\nactividad comercial, industrial y de servicios, por deudas exigibles al 30 de\r\nnoviembre de 1.983, exteorizadas a dicha fecha o que se exterioricen con motivo\r\nde la misma.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n3º)- El régimen establecido por la presente ordenanza, tendrá vigencia hasta el\r\n28 de febrero de 1.984, facultándose al D. E. a su prórroga, conforme a las\r\nsituaciones que se presenten para cada caso, mediante Decreto, por un máximo de\r\ntreinta (30) días más.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n4º)- Quienes se acojan al régimen de la presente ordenanza, gozarán de los\r\nbeneficios que se enumeran a continuación: <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">A)- Consolidación\r\nde deuda a la fecha de vencimiento establecido;<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nbsp;B)- Eximición de intereses punitorios,\r\nresarcitorios y multas; <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">C)-\r\nPlazo para su pago o descuento por pago de contado.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n5º)- Serán requisitos y condiciones de acogimiento a los beneficios de la\r\npresente ordenanza: <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">A)-\r\nefectuar la presentación y solicitar la liquidación de deudas dentro del\r\ntérmino que se establece en la presente;<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nbsp;B)- Actualizar en el mismo acto, los datos\r\ndominiales del inmueble y el domicilio del contribuyente acreditando los\r\nprimeros con copia autenticada de cada respectivas escrituras u otro\r\ninstrumento de adquisición del dominio; <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">C)-\r\nAbonar el importe en las condiciones de esta Ordenanza; <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">D)- En\r\nel caso de contribuyentes por las contribuciones que inciden sobre el comercio,\r\nindustrias y actividades de servicios, presentar las declaraciones juradas\r\nrespectivas; <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">E)-\r\nAbonar las costas, gastos judiciales, honorarios y demás cuando se traten de\r\ndeudas fiscales en trámites judiciales mientras no existe sentencia firme; <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">F)-\r\nCumplimentar los demás requisitos formales que por Decreto estableciera el D.E.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n6º)- Los contribuyentes que en el tiempo y forma se acojan a la presente\r\nquedaran liberados de intereses punitorios, resarcitorios y multas que puedan\r\ncorresponderles.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n7º)- Establécese para la determinación de las deudas a consolidar en virtud de\r\nla presente se utilizar el método de actualización monetaria sobre la base de\r\nla variación del índice &nbsp;de precios\r\nmayoristas nivel general, producida entre el mes que debió efectuarse el pago y\r\nel mes de diciembre de 1.983, computándose como mes entero las fracciones de\r\nmes.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">A\r\ndichos efectos se tendrá en cuenta las informaciones que suministran el\r\nInstituto Nacional de Estadísticas y Censos.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n8º)- Los contribuyentes y / o responsables que se hubiesen acogido a los planes\r\nde pago en cuotas establecidos por ordenanzas anteriores y que a la fecha de\r\npromulgación de la presente se hallaren&nbsp;\r\nen condiciones de ser decretadas al caducidad del plazo acordado, podrán\r\nacogerse a este beneficio.- <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n9º)- Los contribuyentes que se acojan a la presente ordenanza en tiempo y\r\nforma, podrán cancelar sus obligaciones en las siguientes formas:<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nbsp;a)- Pago anticipado: con el 42% de descuento,\r\nhasta el día 31 de enero de 1.984; <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">b)- Pago\r\nal contado: con el 30% de descuento, hasta el día 28 de febrero de 1.984; <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">c)- En\r\ndos pagos: con el 15% de descuento; 50% al momento de presentación y\r\nliquidación y los restantes 50% hasta el día 30 de marzo de 1.984.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">d)- En\r\ncuota: 1)- Sin descuentos ni recargos hasta en 4 (cuatro) en cuotas mensuales\r\niguales y consecutivas, debiendo cancelar la primera al momento de la\r\npresentación y liquidación y las restantes, del 1º al 10 de cada mes calendario\r\nsiguiente. – vencimiento segunda cuota del 1º&nbsp;\r\nal 10 de abril de 1.984.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Cuota\r\nmínima Pesos Argentinos Cincuenta ($50)<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">2)-\r\nhasta en siete (7) cuotas mensuales, iguales y consecutivas con un interés del\r\n2%&nbsp; (dos por ciento) mensual directo,\r\naplicado sobre el saldo de la deuda consolidada, abonando el 20% (veinte por\r\nciento) al momento de presentación o hasta el 28 de febrero de 1.984 y el resto\r\nen siete (7) cuotas mensuales, iguales y consecutivas con vencimiento del 1º al\r\n10 de cada mes. Vencimiento 1º cuota el 10 de abril de 1.984. Cuota mínima $ 50\r\nPesos Argentinos Cincuenta.<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">3)- Hasta\r\nen quince cuotas mensuales, iguales y consecutivas con un interés del 4%\r\n(cuatro por ciento) aplicados sobre el saldo de la deuda consolidada, abonado\r\nel 20% (veinte por ciento) al momento de la presentación o hasta el 28 de\r\nfebrero de 1.984, y el resto, en quince (15) cuotas mensuales, iguales y\r\nconsecutivas con vencimiento del 1º al 10 de cada mes. Vencimiento 1º &nbsp;cuota el 10 de abril de 1.984. Cuota mínima\r\n$50 Pesos Argentinos Cincuenta.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n10º)- &nbsp;Los contribuyentes de gravámenes o\r\nde casos no expresamente contemplados en la presente quedaran incluidos en los\r\nbeneficios que por la misma se acuerdan.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n11º)- Los vencimientos de las cuotas se operaran a los 10 (diez) días de cada\r\nmes, la primera cuota vencerá el día 10 (diez) del mes subsiguiente al de la\r\npresentación de la solicitud de facilidades, salvo lo establecido en el Art.\r\n9º, inciso c) apartado 1). Cuando el vencimiento recayera en el dia inhábil, el\r\npago podrá realizarse el primer dia hábil siguiente.- <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n12º)- La falta de pago a su vencimiento de cualquier cuota del plan acordado,\r\noriginará por ese solo hecho, la constitución en mora del deudor devengando sin\r\nnecesidad de interpelación alguna, los recargos, intereses, y actualizaciones\r\nque establece la Ordenanza General Impositiva, pero el interés será calculado\r\nen forma diaria.- <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n13º)- La falta de pago dentro de su vencimiento de tres cuotas consecutivas o\r\nde cinco alternadas, hará caducar de pleno derecho y sin necesidades de\r\ninterpelación o comunicación alguna, administrativa o judicial, los beneficios\r\notorgados por la presente, renaciendo las obligaciones originales y/o\r\naccesorios. En tal caso, los pagos realizados se imputaran a cuenta, conforme a\r\nla Ordenanza General Impositiva. Para los contribuyentes incluidos en el\r\nartículo 9º) inciso c), procederá la caducidad por la falta de pago dentro de\r\nlos 60 (sesenta) días posteriores al vencimiento del segundo pago.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n14º)- El contribuyente y/o responsable que abone la totalidad de la deuda,\r\nantes de que ocurrieran los respectivos vencimientos, se le excluirán los\r\nintereses previstos en el Artículo 9, correspondientes a las cuotas que no\r\nhayan vencido a dicha fecha. La solicitud de facilidades no podrá ser\r\nmodificada por el contribuyente con posteridad a su presentación, excepto que\r\nsolicite el acogimiento de pago total conforme a lo previsto en el párrafo\r\nanterior.<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n15º)- Los contribuyentes que a la fecha se encontraran en concurso preventivo o\r\nquiebra, podrán acogerse a los beneficios de acuerdo a esta Ordenanza, debiendo\r\npresentar las declaraciones ju7radas en tiempo y forma que establece la\r\npresente, pero supeditándose el cumplimiento a la facultad que le acuerde en su\r\ncaso la Ley Nº 19.551.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTICULO\r\n16º)- Establécese para los gravámenes por servicios de la única propiedad,\r\nedificada o baldía del contribuyente, un límite máximo de actualización, por\r\ncada año calendario adeudado, que estará constituido por monto resultante de la\r\naplicación para dicho inmueble, de la Ordenanza tarifaria de 1.983, sin tener\r\nen cuenta la forma de pago d este último año. Lo precedente establecido no deberá\r\ntenerse en cuenta para la determinación de la suma consolidada y sometida a las\r\nformas y modalidades de pagos previstos en el Artículo 9 de la presente\r\nOrdenanza.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n17º)- Comuníquese, Publíquese, Regístrese y Archívese.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Sala de\r\nSesiones, Victoria Entre Ríos, 27 de diciembre de 1.983.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">FIRMADO:\r\nSRA. ADRIANA M. MUZZIO SECRETARIA DEL H.C.D.<o:p></o:p></span></b></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></b></p>', '', '', '25', 2, '1983-12-27', '1983-12-27', '2018-03-26 11:25:13', NULL),
(6, NULL, 'Incrementase el Cálculo de Recursos vigente ', '<p class="MsoNormal" align="right" style="text-align:right"><b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ORDENANZA\r\nNº 0003/83<o:p></o:p></span></b></p><p class="MsoNormal" align="right" style="text-align:right"><b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></b></p><p class="MsoNormal" style="text-align: center; "><b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">El Honorable Concejo\r\nDeliberante de la ciudad de Victoria, sanciona<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align: center; "><b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ORDENANZA<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n1º)-</span></b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nIncreméntese el cálculo de Recursos Vigentes en la suma de pesos argentinos\r\nTres Millones seiscientos catorce mil novecientos trece con cuarenta y seis\r\ncentavos ($ a 3.614.913,46) conforme al siguiente detalle:<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">1 – a)- 1.2.1.2.15 – Aportes no Rein. A y E.E………………………..$a\r\n670.307,00<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">1 – b)- 1.2.1.2.19- Aporte Reintegrable\r\nFO.DE.CO…………………$a 1.010.455,00<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">1- c)- 1.2.1.2.16-&nbsp; Aporte no reintegrable inc. Salarial\r\nnov./83…………...400.717,00<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">1-d)- 1.2.1.2.17 Ap. No reint. Inorem.\r\nDiciembre y S.A.C………………. 394.213, 00<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">1-e)- 1.2.1.2.16 Aportes sueldos……………………………………...\r\n$a 1.139.221.46<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total\r\n$a……………...3.614.913, 46<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n2º)-</span></b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nCréanse partidas en el Presupuesto de Gastos vigente con sus correspondientes\r\nmontos y refuércense otras por una suma total de pesos argentinos TRES MILLONES\r\nCATORCE MIL NOVECIENTOS TRECE CON CUARENTA Y SEIS CENTAVOS ($a 3.614.913,46)\r\nconforme siguiente detalle: <o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">2- a)- 1.01.01.03.04.34.11- Trasferencia\r\nCuentas H.C.D (creada)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45.000,00<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">2-b)- 1.01.01.02.21.10 – Servicios Gastos\r\nJudicial (creada)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n4.000,00<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">2- c)- 01.01.02.21.01- Servicios gas,\r\nalumbrado, etc. (ref.) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;670.307,00<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">2-d)- 01.01.01 – Personal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$a 2.895.606,46 <o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;$a 3.614.913,46<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span><b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n3º)-</span></b><span style="font-size: 12pt; font-family: Arial, sans-serif;">\r\nDéjese expresamente aclarado que con las modificaciones que se introducen\r\nmediante los Artículos 1º y 2º del presente proyecto, el Presupuesto General de\r\nla ciudad de Victoria, Entre Ríos, se eleva a la suma de pesos argentinos\r\nCATORCE MILLONES SETECIENTOS SETENTA Y DOS MIL CIENTO OCHENTA Y TRES CON\r\nTREINTA CENTAVOS ($a 14.772.183,30)</span></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n4º)-</span></b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nDe forma.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Sala de Sesiones, Victoria Entre Ríos, 27 de\r\ndiciembre de 1.983.-<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">FIRMADO:\r\nSRA. ADRIANA M. MUZZIO SECRETARIA DEL H.C.D</span></b><span style="font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>', '', '', '25', 3, '1983-12-27', '1983-12-27', '2018-03-28 09:17:05', NULL),
(7, NULL, 'Modificatoria del Reglamento de Edificación vigente según Ordenanza Nº 202 de fecha 7/11/79.', '<p class="MsoNormal" align="right" style="text-align:right"><b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Ordenanza\r\nNº 0004/83<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align: center;"><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">El Honorable Concejo Deliberante de la ciudad\r\nde Victoria, sanciona la siguiente: <o:p></o:p></span></p><p class="MsoNormal" style="text-align: center;"><b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ORDENANZA<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n1º)-</span></u></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nModificase el punto 2.1.1.9 del Reglamento de Edificación vigente en este\r\nmunicipio según Ordenanza Mº 202 de fecha 7/1/79 por lo siguiente:<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">“las dimensiones de las ochavas en edificios\r\nnuevos, refaccionados o cercos de terrenos baldíos deberán mantenerse en “forma\r\nprovisoria” en la línea de edificación existente”.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n2º)-</span></u></b><b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> </span></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nbsp;Modificase el punto 2.1.1.11 del Reglamento de\r\nEdificación vigente en este municipio por lo siguiente:<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">“Queda prohibida toda construcción de obra\r\nnueva o refacción de fachada en cualquier clase de edificios o cercos que se\r\nhallen fuera de la línea Municipal o que no tendrán la ochava correspondiente.\r\nNo así en reformas internas que no afecten el aspecto exterior de dichas construcciones.\r\nSe reglamenta para éstos casos en forma provisoria una dimensión mínima para\r\nlas ochavas de 4 metros en obras nuevas”.- <o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n3º)-</span></u></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nModifíquese<b>&nbsp; </b>el punto 2.2.2.2 inciso a) del Reglamento\r\nde Edificación vigente en este municipio que corresponde al ítem: Veredas en\r\ncalles pavimentadas de la planta urbana; por lo siguiente:<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">“a)- <b><u>Dimensiones\r\nde las veredas:</u></b> se extenderán a lo largo del frente desde la línea\r\nmunicipal hasta el cordón de la calzada, debiendo mantenerse la línea&nbsp; de Edificación Existente para su\r\nconstrucción, hasta tanto se realice un Estudio Urbanístico que delimite dicha\r\nlínea en forma definitiva”.<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n4º)-</span></u></b><b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> &nbsp;</span></b><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Modificase el punto 2.2.2.3 inciso a) del\r\nReglamento de Edificación vigente en este municipio que corresponde al ítem:\r\nVeredas en calles no pavimentadas de la planta urbana; por lo siguiente:<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">“a)- <b><u>Dimensión\r\nde la vereda</u></b>: en las calles y avenidas: se extenderán en todo el largo\r\ndel frente debiendo respetarse en forma provisoria la Línea Existente”.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n5º)-</span></u></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nModifíquese el punto 2.2.2.4 inciso a) del Reglamento de Edificación vigente en\r\neste municipio que corresponde al ítem: Veredas en los Boulevares de\r\ncircunvalación; por lo siguiente: <o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">“a) Boulevares pavimentados. Dimensión de las\r\nveredas: se extenderán en todo largo del frente debiendo respetarse en forma\r\nprovisoria la línea existente”.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n6º)- </span></u></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nbsp;Comuníquese, publíquese, regístrese y archívese.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><b>Sala de Sesiones, Victoria Entre Ríos, 27 de\r\ndiciembre de 1.983.-</b><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">FIRMADO:\r\nSRA. ADRIANA M. MUZZIO SECRETARIA DEL H.C.D.</span></b><span style="font-size:\r\n14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>', '', '', '25', 4, '1983-12-27', '1983-12-27', '2018-03-28 09:21:43', NULL),
(8, NULL, 'Modificatoria del Artículo 30º del Nomenclador Básico de Imposición. (Derogada por la Ordenanza Nº 2.472/05)', '<p class="MsoNormal" align="right" style="text-align:right"><b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">ORDENANZA\r\nNº 0005</span><o:p></o:p></span></b></p><p class="MsoNormal" style="text-align: center;"><b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">El Honorable Concejo Deliberante de la ciudad de Victoria, sanciona la siguiente: </span><o:p></o:p></span></b></p><p class="MsoNormal" style="text-align: center;"><b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">ORDENANZA</span><o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size: 14pt; font-family: &quot;Times New Roman&quot;;">ARTÍCULO\r\n1º)-</span></u></b><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;;"> </span></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">Modificase el\r\nArtículo 30º) del Nomenclador Básico de Imposición, el que quedara redactado de\r\nla siguiente forma: ARTÍCULO 30º): De acuerdo al Artículo 81º) del Código\r\nTributario Municipal – Parte Especial- se fijaran los siguientes derechos:</span><o:p></o:p></span></p><p class="MsoListParagraphCxSpFirst" style="text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:Arial"><span style="font-family: &quot;Times New Roman&quot;;">a)</span><span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">Por\r\ncada animal bovino…………………………………...$a 140,00&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Por cada animal porcino, ovino o\r\ncabrío…………… …..$a 35,00</span><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:Arial"><span style="font-family: &quot;Times New Roman&quot;;">b)</span><span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style="font-size: 14pt; font-family: &quot;Times New Roman&quot;;">Por\r\nderecho de playa para limpieza de cueros:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p><p class="MsoListParagraphCxSpMiddle" style="text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1"><span style="font-size: 14pt; font-family: &quot;Times New Roman&quot;;"> &nbsp;</span><span style="font-family: &quot;Times New Roman&quot;; font-size: 14pt; text-indent: -18pt;">Por cada cuero\r\nvacuno…………………………….…...$a 2,00</span><span style="font-family: &quot;Times New Roman&quot;; font-size: 14pt; text-indent: -18pt;">&nbsp;&nbsp;</span></p><p class="MsoListParagraphCxSpMiddle" style="text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1"><span style="font-family: &quot;Times New Roman&quot;; font-size: 14pt; text-indent: -18pt;"> </span><span style="font-family: &quot;Times New Roman&quot;; font-size: 14pt; text-indent: -18pt;">Por cada\r\ncuero lanar o ternero……………………………$a 1,30</span></p><p class="MsoListParagraphCxSpMiddle" style="text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:Arial"><span style="font-family: &quot;Times New Roman&quot;;">c)</span><span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style="font-size: 14pt; font-family: &quot;Times New Roman&quot;;">Por\r\nservicio de bretes para animales destinados al abasto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p><p class="MsoListParagraphCxSpMiddle" style="text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1"><span style="font-size: 14pt; font-family: &quot;Times New Roman&quot;;">&nbsp; Por cada animal\r\nvacuno…………………………………..$a 2,00&nbsp;&nbsp; </span></p><p class="MsoListParagraphCxSpMiddle" style="text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1"><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">Por cada\r\nanimal porcino, ovino o ternero………………..$a 1,75</span><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:Arial"><span style="font-family: &quot;Times New Roman&quot;;">d)</span><span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style="font-size: 14pt; font-family: &quot;Times New Roman&quot;;">Por\r\nservicios de balanza, manga, cargado de animales destinados al abasto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p><p class="MsoListParagraphCxSpMiddle" style="text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1"><span style="font-size: 14pt; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;\r\nPor cada animal vacuno………………………………….$a 5,00&nbsp;&nbsp;</span></p><p class="MsoListParagraphCxSpMiddle" style="text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1"><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;"> Por cada animal porcino, ovino o\r\nternero………………..$a 2,50</span><o:p></o:p></span></p><p class="MsoListParagraphCxSpLast" style="text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:Arial"><span style="font-family: &quot;Times New Roman&quot;;">e)</span><span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">Por\r\nderecho a cámara fría:</span><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:36.0pt;text-align:justify"><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">Por kilogramo de\r\ncarne, por cada 24hs. o fracción, utilizados o no por el\r\nmatarife……………………………………………$a 0,10</span><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:36.0pt;text-align:justify"><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">Carne de bovinos,\r\novinos o porcinos…………………….$a 0,10</span><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:36.0pt;text-align:justify"><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">Por menudencias de bovinos……………………….…….$a\r\n6,00</span><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:36.0pt;text-align:justify"><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">Por menudencias de\r\novinos……………………………….$a 1,50</span><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:36.0pt;text-align:justify"><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">Servicio de\r\ninspección, sellados y enfriamiento de las carne, subproductos, grasas,\r\nembutidos frescos que se introduzcan para su venta o elaboración, por\r\nkilo………………………$a 0,40</span><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:36.0pt;text-align:justify"><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">El pago de estos\r\nderechos deberá efectuarse por semana vencida, dentro de la semana\r\nsubsiguiente, bajo pena de prohibirse la faena cuando el atraso supere los\r\nquince (15) días.-</span><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:36.0pt;text-align:justify"><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">El pago fuera de\r\ntérmino hará pasible al infractor de las multas y/o recargos &nbsp;que corresponden.-</span><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:36.0pt;text-align:justify"><b><u><span style="font-size: 14pt; font-family: &quot;Times New Roman&quot;;">ARTÍCULO 2º)-</span></u></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;"> Comuníquese,\r\npublíquese, regístrese y archívese.</span><o:p></o:p></span></p><p class="MsoNormal" style="margin-left:36.0pt;text-align:justify"><b><span style="font-size:14.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;"><span style="font-family: &quot;Times New Roman&quot;;">Sala de Sesiones, Victoria Entre Ríos 24 de enero de\r\n1.984.-</span><o:p></o:p></span></b></p><p class="MsoNormal" style="margin-left:36.0pt;text-align:justify"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;;">FIRMADO: SRA. ADRIANA M. MUZZIO SECRETARIA DEL H.C.D</span></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p><p class="MsoNormal" align="right" style="text-align:right"><span style="font-family: &quot;Times New Roman&quot;;">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p class="MsoListParagraph" style="text-align:justify"><span style="font-size: 14pt; font-family: &quot;Times New Roman&quot;;"><o:p>&nbsp;</o:p></span></p>', '', '<p class="MsoNormal" style="text-align:justify"><span lang="ES" style="font-size: 13pt;">Derogada por Artículo 260º de la&nbsp; Ordenanza Nº 2.475/2.005 ,&nbsp;</span></p><p class="MsoNormal" style="text-align:justify"><br></p>', '25', 5, '1984-01-24', '1984-01-24', '2018-03-28 09:26:56', '2018-03-28 10:41:18'),
(9, NULL, 'Modificatoria del Artículo 12º del Nomenclador Básico de Imposición. (Derogada por la Ordenanza Nº 2.472/05)', '', '', '<p>Derogada por el Artículo 260 de la Ordenanza Nº 2.475/2005</p>', '25', 6, '1984-01-24', '2018-03-28', '2018-03-28 10:40:32', NULL);
INSERT INTO `laws` (`id`, `bulletin`, `name`, `description`, `introduction`, `comments`, `type`, `number`, `sanction_date`, `promulgated_date`, `created`, `modified`) VALUES
(10, NULL, 'Estableciendo un régimen de presentación espontánea para todo tipo de Obras Privadas.-', '<p class="MsoNormal" align="right" style="text-align:right"><b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ORDENANZA\r\nNº 0007/84<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align: center;"><b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">El\r\nHonorable Concejo Deliberante de la ciudad de Victoria, sanciona la siguiente: <o:p></o:p></span></b></p><p class="MsoNormal" style="text-align: center;"><b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ORDENANZA<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align: center;"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n1º)-</span></u></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nEstablécese un régimen de presentación espontanea para todo tipo de Obras\r\nPrivadas que hayan sido realizadas sin el debido control Municipal.<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">A los efectos del presente régimen se\r\nconsideran insertas en el mismo toda obra que tenga una antigüedad de hasta 5\r\naños con respecto a la fecha de promulgación de esta Ordenanza.<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n2º)-</span></u></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nEl régimen establecido por esta ordenanza tendrá vigencia durante el lapso de\r\n30 días a partir de su sanción, siendo la presentación mediante nota; recibida\r\nla cual el Departamento de Obras Públicas fijará el plazo de presentación del\r\nlegajo técnico.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n3º)-</span></u></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nExímase a los beneficiarios de este régimen del pago de la multa pertinente.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n4º)-</span></u></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nEsta Ordenanza no libera de las formalidades de presentación establecidas en el\r\nCódigo de Edificación vigente.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n5º)-</span></u></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">&nbsp; Establécese la siguiente forma de pago:<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">1)- Contado con 30% de descuento.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;">2)- Con hasta 4 (cuatro) cuotas mensuales,\r\niguales, consecutivas y sin recargo ni descuento alguno, debiendo cancelar la\r\nprimera al momento de la liquidación y las restantes del 1º al 10 de cada mes\r\ncalendario siguiente.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><u><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ARTÍCULO\r\n6º)-</span></u></b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">\r\nComuníquese, publíquese, dese al Registro Municipal y archívese.-<o:p></o:p></span></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Sala de\r\nSesiones, Victoria Entre Ríos 23 de febrero de 1.984.-<o:p></o:p></span></b></p><p class="MsoNormal" style="text-align:justify"><b><span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">FIRMADO:\r\nSRA. ADRIANA M. MUZZIO SECRETARIA DEL H.C.D</span></b><span style="font-size:\r\n14.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class="MsoNormal" style="text-align:justify"><span style="font-size:14.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>', '', '', '25', 7, '1984-02-23', '1984-02-23', '2018-03-28 11:30:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160504080144, 'Initial', '2018-02-06 07:10:48', '2018-02-06 07:10:48', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `alias` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `alias`, `name`, `description`, `created`, `modified`) VALUES
(1, 'admin', 'Admin', 'Privilege level I', '2018-02-06 04:10:49', NULL),
(2, 'manager', 'Manager', 'Privilege level II', '2018-02-06 04:10:49', NULL),
(3, 'member', 'Editor', 'Privilege level III', '2018-02-06 04:10:49', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `substitutions`
--

CREATE TABLE `substitutions` (
  `id` int(11) NOT NULL,
  `overwritten_article` int(11) NOT NULL,
  `new_article` int(11) NOT NULL,
  `comments` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `substitutions`
--

INSERT INTO `substitutions` (`id`, `overwritten_article`, `new_article`, `comments`, `created`, `modified`) VALUES
(10, 1, 2, '', '2018-03-07 21:10:43', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `token_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `email`, `full_name`, `password`, `status`, `created`, `modified`, `token_created`) VALUES
(1, 1, 'sidneyrees@gmail.com', 'Sidney Rees', '$2y$10$1TRSbd27dBHbM4Y1U7W4t.S7GjUg5.yCPOGypTu5aLME.L1WkWN.O', 1, '2018-02-06 04:11:14', '2018-02-06 11:37:41', '2018-02-06 11:37:41'),
(2, 1, 'presidenciahcdmdv@gmail.com', 'Alcides Risso', '$2y$10$w2ekqi7feSMGHhGRQFyUMu77FMln0ngQr1ynuFYNAhfcyqE18TMZq', 1, '2018-02-08 17:10:19', '2018-02-08 17:11:09', NULL),
(3, 3, 'contacto@sidneyrees.com', 'Prueba', '$2y$10$aVeeKRbdxRYfIYSzjMpbIelz2F5CC2Piwz0lR7EgAJxBlxcsq6hMG', 1, '2018-03-06 01:15:11', '2018-03-06 01:15:46', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `email_queue`
--
ALTER TABLE `email_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `laws`
--
ALTER TABLE `laws`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indices de la tabla `substitutions`
--
ALTER TABLE `substitutions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `email_queue`
--
ALTER TABLE `email_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `laws`
--
ALTER TABLE `laws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `substitutions`
--
ALTER TABLE `substitutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
