-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.12-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para nlab
CREATE DATABASE IF NOT EXISTS `nlab` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nlab`;

-- Copiando estrutura para tabela nlab.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.auth_permission: ~140 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
REPLACE INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add reagente', 7, 'add_reagente'),
	(26, 'Can change reagente', 7, 'change_reagente'),
	(27, 'Can delete reagente', 7, 'delete_reagente'),
	(28, 'Can view reagente', 7, 'view_reagente'),
	(29, 'Can add tombo', 8, 'add_tombo'),
	(30, 'Can change tombo', 8, 'change_tombo'),
	(31, 'Can delete tombo', 8, 'delete_tombo'),
	(32, 'Can view tombo', 8, 'view_tombo'),
	(33, 'Can add itens pedido solucao', 9, 'add_itenspedidosolucao'),
	(34, 'Can change itens pedido solucao', 9, 'change_itenspedidosolucao'),
	(35, 'Can delete itens pedido solucao', 9, 'delete_itenspedidosolucao'),
	(36, 'Can view itens pedido solucao', 9, 'view_itenspedidosolucao'),
	(37, 'Can add Modelo', 10, 'add_equipamento'),
	(38, 'Can change Modelo', 10, 'change_equipamento'),
	(39, 'Can delete Modelo', 10, 'delete_equipamento'),
	(40, 'Can view Modelo', 10, 'view_equipamento'),
	(41, 'Can add Modelo', 11, 'add_marca'),
	(42, 'Can change Modelo', 11, 'change_marca'),
	(43, 'Can delete Modelo', 11, 'delete_marca'),
	(44, 'Can view Modelo', 11, 'view_marca'),
	(45, 'Can add Modelo', 12, 'add_unidade'),
	(46, 'Can change Modelo', 12, 'change_unidade'),
	(47, 'Can delete Modelo', 12, 'delete_unidade'),
	(48, 'Can view Modelo', 12, 'view_unidade'),
	(49, 'Can add sala', 13, 'add_sala'),
	(50, 'Can change sala', 13, 'change_sala'),
	(51, 'Can delete sala', 13, 'delete_sala'),
	(52, 'Can view sala', 13, 'view_sala'),
	(53, 'Can add Modelo', 14, 'add_vidraria'),
	(54, 'Can change Modelo', 14, 'change_vidraria'),
	(55, 'Can delete Modelo', 14, 'delete_vidraria'),
	(56, 'Can view Modelo', 14, 'view_vidraria'),
	(57, 'Can add pedido solucao', 15, 'add_pedidosolucao'),
	(58, 'Can change pedido solucao', 15, 'change_pedidosolucao'),
	(59, 'Can delete pedido solucao', 15, 'delete_pedidosolucao'),
	(60, 'Can view pedido solucao', 15, 'view_pedidosolucao'),
	(61, 'Can add Modelo', 16, 'add_armario'),
	(62, 'Can change Modelo', 16, 'change_armario'),
	(63, 'Can delete Modelo', 16, 'delete_armario'),
	(64, 'Can view Modelo', 16, 'view_armario'),
	(65, 'Can add Modelo', 17, 'add_prateleira'),
	(66, 'Can change Modelo', 17, 'change_prateleira'),
	(67, 'Can delete Modelo', 17, 'delete_prateleira'),
	(68, 'Can view Modelo', 17, 'view_prateleira'),
	(69, 'Can add Modelo', 18, 'add_bancada'),
	(70, 'Can change Modelo', 18, 'change_bancada'),
	(71, 'Can delete Modelo', 18, 'delete_bancada'),
	(72, 'Can view Modelo', 18, 'view_bancada'),
	(73, 'Can add Modelo', 19, 'add_gaveta'),
	(74, 'Can change Modelo', 19, 'change_gaveta'),
	(75, 'Can delete Modelo', 19, 'delete_gaveta'),
	(76, 'Can view Modelo', 19, 'view_gaveta'),
	(77, 'Can add diverso', 20, 'add_diverso'),
	(78, 'Can change diverso', 20, 'change_diverso'),
	(79, 'Can delete diverso', 20, 'delete_diverso'),
	(80, 'Can view diverso', 20, 'view_diverso'),
	(81, 'Can add Modelo', 21, 'add_estante'),
	(82, 'Can change Modelo', 21, 'change_estante'),
	(83, 'Can delete Modelo', 21, 'delete_estante'),
	(84, 'Can view Modelo', 21, 'view_estante'),
	(85, 'Can add reagente', 22, 'add_reagente'),
	(86, 'Can change reagente', 22, 'change_reagente'),
	(87, 'Can delete reagente', 22, 'delete_reagente'),
	(88, 'Can view reagente', 22, 'view_reagente'),
	(89, 'Can add Modelo', 23, 'add_prateleira'),
	(90, 'Can change Modelo', 23, 'change_prateleira'),
	(91, 'Can delete Modelo', 23, 'delete_prateleira'),
	(92, 'Can view Modelo', 23, 'view_prateleira'),
	(93, 'Can add Modelo', 24, 'add_armario'),
	(94, 'Can change Modelo', 24, 'change_armario'),
	(95, 'Can delete Modelo', 24, 'delete_armario'),
	(96, 'Can view Modelo', 24, 'view_armario'),
	(97, 'Can add itens entrada', 25, 'add_itensentrada'),
	(98, 'Can change itens entrada', 25, 'change_itensentrada'),
	(99, 'Can delete itens entrada', 25, 'delete_itensentrada'),
	(100, 'Can view itens entrada', 25, 'view_itensentrada'),
	(101, 'Can add fornecedor', 26, 'add_fornecedor'),
	(102, 'Can change fornecedor', 26, 'change_fornecedor'),
	(103, 'Can delete fornecedor', 26, 'delete_fornecedor'),
	(104, 'Can view fornecedor', 26, 'view_fornecedor'),
	(105, 'Can add entrada', 27, 'add_entrada'),
	(106, 'Can change entrada', 27, 'change_entrada'),
	(107, 'Can delete entrada', 27, 'delete_entrada'),
	(108, 'Can view entrada', 27, 'view_entrada'),
	(109, 'Can add destinatario', 28, 'add_destinatario'),
	(110, 'Can change destinatario', 28, 'change_destinatario'),
	(111, 'Can delete destinatario', 28, 'delete_destinatario'),
	(112, 'Can view destinatario', 28, 'view_destinatario'),
	(113, 'Can add saida', 29, 'add_saida'),
	(114, 'Can change saida', 29, 'change_saida'),
	(115, 'Can delete saida', 29, 'delete_saida'),
	(116, 'Can view saida', 29, 'view_saida'),
	(117, 'Can add itens saida', 30, 'add_itenssaida'),
	(118, 'Can change itens saida', 30, 'change_itenssaida'),
	(119, 'Can delete itens saida', 30, 'delete_itenssaida'),
	(120, 'Can view itens saida', 30, 'view_itenssaida'),
	(121, 'Can add Modelo', 31, 'add_solucao'),
	(122, 'Can change Modelo', 31, 'change_solucao'),
	(123, 'Can delete Modelo', 31, 'delete_solucao'),
	(124, 'Can view Modelo', 31, 'view_solucao'),
	(125, 'Can add itens aula pratica', 32, 'add_itensaulapratica'),
	(126, 'Can change itens aula pratica', 32, 'change_itensaulapratica'),
	(127, 'Can delete itens aula pratica', 32, 'delete_itensaulapratica'),
	(128, 'Can view itens aula pratica', 32, 'view_itensaulapratica'),
	(129, 'Can add aula pratica', 33, 'add_aulapratica'),
	(130, 'Can change aula pratica', 33, 'change_aulapratica'),
	(131, 'Can delete aula pratica', 33, 'delete_aulapratica'),
	(132, 'Can view aula pratica', 33, 'view_aulapratica'),
	(133, 'Can add solucao aula pratica', 34, 'add_solucaoaulapratica'),
	(134, 'Can change solucao aula pratica', 34, 'change_solucaoaulapratica'),
	(135, 'Can delete solucao aula pratica', 34, 'delete_solucaoaulapratica'),
	(136, 'Can view solucao aula pratica', 34, 'view_solucaoaulapratica'),
	(137, 'Can add equipamentos aula pratica', 35, 'add_equipamentosaulapratica'),
	(138, 'Can change equipamentos aula pratica', 35, 'change_equipamentosaulapratica'),
	(139, 'Can delete equipamentos aula pratica', 35, 'delete_equipamentosaulapratica'),
	(140, 'Can view equipamentos aula pratica', 35, 'view_equipamentosaulapratica');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.auth_user: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
REPLACE INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$216000$hyRkxjJSPMAJ$tXmX/cayXL2ni1TIEnNAAaSk2LWDL84kOb6crJfXBOM=', '2020-10-19 14:57:03.993501', 1, 'admin', '', '', 'alessandro.silva@ifbaiano.edu.br', 1, 1, '2020-09-18 20:05:09.284766'),
	(2, 'pbkdf2_sha256$216000$KS4FbSGhEfvF$eqyQKLMRX3iFgGuhIxhMpumkN9x1yo0/Ek/G1XIhUzQ=', NULL, 1, 'alessandro', '', '', 'alessandross100@gmail.com', 1, 1, '2020-09-18 20:35:09.000000'),
	(3, 'pbkdf2_sha256$216000$sCt3moGqC3iH$kd5CNELIwJ821N0g/esnu6wDG35w0n2fC0QGa5piM4c=', NULL, 1, 'flavio', 'Flavio', 'Mendes de Souza', 'flavio.souza@ifbaiano.edu.br', 1, 1, '2020-09-18 20:35:45.000000'),
	(4, 'pbkdf2_sha256$216000$hXXIfZuUJgpB$d5FWnKe1gqiLr4edwHLMG/oDtOfcFBoWFStQNm2lG9g=', NULL, 1, 'lucas', 'Lucas', 'Fragassi Lago', 'lucas.lago@ifbaiano.edu.br', 1, 1, '2020-09-18 20:41:01.000000'),
	(5, 'pbkdf2_sha256$216000$vlUxeX5D6gyp$M5/ZCGDLjF6t4/Jmp0RyaNTykJ/uYgND/z8D9GlyPZY=', NULL, 1, 'marcella', 'Marcella', 'Jacyara Barreto de Matos', 'marcella.matos@ifbaiano.edu.br', 1, 1, '2020-09-18 20:42:52.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.auth_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.auth_user_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.django_admin_log: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
REPLACE INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2020-09-18 20:35:09.596675', '2', 'alessandro', 1, '[{"added": {}}]', 4, 1),
	(2, '2020-09-18 20:35:20.881925', '2', 'alessandro', 2, '[{"changed": {"fields": ["Email address", "Staff status", "Superuser status"]}}]', 4, 1),
	(3, '2020-09-18 20:35:46.093569', '3', 'flavio', 1, '[{"added": {}}]', 4, 1),
	(4, '2020-09-18 20:40:40.510242', '3', 'flavio', 2, '[{"changed": {"fields": ["Email address", "Staff status", "Superuser status"]}}]', 4, 1),
	(5, '2020-09-18 20:41:02.085452', '4', 'lucas', 1, '[{"added": {}}]', 4, 1),
	(6, '2020-09-18 20:42:29.613903', '4', 'lucas', 2, '[{"changed": {"fields": ["Email address", "Staff status", "Superuser status"]}}]', 4, 1),
	(7, '2020-09-18 20:42:52.551072', '5', 'marcella', 1, '[{"added": {}}]', 4, 1),
	(8, '2020-09-18 20:43:21.910759', '5', 'marcella', 2, '[{"changed": {"fields": ["First name", "Last name", "Email address", "Staff status", "Superuser status"]}}]', 4, 1),
	(9, '2020-09-18 20:43:51.334787', '4', 'lucas', 2, '[{"changed": {"fields": ["First name", "Last name"]}}]', 4, 1),
	(10, '2020-09-18 20:44:13.917140', '3', 'flavio', 2, '[{"changed": {"fields": ["First name", "Last name"]}}]', 4, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.django_content_type: ~32 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
REPLACE INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session'),
	(16, 'sisnlab', 'armario'),
	(33, 'sisnlab', 'aulapratica'),
	(18, 'sisnlab', 'bancada'),
	(28, 'sisnlab', 'destinatario'),
	(20, 'sisnlab', 'diverso'),
	(27, 'sisnlab', 'entrada'),
	(10, 'sisnlab', 'equipamento'),
	(35, 'sisnlab', 'equipamentosaulapratica'),
	(21, 'sisnlab', 'estante'),
	(26, 'sisnlab', 'fornecedor'),
	(19, 'sisnlab', 'gaveta'),
	(32, 'sisnlab', 'itensaulapratica'),
	(25, 'sisnlab', 'itensentrada'),
	(9, 'sisnlab', 'itenspedidosolucao'),
	(30, 'sisnlab', 'itenssaida'),
	(11, 'sisnlab', 'marca'),
	(15, 'sisnlab', 'pedidosolucao'),
	(17, 'sisnlab', 'prateleira'),
	(7, 'sisnlab', 'reagente'),
	(29, 'sisnlab', 'saida'),
	(13, 'sisnlab', 'sala'),
	(31, 'sisnlab', 'solucao'),
	(34, 'sisnlab', 'solucaoaulapratica'),
	(8, 'sisnlab', 'tombo'),
	(12, 'sisnlab', 'unidade'),
	(14, 'sisnlab', 'vidraria');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.django_migrations: ~24 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
REPLACE INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2020-09-18 20:03:52.011820'),
	(2, 'auth', '0001_initial', '2020-09-18 20:03:52.235973'),
	(3, 'admin', '0001_initial', '2020-09-18 20:03:52.795444'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-18 20:03:52.932527'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-18 20:03:52.943523'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-18 20:03:53.027223'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-18 20:03:53.093795'),
	(8, 'auth', '0003_alter_user_email_max_length', '2020-09-18 20:03:53.177247'),
	(9, 'auth', '0004_alter_user_username_opts', '2020-09-18 20:03:53.189834'),
	(10, 'auth', '0005_alter_user_last_login_null', '2020-09-18 20:03:53.246747'),
	(11, 'auth', '0006_require_contenttypes_0002', '2020-09-18 20:03:53.251297'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-18 20:03:53.261983'),
	(13, 'auth', '0008_alter_user_username_max_length', '2020-09-18 20:03:53.289967'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-18 20:03:53.315993'),
	(15, 'auth', '0010_alter_group_name_max_length', '2020-09-18 20:03:53.392326'),
	(16, 'auth', '0011_update_proxy_permissions', '2020-09-18 20:03:53.402320'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2020-09-18 20:03:53.427487'),
	(18, 'sessions', '0001_initial', '2020-09-18 20:03:53.471541'),
	(19, 'sisnlab', '0001_initial', '2020-09-18 20:04:03.274785'),
	(20, 'sisnlab', '0002_auto_20200928_0104', '2020-09-28 01:04:53.622552'),
	(21, 'sisnlab', '0002_auto_20201019_1504', '2020-10-19 15:04:05.655318'),
	(22, 'sisnlab', '0003_auto_20201019_1509', '2020-10-19 15:10:03.960383'),
	(23, 'sisnlab', '0004_remove_solucao_quantidade', '2020-10-20 02:16:12.533831'),
	(24, 'sisnlab', '0005_auto_20201020_1056', '2020-10-20 10:57:00.167591');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.django_session: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
REPLACE INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('7qg2fcewujq0v9elqlra205mule6l3nv', '.eJxVjEEOwiAQRe_C2hAGxAGX7nuGZmZAqRpISrsy3l2bdKHb_977LzXSupRx7Xkep6TOCtThd2OSR64bSHeqt6al1WWeWG-K3mnXQ0v5edndv4NCvXxrtkgmWM6ekS0lBu_JeXAg4LKRRDE7AkGB4wnFgRGMVzQSbQg2onp_AOjLN4k:1kKmGV:bcttaTKTSeDBVheF2tuKQQOpQXbD8ULej5MNaCy0VHs', '2020-09-29 14:39:43.346650'),
	('86o6k0nx1wq9f4zhm9nofis0muei4la8', '.eJxVjEEOwiAQRe_C2hAGxAGX7nuGZmZAqRpISrsy3l2bdKHb_977LzXSupRx7Xkep6TOCtThd2OSR64bSHeqt6al1WWeWG-K3mnXQ0v5edndv4NCvXxrtkgmWM6ekS0lBu_JeXAg4LKRRDE7AkGB4wnFgRGMVzQSbQg2onp_AOjLN4k:1kQls9:m1HyVNul0JGLEEpa5GsGuCtSU4Y7_V8Di2q_4gBog00', '2020-10-16 03:27:21.799951'),
	('go4fepg199whlzfppxqgj39e3ogbpyh1', '.eJxVjEEOwiAQRe_C2hAGxAGX7nuGZmZAqRpISrsy3l2bdKHb_977LzXSupRx7Xkep6TOCtThd2OSR64bSHeqt6al1WWeWG-K3mnXQ0v5edndv4NCvXxrtkgmWM6ekS0lBu_JeXAg4LKRRDE7AkGB4wnFgRGMVzQSbQg2onp_AOjLN4k:1kJMdG:0NnpRTQ2fDGiyz_pIJFZ4lmfTZUg_JsNzTwpydb1gBI', '2020-09-25 20:05:22.243175'),
	('pka0rhq7tfdi8z7vw346m2dczx6ov1x3', '.eJxVjEEOwiAQRe_C2hAGxAGX7nuGZmZAqRpISrsy3l2bdKHb_977LzXSupRx7Xkep6TOCtThd2OSR64bSHeqt6al1WWeWG-K3mnXQ0v5edndv4NCvXxrtkgmWM6ekS0lBu_JeXAg4LKRRDE7AkGB4wnFgRGMVzQSbQg2onp_AOjLN4k:1kLfPh:knutWYIcxNZd5ZzUVnIAnk74FIUVjOd4W2ATnmFUV90', '2020-10-02 01:32:53.911513'),
	('xdc10r6dtgpf2bcuidmhtm1vwge25tio', '.eJxVjEEOwiAQRe_C2hAGxAGX7nuGZmZAqRpISrsy3l2bdKHb_977LzXSupRx7Xkep6TOCtThd2OSR64bSHeqt6al1WWeWG-K3mnXQ0v5edndv4NCvXxrtkgmWM6ekS0lBu_JeXAg4LKRRDE7AkGB4wnFgRGMVzQSbQg2onp_AOjLN4k:1kUZP6:bpv9lvNGrgUuFuB0BZ8FKrNd6SwG2BtU8yxV3DTyoTI', '2020-10-26 14:57:04.144408');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_armario
CREATE TABLE IF NOT EXISTS `sisnlab_armario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sigla` varchar(50) DEFAULT NULL,
  `obs` longtext NOT NULL,
  `fotoarmario` varchar(100) DEFAULT NULL,
  `sala_id` int(11) NOT NULL,
  `tombo_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tombo_id` (`tombo_id`),
  KEY `sisnlab_armario_sala_id_7e76112b_fk_sisnlab_sala_id` (`sala_id`),
  KEY `sisnlab_armario_usuario_id_45aeda63_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_armario_sala_id_7e76112b_fk_sisnlab_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `sisnlab_sala` (`id`),
  CONSTRAINT `sisnlab_armario_tombo_id_40c9ff03_fk_sisnlab_tombo_id` FOREIGN KEY (`tombo_id`) REFERENCES `sisnlab_tombo` (`id`),
  CONSTRAINT `sisnlab_armario_usuario_id_45aeda63_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_armario: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_armario` DISABLE KEYS */;
REPLACE INTO `sisnlab_armario` (`id`, `nome`, `sigla`, `obs`, `fotoarmario`, `sala_id`, `tombo_id`, `usuario_id`) VALUES
	(1, 'Armario LAB01', NULL, '', '', 1, 7, 1),
	(2, 'Armário com Gaveta', NULL, '', '', 2, 8, 1),
	(3, 'Armário  Três Portas', NULL, '', 'images/388_EuEPEpS.jpg', 3, 9, 1);
/*!40000 ALTER TABLE `sisnlab_armario` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_aulapratica
CREATE TABLE IF NOT EXISTS `sisnlab_aulapratica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `data_inicio` datetime(6) NOT NULL,
  `data_fim` datetime(6) NOT NULL,
  `quantalunos` int(11) DEFAULT NULL,
  `obs` longtext DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `sala_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_aulapratica_sala_id_c87bc275_fk_sisnlab_sala_id` (`sala_id`),
  KEY `sisnlab_aulapratica_usuario_id_b5798763_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_aulapratica_sala_id_c87bc275_fk_sisnlab_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `sisnlab_sala` (`id`),
  CONSTRAINT `sisnlab_aulapratica_usuario_id_b5798763_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_aulapratica: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_aulapratica` DISABLE KEYS */;
REPLACE INTO `sisnlab_aulapratica` (`id`, `nome`, `data_inicio`, `data_fim`, `quantalunos`, `obs`, `status`, `sala_id`, `usuario_id`) VALUES
	(1, 'Teste 01', '2020-10-09 03:27:26.000000', '2020-10-09 03:27:26.000000', 12, '', 'Aula Solicitada', 1, 1),
	(2, 'Aula teste', '2020-10-19 14:57:33.000000', '2020-10-19 14:57:33.000000', 54, '', 'Aula Solicitada', 2, 1),
	(3, 'Aula teste', '2020-10-19 15:45:22.000000', '2020-10-19 15:45:22.000000', 54, '', 'Aula Solicitada', 2, 1),
	(4, 'Aula teste', '2020-10-20 02:25:31.000000', '2020-10-20 02:25:31.000000', 43, '', 'Aula Solicitada', 2, 1),
	(5, 'Aula teste', '2020-10-20 02:25:31.000000', '2020-10-20 02:25:31.000000', 43, '', 'Aula Solicitada', 2, 1),
	(6, 'Aula teste', '2020-10-20 02:25:31.000000', '2020-10-20 02:25:31.000000', 43, '', 'Aula Solicitada', 2, 1);
/*!40000 ALTER TABLE `sisnlab_aulapratica` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_bancada
CREATE TABLE IF NOT EXISTS `sisnlab_bancada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sigla` varchar(50) DEFAULT NULL,
  `obs` longtext NOT NULL,
  `sala_id` int(11) NOT NULL,
  `tombo_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tombo_id` (`tombo_id`),
  KEY `sisnlab_bancada_sala_id_4faff099_fk_sisnlab_sala_id` (`sala_id`),
  KEY `sisnlab_bancada_usuario_id_41775084_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_bancada_sala_id_4faff099_fk_sisnlab_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `sisnlab_sala` (`id`),
  CONSTRAINT `sisnlab_bancada_tombo_id_401fdc16_fk_sisnlab_tombo_id` FOREIGN KEY (`tombo_id`) REFERENCES `sisnlab_tombo` (`id`),
  CONSTRAINT `sisnlab_bancada_usuario_id_41775084_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_bancada: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_bancada` DISABLE KEYS */;
REPLACE INTO `sisnlab_bancada` (`id`, `nome`, `sigla`, `obs`, `sala_id`, `tombo_id`, `usuario_id`) VALUES
	(1, 'Bancada Laboratório 01', 'GAS', '', 1, NULL, 1),
	(2, 'Bancada Laboratório 02', 'ee', '', 2, NULL, 1);
/*!40000 ALTER TABLE `sisnlab_bancada` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_destinatario
CREATE TABLE IF NOT EXISTS `sisnlab_destinatario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `data_cadastro` datetime(6) NOT NULL,
  `endereco` varchar(250) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cel` varchar(15) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `obs` longtext DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  UNIQUE KEY `cnpj` (`cnpj`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `sisnlab_destinatario_usuario_id_0fc93a49_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_destinatario_usuario_id_0fc93a49_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_destinatario: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_destinatario` DISABLE KEYS */;
REPLACE INTO `sisnlab_destinatario` (`id`, `nome`, `cnpj`, `cpf`, `data_cadastro`, `endereco`, `telefone`, `cel`, `email`, `obs`, `usuario_id`) VALUES
	(1, 'Alessandro Souza Silva', NULL, '222.222.222-22', '2020-09-28 01:04:01.000000', 'Rua Brumado N 120 Bairro Camacã', '+5573999990999', '(73)99990-9999', 'alessandross100@gmail.com', '', 1);
/*!40000 ALTER TABLE `sisnlab_destinatario` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_diverso
CREATE TABLE IF NOT EXISTS `sisnlab_diverso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `quantidade` decimal(9,2) DEFAULT NULL,
  `ficha_tec` varchar(100) DEFAULT NULL,
  `obs` longtext NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `armario_id` int(11) DEFAULT NULL,
  `bancada_id` int(11) DEFAULT NULL,
  `estante_id` int(11) DEFAULT NULL,
  `gaveta_id` int(11) DEFAULT NULL,
  `marca_id` int(11) NOT NULL,
  `prateleira_id` int(11) DEFAULT NULL,
  `sala_id` int(11) NOT NULL,
  `unidade_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  KEY `sisnlab_diverso_armario_id_3b28d8bb_fk_sisnlab_armario_id` (`armario_id`),
  KEY `sisnlab_diverso_bancada_id_cb6d27a9_fk_sisnlab_bancada_id` (`bancada_id`),
  KEY `sisnlab_diverso_estante_id_6aeff6cf_fk_sisnlab_estante_id` (`estante_id`),
  KEY `sisnlab_diverso_gaveta_id_48c11c4a_fk_sisnlab_gaveta_id` (`gaveta_id`),
  KEY `sisnlab_diverso_marca_id_3a193235_fk_sisnlab_marca_id` (`marca_id`),
  KEY `sisnlab_diverso_prateleira_id_6d6074af_fk_sisnlab_prateleira_id` (`prateleira_id`),
  KEY `sisnlab_diverso_sala_id_b797eda0_fk_sisnlab_sala_id` (`sala_id`),
  KEY `sisnlab_diverso_unidade_id_5c573eaf_fk_sisnlab_unidade_id` (`unidade_id`),
  KEY `sisnlab_diverso_usuario_id_45f5f2a3_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_diverso_armario_id_3b28d8bb_fk_sisnlab_armario_id` FOREIGN KEY (`armario_id`) REFERENCES `sisnlab_armario` (`id`),
  CONSTRAINT `sisnlab_diverso_bancada_id_cb6d27a9_fk_sisnlab_bancada_id` FOREIGN KEY (`bancada_id`) REFERENCES `sisnlab_bancada` (`id`),
  CONSTRAINT `sisnlab_diverso_estante_id_6aeff6cf_fk_sisnlab_estante_id` FOREIGN KEY (`estante_id`) REFERENCES `sisnlab_estante` (`id`),
  CONSTRAINT `sisnlab_diverso_gaveta_id_48c11c4a_fk_sisnlab_gaveta_id` FOREIGN KEY (`gaveta_id`) REFERENCES `sisnlab_gaveta` (`id`),
  CONSTRAINT `sisnlab_diverso_marca_id_3a193235_fk_sisnlab_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `sisnlab_marca` (`id`),
  CONSTRAINT `sisnlab_diverso_prateleira_id_6d6074af_fk_sisnlab_prateleira_id` FOREIGN KEY (`prateleira_id`) REFERENCES `sisnlab_prateleira` (`id`),
  CONSTRAINT `sisnlab_diverso_sala_id_b797eda0_fk_sisnlab_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `sisnlab_sala` (`id`),
  CONSTRAINT `sisnlab_diverso_unidade_id_5c573eaf_fk_sisnlab_unidade_id` FOREIGN KEY (`unidade_id`) REFERENCES `sisnlab_unidade` (`id`),
  CONSTRAINT `sisnlab_diverso_usuario_id_45f5f2a3_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_diverso: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_diverso` DISABLE KEYS */;
REPLACE INTO `sisnlab_diverso` (`id`, `nome`, `quantidade`, `ficha_tec`, `obs`, `foto`, `armario_id`, `bancada_id`, `estante_id`, `gaveta_id`, `marca_id`, `prateleira_id`, `sala_id`, `unidade_id`, `usuario_id`) VALUES
	(1, 'Caveira', 3.00, '', '', '', 1, NULL, NULL, NULL, 2, NULL, 1, 2, 1);
/*!40000 ALTER TABLE `sisnlab_diverso` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_entrada
CREATE TABLE IF NOT EXISTS `sisnlab_entrada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nf` int(10) unsigned DEFAULT NULL CHECK (`nf` >= 0),
  `data_cadastro` datetime(6) NOT NULL,
  `nf_foto` varchar(100) DEFAULT NULL,
  `obs` longtext NOT NULL,
  `status` varchar(15) NOT NULL,
  `fornecedor_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_entrada_fornecedor_id_bc4667ec_fk_sisnlab_fornecedor_id` (`fornecedor_id`),
  KEY `sisnlab_entrada_usuario_id_1c334822_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_entrada_fornecedor_id_bc4667ec_fk_sisnlab_fornecedor_id` FOREIGN KEY (`fornecedor_id`) REFERENCES `sisnlab_fornecedor` (`id`),
  CONSTRAINT `sisnlab_entrada_usuario_id_1c334822_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_entrada: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_entrada` DISABLE KEYS */;
REPLACE INTO `sisnlab_entrada` (`id`, `nf`, `data_cadastro`, `nf_foto`, `obs`, `status`, `fornecedor_id`, `usuario_id`) VALUES
	(4, 5000, '2020-09-25 01:58:14.000000', '', '', '', 1, 1),
	(5, 4563, '2020-09-25 15:17:47.000000', '', '', '', 1, 1);
/*!40000 ALTER TABLE `sisnlab_entrada` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_equipamento
CREATE TABLE IF NOT EXISTS `sisnlab_equipamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `data_compra` datetime(6) NOT NULL,
  `data_ultim_m` datetime(6) NOT NULL,
  `origem` varchar(100) NOT NULL,
  `ficha_tec` varchar(100) NOT NULL,
  `especficacao_t` longtext NOT NULL,
  `calibragem` varchar(3) NOT NULL,
  `obs` longtext NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `armario_id` int(11) DEFAULT NULL,
  `bancada_id` int(11) DEFAULT NULL,
  `estante_id` int(11) DEFAULT NULL,
  `gaveta_id` int(11) DEFAULT NULL,
  `marca_id` int(11) NOT NULL,
  `prateleira_id` int(11) DEFAULT NULL,
  `sala_id` int(11) NOT NULL,
  `tombo_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tombo_id` (`tombo_id`),
  KEY `sisnlab_equipamento_estante_id_d15a5117_fk_sisnlab_estante_id` (`estante_id`),
  KEY `sisnlab_equipamento_gaveta_id_0d5aa2f4_fk_sisnlab_gaveta_id` (`gaveta_id`),
  KEY `sisnlab_equipamento_marca_id_09310640_fk_sisnlab_marca_id` (`marca_id`),
  KEY `sisnlab_equipamento_prateleira_id_c3c0453c_fk_sisnlab_p` (`prateleira_id`),
  KEY `sisnlab_equipamento_sala_id_2f7963a1_fk_sisnlab_sala_id` (`sala_id`),
  KEY `sisnlab_equipamento_usuario_id_6d8be644_fk_auth_user_id` (`usuario_id`),
  KEY `sisnlab_equipamento_armario_id_53af82c7_fk_sisnlab_armario_id` (`armario_id`),
  KEY `sisnlab_equipamento_bancada_id_36b14b54_fk_sisnlab_bancada_id` (`bancada_id`),
  CONSTRAINT `sisnlab_equipamento_armario_id_53af82c7_fk_sisnlab_armario_id` FOREIGN KEY (`armario_id`) REFERENCES `sisnlab_armario` (`id`),
  CONSTRAINT `sisnlab_equipamento_bancada_id_36b14b54_fk_sisnlab_bancada_id` FOREIGN KEY (`bancada_id`) REFERENCES `sisnlab_bancada` (`id`),
  CONSTRAINT `sisnlab_equipamento_estante_id_d15a5117_fk_sisnlab_estante_id` FOREIGN KEY (`estante_id`) REFERENCES `sisnlab_estante` (`id`),
  CONSTRAINT `sisnlab_equipamento_gaveta_id_0d5aa2f4_fk_sisnlab_gaveta_id` FOREIGN KEY (`gaveta_id`) REFERENCES `sisnlab_gaveta` (`id`),
  CONSTRAINT `sisnlab_equipamento_marca_id_09310640_fk_sisnlab_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `sisnlab_marca` (`id`),
  CONSTRAINT `sisnlab_equipamento_prateleira_id_c3c0453c_fk_sisnlab_p` FOREIGN KEY (`prateleira_id`) REFERENCES `sisnlab_prateleira` (`id`),
  CONSTRAINT `sisnlab_equipamento_sala_id_2f7963a1_fk_sisnlab_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `sisnlab_sala` (`id`),
  CONSTRAINT `sisnlab_equipamento_tombo_id_a2f7a787_fk_sisnlab_tombo_id` FOREIGN KEY (`tombo_id`) REFERENCES `sisnlab_tombo` (`id`),
  CONSTRAINT `sisnlab_equipamento_usuario_id_6d8be644_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_equipamento: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_equipamento` DISABLE KEYS */;
REPLACE INTO `sisnlab_equipamento` (`id`, `nome`, `data_compra`, `data_ultim_m`, `origem`, `ficha_tec`, `especficacao_t`, `calibragem`, `obs`, `foto`, `armario_id`, `bancada_id`, `estante_id`, `gaveta_id`, `marca_id`, `prateleira_id`, `sala_id`, `tombo_id`, `usuario_id`) VALUES
	(1, 'Balança', '2020-09-18 20:17:08.000000', '2020-09-18 20:17:08.000000', '', '', '', 'SIM', '', 'images/3dp019.jpg', NULL, 1, NULL, NULL, 2, NULL, 1, 6, 1),
	(2, 'Balão de Destilação', '2020-10-15 16:34:42.000000', '2020-10-15 16:34:42.000000', '', '', '', 'SIM', '', 'images/balão_de_destilação_4xCb9Qj.jpg', 1, NULL, NULL, NULL, 2, NULL, 2, 4, 1);
/*!40000 ALTER TABLE `sisnlab_equipamento` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_equipamentosaulapratica
CREATE TABLE IF NOT EXISTS `sisnlab_equipamentosaulapratica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aulapratica_id` int(11) DEFAULT NULL,
  `quant_equipamentos` decimal(9,2) DEFAULT NULL,
  `equipamentos_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_equipamentos_equipamentos_id_3e67ad37_fk_sisnlab_e` (`equipamentos_id`),
  KEY `sisnlab_equipamentos_usuario_id_67f979e9_fk_auth_user` (`usuario_id`),
  CONSTRAINT `sisnlab_equipamentos_equipamentos_id_3e67ad37_fk_sisnlab_e` FOREIGN KEY (`equipamentos_id`) REFERENCES `sisnlab_equipamento` (`id`),
  CONSTRAINT `sisnlab_equipamentos_usuario_id_67f979e9_fk_auth_user` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_equipamentosaulapratica: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_equipamentosaulapratica` DISABLE KEYS */;
REPLACE INTO `sisnlab_equipamentosaulapratica` (`id`, `aulapratica_id`, `quant_equipamentos`, `equipamentos_id`, `usuario_id`) VALUES
	(1, 3, 4.00, 1, 1),
	(2, 3, 4.00, 2, 1),
	(3, 3, 4.00, 2, 1),
	(4, 4, 1.00, 1, 1),
	(5, 4, 4.00, 2, 1),
	(6, 6, 34.00, 2, 1);
/*!40000 ALTER TABLE `sisnlab_equipamentosaulapratica` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_estante
CREATE TABLE IF NOT EXISTS `sisnlab_estante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sigla` varchar(50) DEFAULT NULL,
  `obs` longtext DEFAULT NULL,
  `sala_id` int(11) NOT NULL,
  `tombo_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tombo_id` (`tombo_id`),
  KEY `sisnlab_estante_sala_id_793bdd18_fk_sisnlab_sala_id` (`sala_id`),
  KEY `sisnlab_estante_usuario_id_11bf10ef_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_estante_sala_id_793bdd18_fk_sisnlab_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `sisnlab_sala` (`id`),
  CONSTRAINT `sisnlab_estante_tombo_id_2c5ebc7c_fk_sisnlab_tombo_id` FOREIGN KEY (`tombo_id`) REFERENCES `sisnlab_tombo` (`id`),
  CONSTRAINT `sisnlab_estante_usuario_id_11bf10ef_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_estante: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_estante` DISABLE KEYS */;
/*!40000 ALTER TABLE `sisnlab_estante` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_fornecedor
CREATE TABLE IF NOT EXISTS `sisnlab_fornecedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `data_cadastro` datetime(6) NOT NULL,
  `endereco` varchar(250) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cel` varchar(15) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `obs` longtext DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  UNIQUE KEY `cnpj` (`cnpj`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `sisnlab_fornecedor_usuario_id_22ee3c96_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_fornecedor_usuario_id_22ee3c96_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_fornecedor: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_fornecedor` DISABLE KEYS */;
REPLACE INTO `sisnlab_fornecedor` (`id`, `nome`, `cnpj`, `cpf`, `data_cadastro`, `endereco`, `telefone`, `cel`, `email`, `obs`, `usuario_id`) VALUES
	(1, 'Alessandro Souza Silva', '111.111.111/0001-01', '222.222.222-22', '2020-09-22 14:39:54.000000', 'teste', '+5573999990999', '(73)99990-9999', 'alessandross100@gmail.com', '', 1);
/*!40000 ALTER TABLE `sisnlab_fornecedor` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_gaveta
CREATE TABLE IF NOT EXISTS `sisnlab_gaveta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sigla` varchar(50) DEFAULT NULL,
  `obs` longtext DEFAULT NULL,
  `armario_id` int(11) DEFAULT NULL,
  `bancada_id` int(11) DEFAULT NULL,
  `estante_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_gaveta_armario_id_f4809991_fk_sisnlab_armario_id` (`armario_id`),
  KEY `sisnlab_gaveta_bancada_id_dfe818ac_fk_sisnlab_bancada_id` (`bancada_id`),
  KEY `sisnlab_gaveta_estante_id_38389587_fk_sisnlab_estante_id` (`estante_id`),
  KEY `sisnlab_gaveta_usuario_id_ae5fc02c_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_gaveta_armario_id_f4809991_fk_sisnlab_armario_id` FOREIGN KEY (`armario_id`) REFERENCES `sisnlab_armario` (`id`),
  CONSTRAINT `sisnlab_gaveta_bancada_id_dfe818ac_fk_sisnlab_bancada_id` FOREIGN KEY (`bancada_id`) REFERENCES `sisnlab_bancada` (`id`),
  CONSTRAINT `sisnlab_gaveta_estante_id_38389587_fk_sisnlab_estante_id` FOREIGN KEY (`estante_id`) REFERENCES `sisnlab_estante` (`id`),
  CONSTRAINT `sisnlab_gaveta_usuario_id_ae5fc02c_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_gaveta: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_gaveta` DISABLE KEYS */;
REPLACE INTO `sisnlab_gaveta` (`id`, `nome`, `sigla`, `obs`, `armario_id`, `bancada_id`, `estante_id`, `usuario_id`) VALUES
	(1, 'Gaveta 01', 'GAS', '', 2, NULL, NULL, 1),
	(2, 'Gaveta 01', NULL, '', 3, NULL, NULL, 1);
/*!40000 ALTER TABLE `sisnlab_gaveta` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_itensaulapratica
CREATE TABLE IF NOT EXISTS `sisnlab_itensaulapratica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aulapratica_id` int(11) DEFAULT NULL,
  `quant_reagente` decimal(9,2) DEFAULT NULL,
  `reagente_id` int(11) DEFAULT NULL,
  `unidade_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_itensaulapra_reagente_id_639c6050_fk_sisnlab_r` (`reagente_id`),
  KEY `sisnlab_itensaulapra_unidade_id_9be130c3_fk_sisnlab_u` (`unidade_id`),
  KEY `sisnlab_itensaulapratica_usuario_id_ac286dfd_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_itensaulapra_reagente_id_639c6050_fk_sisnlab_r` FOREIGN KEY (`reagente_id`) REFERENCES `sisnlab_reagente` (`id`),
  CONSTRAINT `sisnlab_itensaulapra_unidade_id_9be130c3_fk_sisnlab_u` FOREIGN KEY (`unidade_id`) REFERENCES `sisnlab_unidade` (`id`),
  CONSTRAINT `sisnlab_itensaulapratica_usuario_id_ac286dfd_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_itensaulapratica: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_itensaulapratica` DISABLE KEYS */;
REPLACE INTO `sisnlab_itensaulapratica` (`id`, `aulapratica_id`, `quant_reagente`, `reagente_id`, `unidade_id`, `usuario_id`) VALUES
	(1, 1, 12.00, 1, 1, 1),
	(2, 1, 12.00, 1, 2, 1),
	(3, 2, 45.00, 2, 2, 1),
	(4, 2, 8.00, 4, 3, 1),
	(5, 3, 25.00, 3, 3, 1),
	(6, 4, 2.00, 2, 3, 1),
	(7, 4, 3.00, 2, 3, 1),
	(8, 6, 4.00, 2, 2, 1),
	(9, 6, 3.00, 3, 3, 1);
/*!40000 ALTER TABLE `sisnlab_itensaulapratica` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_itensentrada
CREATE TABLE IF NOT EXISTS `sisnlab_itensentrada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entrada_id` int(11) DEFAULT NULL,
  `quantidade` decimal(9,2) DEFAULT NULL,
  `reagente_id` int(11) NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_itensentrada_reagente_id_8c2ab364_fk_sisnlab_reagente_id` (`reagente_id`),
  KEY `sisnlab_itensentrada_unidade_id_13d1e2d3_fk_sisnlab_unidade_id` (`unidade_id`),
  KEY `sisnlab_itensentrada_usuario_id_f8ab8e91_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_itensentrada_reagente_id_8c2ab364_fk_sisnlab_reagente_id` FOREIGN KEY (`reagente_id`) REFERENCES `sisnlab_reagente` (`id`),
  CONSTRAINT `sisnlab_itensentrada_unidade_id_13d1e2d3_fk_sisnlab_unidade_id` FOREIGN KEY (`unidade_id`) REFERENCES `sisnlab_unidade` (`id`),
  CONSTRAINT `sisnlab_itensentrada_usuario_id_f8ab8e91_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_itensentrada: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_itensentrada` DISABLE KEYS */;
REPLACE INTO `sisnlab_itensentrada` (`id`, `entrada_id`, `quantidade`, `reagente_id`, `unidade_id`, `usuario_id`) VALUES
	(5, 4, 1000.00, 1, 1, 1),
	(6, 4, 1000.00, 2, 1, 1),
	(7, 5, 1000.00, 1, 1, 1),
	(8, 5, 1000.00, 2, 1, 1),
	(9, 5, 20.00, 1, 2, 1);
/*!40000 ALTER TABLE `sisnlab_itensentrada` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_itenspedidosolucao
CREATE TABLE IF NOT EXISTS `sisnlab_itenspedidosolucao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedidosolucao_id` int(11) DEFAULT NULL,
  `quantidade` decimal(9,2) DEFAULT NULL,
  `reagente_id` int(11) NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_itenspedidos_reagente_id_a45660d5_fk_sisnlab_r` (`reagente_id`),
  KEY `sisnlab_itenspedidos_unidade_id_52a4c922_fk_sisnlab_u` (`unidade_id`),
  KEY `sisnlab_itenspedidosolucao_usuario_id_52591afa_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_itenspedidos_reagente_id_a45660d5_fk_sisnlab_r` FOREIGN KEY (`reagente_id`) REFERENCES `sisnlab_reagente` (`id`),
  CONSTRAINT `sisnlab_itenspedidos_unidade_id_52a4c922_fk_sisnlab_u` FOREIGN KEY (`unidade_id`) REFERENCES `sisnlab_unidade` (`id`),
  CONSTRAINT `sisnlab_itenspedidosolucao_usuario_id_52591afa_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_itenspedidosolucao: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_itenspedidosolucao` DISABLE KEYS */;
REPLACE INTO `sisnlab_itenspedidosolucao` (`id`, `pedidosolucao_id`, `quantidade`, `reagente_id`, `unidade_id`, `usuario_id`) VALUES
	(3, 1, 200.00, 4, 1, 1),
	(4, 1, 30.50, 2, 1, 1),
	(5, 2, 10.00, 1, 2, 1),
	(6, 3, 10.00, 3, 2, 1),
	(7, 3, 60.00, 4, 1, 1),
	(8, 4, 1000.00, 1, 1, 1),
	(9, 4, 1000.00, 2, 1, 1),
	(10, 4, 1000.00, 4, 2, 1),
	(11, 4, 5000.00, 3, 2, 1);
/*!40000 ALTER TABLE `sisnlab_itenspedidosolucao` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_itenssaida
CREATE TABLE IF NOT EXISTS `sisnlab_itenssaida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saida_id` int(11) DEFAULT NULL,
  `quantidade` decimal(9,2) DEFAULT NULL,
  `reagente_id` int(11) NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_itenssaida_reagente_id_1bc4510f_fk_sisnlab_reagente_id` (`reagente_id`),
  KEY `sisnlab_itenssaida_unidade_id_4baad402_fk_sisnlab_unidade_id` (`unidade_id`),
  KEY `sisnlab_itenssaida_usuario_id_4b56c816_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_itenssaida_reagente_id_1bc4510f_fk_sisnlab_reagente_id` FOREIGN KEY (`reagente_id`) REFERENCES `sisnlab_reagente` (`id`),
  CONSTRAINT `sisnlab_itenssaida_unidade_id_4baad402_fk_sisnlab_unidade_id` FOREIGN KEY (`unidade_id`) REFERENCES `sisnlab_unidade` (`id`),
  CONSTRAINT `sisnlab_itenssaida_usuario_id_4b56c816_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_itenssaida: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_itenssaida` DISABLE KEYS */;
REPLACE INTO `sisnlab_itenssaida` (`id`, `saida_id`, `quantidade`, `reagente_id`, `unidade_id`, `usuario_id`) VALUES
	(1, 3, 1000.00, 1, 2, 1),
	(2, 3, 1000.00, 2, 1, 1),
	(3, 4, 1000.00, 1, 1, 1),
	(4, 4, 1000.00, 2, 1, 1),
	(5, 5, 2000.00, 1, 1, 1),
	(6, 5, 2000.00, 2, 1, 1);
/*!40000 ALTER TABLE `sisnlab_itenssaida` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_marca
CREATE TABLE IF NOT EXISTS `sisnlab_marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `obs` longtext DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  KEY `sisnlab_marca_usuario_id_12258769_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_marca_usuario_id_12258769_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_marca: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_marca` DISABLE KEYS */;
REPLACE INTO `sisnlab_marca` (`id`, `nome`, `obs`, `usuario_id`) VALUES
	(1, 'DEll', '', 1),
	(2, 'IF', '', 1);
/*!40000 ALTER TABLE `sisnlab_marca` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_pedidosolucao
CREATE TABLE IF NOT EXISTS `sisnlab_pedidosolucao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `concentracao` double DEFAULT NULL,
  `data_producao` datetime(6) NOT NULL,
  `quantidade` decimal(9,2) NOT NULL,
  `status` varchar(15) NOT NULL,
  `obs` longtext NOT NULL,
  `armario_id` int(11) DEFAULT NULL,
  `bancada_id` int(11) DEFAULT NULL,
  `estante_id` int(11) DEFAULT NULL,
  `gaveta_id` int(11) DEFAULT NULL,
  `prateleira_id` int(11) DEFAULT NULL,
  `sala_id` int(11) NOT NULL,
  `unidade_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_pedidosolucao_armario_id_51893c62_fk_sisnlab_armario_id` (`armario_id`),
  KEY `sisnlab_pedidosolucao_bancada_id_8e1e5682_fk_sisnlab_bancada_id` (`bancada_id`),
  KEY `sisnlab_pedidosolucao_estante_id_a42b6ea6_fk_sisnlab_estante_id` (`estante_id`),
  KEY `sisnlab_pedidosolucao_gaveta_id_d8df6368_fk_sisnlab_gaveta_id` (`gaveta_id`),
  KEY `sisnlab_pedidosoluca_prateleira_id_c401d936_fk_sisnlab_p` (`prateleira_id`),
  KEY `sisnlab_pedidosolucao_sala_id_b91968d7_fk_sisnlab_sala_id` (`sala_id`),
  KEY `sisnlab_pedidosolucao_unidade_id_8dfc570a_fk_sisnlab_unidade_id` (`unidade_id`),
  KEY `sisnlab_pedidosolucao_usuario_id_9f6cb326_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_pedidosoluca_prateleira_id_c401d936_fk_sisnlab_p` FOREIGN KEY (`prateleira_id`) REFERENCES `sisnlab_prateleira` (`id`),
  CONSTRAINT `sisnlab_pedidosolucao_armario_id_51893c62_fk_sisnlab_armario_id` FOREIGN KEY (`armario_id`) REFERENCES `sisnlab_armario` (`id`),
  CONSTRAINT `sisnlab_pedidosolucao_bancada_id_8e1e5682_fk_sisnlab_bancada_id` FOREIGN KEY (`bancada_id`) REFERENCES `sisnlab_bancada` (`id`),
  CONSTRAINT `sisnlab_pedidosolucao_estante_id_a42b6ea6_fk_sisnlab_estante_id` FOREIGN KEY (`estante_id`) REFERENCES `sisnlab_estante` (`id`),
  CONSTRAINT `sisnlab_pedidosolucao_gaveta_id_d8df6368_fk_sisnlab_gaveta_id` FOREIGN KEY (`gaveta_id`) REFERENCES `sisnlab_gaveta` (`id`),
  CONSTRAINT `sisnlab_pedidosolucao_sala_id_b91968d7_fk_sisnlab_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `sisnlab_sala` (`id`),
  CONSTRAINT `sisnlab_pedidosolucao_unidade_id_8dfc570a_fk_sisnlab_unidade_id` FOREIGN KEY (`unidade_id`) REFERENCES `sisnlab_unidade` (`id`),
  CONSTRAINT `sisnlab_pedidosolucao_usuario_id_9f6cb326_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_pedidosolucao: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_pedidosolucao` DISABLE KEYS */;
REPLACE INTO `sisnlab_pedidosolucao` (`id`, `nome`, `concentracao`, `data_producao`, `quantidade`, `status`, `obs`, `armario_id`, `bancada_id`, `estante_id`, `gaveta_id`, `prateleira_id`, `sala_id`, `unidade_id`, `usuario_id`) VALUES
	(1, 'Teste 01', NULL, '2020-09-25 01:54:19.000000', 50.00, 'Preparada', '', 3, NULL, NULL, NULL, NULL, 1, 1, 1),
	(2, 'Teste 02', 443, '2020-09-25 14:55:58.000000', 50.00, 'Preparada', '', NULL, 1, NULL, NULL, NULL, 1, 2, 1),
	(3, 'Teste 03', 443, '2020-09-25 15:01:18.000000', 500.00, 'Em Produção', '', 1, NULL, NULL, NULL, NULL, 1, 1, 1),
	(4, 'Teste 04', 4434, '2020-09-28 15:59:32.000000', 1000.00, 'Preparada', '', 2, NULL, NULL, NULL, NULL, 1, 1, 1);
/*!40000 ALTER TABLE `sisnlab_pedidosolucao` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_prateleira
CREATE TABLE IF NOT EXISTS `sisnlab_prateleira` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sigla` varchar(50) DEFAULT NULL,
  `obs` longtext DEFAULT NULL,
  `armario_id` int(11) DEFAULT NULL,
  `bancada_id` int(11) DEFAULT NULL,
  `estante_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_prateleira_armario_id_bdd904d6_fk_sisnlab_armario_id` (`armario_id`),
  KEY `sisnlab_prateleira_bancada_id_ce12f446_fk_sisnlab_bancada_id` (`bancada_id`),
  KEY `sisnlab_prateleira_estante_id_beec7b1b_fk_sisnlab_estante_id` (`estante_id`),
  KEY `sisnlab_prateleira_usuario_id_ee831e7b_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_prateleira_armario_id_bdd904d6_fk_sisnlab_armario_id` FOREIGN KEY (`armario_id`) REFERENCES `sisnlab_armario` (`id`),
  CONSTRAINT `sisnlab_prateleira_bancada_id_ce12f446_fk_sisnlab_bancada_id` FOREIGN KEY (`bancada_id`) REFERENCES `sisnlab_bancada` (`id`),
  CONSTRAINT `sisnlab_prateleira_estante_id_beec7b1b_fk_sisnlab_estante_id` FOREIGN KEY (`estante_id`) REFERENCES `sisnlab_estante` (`id`),
  CONSTRAINT `sisnlab_prateleira_usuario_id_ee831e7b_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_prateleira: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_prateleira` DISABLE KEYS */;
REPLACE INTO `sisnlab_prateleira` (`id`, `nome`, `sigla`, `obs`, `armario_id`, `bancada_id`, `estante_id`, `usuario_id`) VALUES
	(1, 'Prateleira 01', NULL, '', 3, NULL, NULL, 1);
/*!40000 ALTER TABLE `sisnlab_prateleira` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_reagente
CREATE TABLE IF NOT EXISTS `sisnlab_reagente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `formula_q` varchar(100) NOT NULL,
  `grau_p` varchar(100) DEFAULT NULL,
  `quantidade` decimal(9,2) DEFAULT NULL,
  `data_validade` datetime(6) DEFAULT NULL,
  `controle_pfex` varchar(50) DEFAULT NULL,
  `ficha_tec` varchar(100) DEFAULT NULL,
  `massamolecular` varchar(100) DEFAULT NULL,
  `densidade` varchar(100) DEFAULT NULL,
  `disponibilidade` varchar(3) NOT NULL,
  `obs` longtext DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `armario_id` int(11) DEFAULT NULL,
  `bancada_id` int(11) DEFAULT NULL,
  `estante_id` int(11) DEFAULT NULL,
  `gaveta_id` int(11) DEFAULT NULL,
  `marca_id` int(11) NOT NULL,
  `prateleira_id` int(11) DEFAULT NULL,
  `sala_id` int(11) NOT NULL,
  `unidade_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  KEY `sisnlab_reagente_armario_id_b9c146b0_fk_sisnlab_armario_id` (`armario_id`),
  KEY `sisnlab_reagente_bancada_id_29192e9c_fk_sisnlab_bancada_id` (`bancada_id`),
  KEY `sisnlab_reagente_estante_id_e969c71c_fk_sisnlab_estante_id` (`estante_id`),
  KEY `sisnlab_reagente_gaveta_id_8625e89d_fk_sisnlab_gaveta_id` (`gaveta_id`),
  KEY `sisnlab_reagente_marca_id_549386dc_fk_sisnlab_marca_id` (`marca_id`),
  KEY `sisnlab_reagente_prateleira_id_ad41427a_fk_sisnlab_prateleira_id` (`prateleira_id`),
  KEY `sisnlab_reagente_sala_id_04eef050_fk_sisnlab_sala_id` (`sala_id`),
  KEY `sisnlab_reagente_unidade_id_422640f6_fk_sisnlab_unidade_id` (`unidade_id`),
  KEY `sisnlab_reagente_usuario_id_be914495_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_reagente_armario_id_b9c146b0_fk_sisnlab_armario_id` FOREIGN KEY (`armario_id`) REFERENCES `sisnlab_armario` (`id`),
  CONSTRAINT `sisnlab_reagente_bancada_id_29192e9c_fk_sisnlab_bancada_id` FOREIGN KEY (`bancada_id`) REFERENCES `sisnlab_bancada` (`id`),
  CONSTRAINT `sisnlab_reagente_estante_id_e969c71c_fk_sisnlab_estante_id` FOREIGN KEY (`estante_id`) REFERENCES `sisnlab_estante` (`id`),
  CONSTRAINT `sisnlab_reagente_gaveta_id_8625e89d_fk_sisnlab_gaveta_id` FOREIGN KEY (`gaveta_id`) REFERENCES `sisnlab_gaveta` (`id`),
  CONSTRAINT `sisnlab_reagente_marca_id_549386dc_fk_sisnlab_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `sisnlab_marca` (`id`),
  CONSTRAINT `sisnlab_reagente_prateleira_id_ad41427a_fk_sisnlab_prateleira_id` FOREIGN KEY (`prateleira_id`) REFERENCES `sisnlab_prateleira` (`id`),
  CONSTRAINT `sisnlab_reagente_sala_id_04eef050_fk_sisnlab_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `sisnlab_sala` (`id`),
  CONSTRAINT `sisnlab_reagente_unidade_id_422640f6_fk_sisnlab_unidade_id` FOREIGN KEY (`unidade_id`) REFERENCES `sisnlab_unidade` (`id`),
  CONSTRAINT `sisnlab_reagente_usuario_id_be914495_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_reagente: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_reagente` DISABLE KEYS */;
REPLACE INTO `sisnlab_reagente` (`id`, `nome`, `formula_q`, `grau_p`, `quantidade`, `data_validade`, `controle_pfex`, `ficha_tec`, `massamolecular`, `densidade`, `disponibilidade`, `obs`, `foto`, `armario_id`, `bancada_id`, `estante_id`, `gaveta_id`, `marca_id`, `prateleira_id`, `sala_id`, `unidade_id`, `usuario_id`) VALUES
	(1, 'Cloreto de cálcio 25 gr', '', NULL, 7060.00, '2020-09-25 01:47:09.000000', NULL, '', NULL, NULL, '', '', '', NULL, 1, NULL, NULL, 2, NULL, 1, 3, 1),
	(2, 'Sulfito de sódio 25 gr', '', NULL, 7000.00, '2020-09-25 01:47:45.000000', NULL, '', NULL, NULL, '', '', '', 3, NULL, NULL, NULL, 2, NULL, 1, 1, 1),
	(3, 'Acido sulfônico', '', NULL, 7000.00, '2020-09-25 01:49:23.000000', NULL, '', NULL, NULL, '', '', '', NULL, 1, NULL, NULL, 2, NULL, 1, 1, 1),
	(4, 'Cloreto de alumínio', '', NULL, 7000.00, '2020-09-25 01:49:52.000000', NULL, '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, 2, 1, 1, 1, 1),
	(5, 'Papel Toalha', '', NULL, 50.00, '2020-09-25 01:51:10.000000', NULL, '', NULL, NULL, '', '', '', NULL, 1, NULL, NULL, 1, NULL, 1, 4, 1),
	(6, 'Balão de Destilação', '', NULL, 10.00, '2020-09-25 01:52:36.000000', NULL, '', NULL, NULL, '', '', 'images/balão_de_destilação.jpg', NULL, 1, NULL, NULL, 2, NULL, 1, 5, 1),
	(7, 'Balao de fundo chato', '', NULL, 5.00, '2020-09-25 01:53:14.000000', NULL, '', NULL, NULL, '', '', 'images/vidrariabalaodefundochat-cke_O7Z44J2.jpg', NULL, NULL, NULL, NULL, 2, NULL, 1, 5, 1);
/*!40000 ALTER TABLE `sisnlab_reagente` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_saida
CREATE TABLE IF NOT EXISTS `sisnlab_saida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nf` int(10) unsigned DEFAULT NULL CHECK (`nf` >= 0),
  `data_cadastro` datetime(6) NOT NULL,
  `nf_foto` varchar(100) DEFAULT NULL,
  `obs` longtext NOT NULL,
  `destinatario_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_saida_destinatario_id_4db21fef_fk_sisnlab_d` (`destinatario_id`),
  KEY `sisnlab_saida_usuario_id_cb6046ac_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_saida_destinatario_id_4db21fef_fk_sisnlab_d` FOREIGN KEY (`destinatario_id`) REFERENCES `sisnlab_destinatario` (`id`),
  CONSTRAINT `sisnlab_saida_usuario_id_cb6046ac_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_saida: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_saida` DISABLE KEYS */;
REPLACE INTO `sisnlab_saida` (`id`, `nf`, `data_cadastro`, `nf_foto`, `obs`, `destinatario_id`, `usuario_id`) VALUES
	(1, 76555, '2020-09-28 15:34:17.000000', '', '', 1, 1),
	(2, 76555, '2020-09-28 15:34:17.000000', '', '', 1, 1),
	(3, 76555, '2020-09-28 15:34:17.000000', '', '', 1, 1),
	(4, 1, '2020-09-28 15:46:56.000000', '', '', 1, 1),
	(5, 76, '2020-09-28 15:56:58.000000', '', '', 1, 1);
/*!40000 ALTER TABLE `sisnlab_saida` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_sala
CREATE TABLE IF NOT EXISTS `sisnlab_sala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `obs` longtext NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  KEY `sisnlab_sala_usuario_id_20283b2f_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_sala_usuario_id_20283b2f_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_sala: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_sala` DISABLE KEYS */;
REPLACE INTO `sisnlab_sala` (`id`, `nome`, `obs`, `usuario_id`) VALUES
	(1, 'Laborátório 01', '', 1),
	(2, 'Laborátório 02', '', 1),
	(3, 'Laborátório 03', '', 1);
/*!40000 ALTER TABLE `sisnlab_sala` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_solucao
CREATE TABLE IF NOT EXISTS `sisnlab_solucao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `obs` longtext NOT NULL,
  `armario_id` int(11) DEFAULT NULL,
  `bancada_id` int(11) DEFAULT NULL,
  `estante_id` int(11) DEFAULT NULL,
  `gaveta_id` int(11) DEFAULT NULL,
  `prateleira_id` int(11) DEFAULT NULL,
  `sala_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_solucao_armario_id_490adf1e_fk_sisnlab_armario_id` (`armario_id`),
  KEY `sisnlab_solucao_bancada_id_c15bb0a4_fk_sisnlab_bancada_id` (`bancada_id`),
  KEY `sisnlab_solucao_estante_id_444d2f03_fk_sisnlab_estante_id` (`estante_id`),
  KEY `sisnlab_solucao_gaveta_id_90ab8891_fk_sisnlab_gaveta_id` (`gaveta_id`),
  KEY `sisnlab_solucao_prateleira_id_27b9dd95_fk_sisnlab_prateleira_id` (`prateleira_id`),
  KEY `sisnlab_solucao_sala_id_97a50af1_fk_sisnlab_sala_id` (`sala_id`),
  KEY `sisnlab_solucao_usuario_id_91fa2d22_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_solucao_armario_id_490adf1e_fk_sisnlab_armario_id` FOREIGN KEY (`armario_id`) REFERENCES `sisnlab_armario` (`id`),
  CONSTRAINT `sisnlab_solucao_bancada_id_c15bb0a4_fk_sisnlab_bancada_id` FOREIGN KEY (`bancada_id`) REFERENCES `sisnlab_bancada` (`id`),
  CONSTRAINT `sisnlab_solucao_estante_id_444d2f03_fk_sisnlab_estante_id` FOREIGN KEY (`estante_id`) REFERENCES `sisnlab_estante` (`id`),
  CONSTRAINT `sisnlab_solucao_gaveta_id_90ab8891_fk_sisnlab_gaveta_id` FOREIGN KEY (`gaveta_id`) REFERENCES `sisnlab_gaveta` (`id`),
  CONSTRAINT `sisnlab_solucao_prateleira_id_27b9dd95_fk_sisnlab_prateleira_id` FOREIGN KEY (`prateleira_id`) REFERENCES `sisnlab_prateleira` (`id`),
  CONSTRAINT `sisnlab_solucao_sala_id_97a50af1_fk_sisnlab_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `sisnlab_sala` (`id`),
  CONSTRAINT `sisnlab_solucao_usuario_id_91fa2d22_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_solucao: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_solucao` DISABLE KEYS */;
REPLACE INTO `sisnlab_solucao` (`id`, `nome`, `obs`, `armario_id`, `bancada_id`, `estante_id`, `gaveta_id`, `prateleira_id`, `sala_id`, `usuario_id`) VALUES
	(1, 'Alessandro Souza Silva', '', 2, 1, NULL, NULL, NULL, 1, 1),
	(2, 'Aula teste', '', 3, NULL, NULL, NULL, NULL, 2, 1);
/*!40000 ALTER TABLE `sisnlab_solucao` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_solucaoaulapratica
CREATE TABLE IF NOT EXISTS `sisnlab_solucaoaulapratica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aulapratica_id` int(11) DEFAULT NULL,
  `quant_solucao` decimal(9,2) DEFAULT NULL,
  `solucao_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_solucaoaulap_solucao_id_827d14f2_fk_sisnlab_s` (`solucao_id`),
  KEY `sisnlab_solucaoaulapratica_usuario_id_014b285e_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_solucaoaulap_solucao_id_827d14f2_fk_sisnlab_s` FOREIGN KEY (`solucao_id`) REFERENCES `sisnlab_solucao` (`id`),
  CONSTRAINT `sisnlab_solucaoaulapratica_usuario_id_014b285e_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_solucaoaulapratica: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_solucaoaulapratica` DISABLE KEYS */;
REPLACE INTO `sisnlab_solucaoaulapratica` (`id`, `aulapratica_id`, `quant_solucao`, `solucao_id`, `usuario_id`) VALUES
	(1, 6, 3.00, 2, 1),
	(2, 6, 6.00, 1, 1);
/*!40000 ALTER TABLE `sisnlab_solucaoaulapratica` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_tombo
CREATE TABLE IF NOT EXISTS `sisnlab_tombo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(6) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero` (`numero`),
  KEY `sisnlab_tombo_usuario_id_a4dd434b_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_tombo_usuario_id_a4dd434b_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_tombo: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_tombo` DISABLE KEYS */;
REPLACE INTO `sisnlab_tombo` (`id`, `numero`, `descricao`, `usuario_id`) VALUES
	(1, '111111', 'Armário de Madeira', 1),
	(2, '222222', 'Bancada dupla', 1),
	(3, '123333', 'Monitor de PC', 1),
	(4, '234335', 'Armário de Madeira', 1),
	(5, '333333', 'Bancada', 1);
/*!40000 ALTER TABLE `sisnlab_tombo` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_unidade
CREATE TABLE IF NOT EXISTS `sisnlab_unidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `obs` longtext DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  KEY `sisnlab_unidade_usuario_id_9fd117ac_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_unidade_usuario_id_9fd117ac_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_unidade: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_unidade` DISABLE KEYS */;
REPLACE INTO `sisnlab_unidade` (`id`, `nome`, `obs`, `usuario_id`) VALUES
	(1, 'ml', '', 1),
	(2, 'GM - Grama', '', 1),
	(3, 'kg - Kilograma', '', 1),
	(4, 'PC - Pacote', '', 1),
	(5, 'Unidade', '', 1);
/*!40000 ALTER TABLE `sisnlab_unidade` ENABLE KEYS */;

-- Copiando estrutura para tabela nlab.sisnlab_vidraria
CREATE TABLE IF NOT EXISTS `sisnlab_vidraria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `data_compra` datetime(6) NOT NULL,
  `origem` varchar(100) DEFAULT NULL,
  `ficha_tec` varchar(100) DEFAULT NULL,
  `especficacao_t` longtext NOT NULL,
  `quantidade` int(10) unsigned NOT NULL CHECK (`quantidade` >= 0),
  `obs` longtext NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `armario_id` int(11) DEFAULT NULL,
  `bancada_id` int(11) DEFAULT NULL,
  `estante_id` int(11) DEFAULT NULL,
  `gaveta_id` int(11) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `prateleira_id` int(11) DEFAULT NULL,
  `sala_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sisnlab_vidraria_armario_id_9d9e2f3f_fk_sisnlab_armario_id` (`armario_id`),
  KEY `sisnlab_vidraria_bancada_id_42a47e82_fk_sisnlab_bancada_id` (`bancada_id`),
  KEY `sisnlab_vidraria_estante_id_ed0fa1bd_fk_sisnlab_estante_id` (`estante_id`),
  KEY `sisnlab_vidraria_gaveta_id_49009506_fk_sisnlab_gaveta_id` (`gaveta_id`),
  KEY `sisnlab_vidraria_marca_id_1769f2ae_fk_sisnlab_marca_id` (`marca_id`),
  KEY `sisnlab_vidraria_prateleira_id_94b903f7_fk_sisnlab_prateleira_id` (`prateleira_id`),
  KEY `sisnlab_vidraria_sala_id_f3f0f1a1_fk_sisnlab_sala_id` (`sala_id`),
  KEY `sisnlab_vidraria_usuario_id_65d9314b_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `sisnlab_vidraria_armario_id_9d9e2f3f_fk_sisnlab_armario_id` FOREIGN KEY (`armario_id`) REFERENCES `sisnlab_armario` (`id`),
  CONSTRAINT `sisnlab_vidraria_bancada_id_42a47e82_fk_sisnlab_bancada_id` FOREIGN KEY (`bancada_id`) REFERENCES `sisnlab_bancada` (`id`),
  CONSTRAINT `sisnlab_vidraria_estante_id_ed0fa1bd_fk_sisnlab_estante_id` FOREIGN KEY (`estante_id`) REFERENCES `sisnlab_estante` (`id`),
  CONSTRAINT `sisnlab_vidraria_gaveta_id_49009506_fk_sisnlab_gaveta_id` FOREIGN KEY (`gaveta_id`) REFERENCES `sisnlab_gaveta` (`id`),
  CONSTRAINT `sisnlab_vidraria_marca_id_1769f2ae_fk_sisnlab_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `sisnlab_marca` (`id`),
  CONSTRAINT `sisnlab_vidraria_prateleira_id_94b903f7_fk_sisnlab_prateleira_id` FOREIGN KEY (`prateleira_id`) REFERENCES `sisnlab_prateleira` (`id`),
  CONSTRAINT `sisnlab_vidraria_sala_id_f3f0f1a1_fk_sisnlab_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `sisnlab_sala` (`id`),
  CONSTRAINT `sisnlab_vidraria_usuario_id_65d9314b_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela nlab.sisnlab_vidraria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sisnlab_vidraria` DISABLE KEYS */;
/*!40000 ALTER TABLE `sisnlab_vidraria` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
