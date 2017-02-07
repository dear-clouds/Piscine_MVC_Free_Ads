-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 21 Septembre 2014 à 13:23
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `freeads`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE IF NOT EXISTS `annonces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `departement` int(11) NOT NULL,
  `categorie` varchar(62) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Contenu de la table `annonces`
--

INSERT INTO `annonces` (`id`, `user_id`, `title`, `description`, `photo`, `price`, `created_at`, `updated_at`, `deleted_at`, `username`, `departement`, `categorie`) VALUES
(1, 1, 'A vendre d''urgence!!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus neque imperdiet odio ultricies vestibulum. Vestibulum id diam semper, varius mauris sollicitudin, vestibulum lacus. Donec vitae pharetra lorem. Duis ut magna tempor, commodo dolor eget, suscipit libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis efficitur nulla ut dolor rutrum, nec dictum sapien efficitur.', 'img/3.jpg', '12', '2014-09-16 15:43:39', '2014-09-16 15:43:39', NULL, 'ReddoWan', 0, 'meubles'),
(2, 1, 'Vends robes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus neque imperdiet odio ultricies vestibulum. Vestibulum id diam semper, varius mauris sollicitudin, vestibulum lacus. Donec vitae pharetra lorem. Duis ut magna tempor, commodo dolor eget, suscipit libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis efficitur nulla ut dolor rutrum, nec dictum sapien efficitur.', 'img/4.jpg', '65', '2014-09-16 15:46:57', '2014-09-16 15:46:57', NULL, 'ReddoWan', 0, 'vetements'),
(3, 1, 'Recherche', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus neque imperdiet odio ultricies vestibulum. Vestibulum id diam semper, varius mauris sollicitudin, vestibulum lacus. Donec vitae pharetra lorem. Duis ut magna tempor, commodo dolor eget, suscipit libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis efficitur nulla ut dolor rutrum, nec dictum sapien efficitur.', 'img/6.jpg', '0,1', '2014-09-17 05:24:09', '2014-09-17 05:24:09', NULL, 'ReddoWan', 0, 'maison'),
(4, 1, 'Salut, je vends des jeux ^^', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus neque imperdiet odio ultricies vestibulum. Vestibulum id diam semper, varius mauris sollicitudin, vestibulum lacus. Donec vitae pharetra lorem. Duis ut magna tempor, commodo dolor eget, suscipit libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis efficitur nulla ut dolor rutrum, nec dictum sapien efficitur.', 'img/7.jpg', '600', '2014-09-17 06:57:16', '2014-09-17 06:57:16', NULL, 'ReddoWan', 92140, 'games'),
(5, 1, 'Des livres ! Plein~', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus neque imperdiet odio ultricies vestibulum. Vestibulum id diam semper, varius mauris sollicitudin, vestibulum lacus. Donec vitae pharetra lorem. Duis ut magna tempor, commodo dolor eget, suscipit libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis efficitur nulla ut dolor rutrum, nec dictum sapien efficitur.', 'img/8.png', '50', '2014-09-17 11:31:07', '2014-09-17 11:31:07', NULL, 'ReddoWan', 92140, 'litterature'),
(6, 1, 'Ordi jamais utilisé', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus neque imperdiet odio ultricies vestibulum. Vestibulum id diam semper, varius mauris sollicitudin, vestibulum lacus. Donec vitae pharetra lorem. Duis ut magna tempor, commodo dolor eget, suscipit libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis efficitur nulla ut dolor rutrum, nec dictum sapien efficitur.', 'img/9.jpg', '800', '2014-09-17 11:32:35', '2014-09-19 08:05:26', NULL, 'ReddoWan', 92140, 'electronique'),
(8, 1, 'Des vieux jeans!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus neque imperdiet odio ultricies vestibulum. Vestibulum id diam semper, varius mauris sollicitudin, vestibulum lacus. Donec vitae pharetra lorem. Duis ut magna tempor, commodo dolor eget, suscipit libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis efficitur nulla ut dolor rutrum, nec dictum sapien efficitur.', 'img/5.jpg', '600', '2014-09-17 11:35:59', '2014-09-17 11:35:59', NULL, 'ReddoWan', 92140, 'vetements'),
(9, 7, 'Cool stuff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus neque imperdiet odio ultricies vestibulum. Vestibulum id diam semper, varius mauris sollicitudin, vestibulum lacus. Donec vitae pharetra lorem. Duis ut magna tempor, commodo dolor eget, suscipit libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis efficitur nulla ut dolor rutrum, nec dictum sapien efficitur.', 'img/2.jpg', '28', '2014-09-20 10:39:31', '2014-09-20 10:39:31', NULL, 'Patate', 75020, 'maison');

-- --------------------------------------------------------

--
-- Structure de la table `conversations`
--

CREATE TABLE IF NOT EXISTS `conversations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` text COLLATE utf8_unicode_ci NOT NULL,
  `recever` text COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `sender`, `recever`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Patate', 'ReddoWan', 'Salut!', 'Bonjour,\r\n\r\nJ''ai un problème avec une annonce, pouvez-vous jeter un coup d''oeil ?\r\n\r\nMerci.', '2014-09-20 13:55:54', '2014-09-20 13:55:54');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_09_15_085018_create_users_table', 1),
('2014_09_16_092826_create_annonces_table', 2),
('2014_09_20_125949_create_conversations_table', 3),
('2014_09_20_130050_create_participants_table', 3),
('2014_09_20_130101_create_messages_table', 3),
('2014_09_20_153245_create_messages_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `participants`
--

CREATE TABLE IF NOT EXISTS `participants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_read` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `participants_conversation_id_foreign` (`conversation_id`),
  KEY `participants_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'membre',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` int(11) NOT NULL DEFAULT '0',
  `code` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `departement` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `lastname`, `birthdate`, `email`, `role`, `remember_token`, `created_at`, `updated_at`, `active`, `code`, `departement`) VALUES
(1, 'ReddoWan', '$2y$10$IOh9sixzsPcHJdsBGR1vPOcTWGlltP4mHplqI6w17Es4oQ7afkEca', 'Reddo', 'Wan', '1990-12-18', 'reddowan@mail.fr', 'administrateur', 'evSvKEDcYUqd4qUKADrea3bZyM0DwQBk7FNXCGXyIAiyfX0XqjlPdiUQlQO2', '2014-09-16 05:42:03', '2014-09-20 10:38:49', 1, '', 92140),
(2, 'Kamen Rider', '$2y$10$IOh9sixzsPcHJdsBGR1vPOcTWGlltP4mHplqI6w17Es4oQ7afkEca', '', '', '0000-00-00', 'kamenrider@mail.fr', 'administrateur', 'oBlZoe592Z6mflHQ6GLr6wVEPn8Hqvrhap67zm8OrefjwYF3K9FkFU4XF2gp', '2014-09-16 05:44:27', '2014-09-16 06:44:08', 1, '', 94270),
(7, 'Patate', '$2y$10$l.JP4wXnDKg.OtEzPQVjTem6wUMIuHA..9TX.uWteNX4h.LRHK9QC', '', '', '0000-00-00', 'bluewatermelon@free.fr', 'membre', 'YU665bsWEhBPVUYEPRPNfePB8EPz4K0NJ6LG7f0hXEPVH1PLmTnPhg6naOd0', '2014-09-16 07:19:23', '2014-09-20 13:56:26', 1, '', 75020);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`),
  ADD CONSTRAINT `participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
