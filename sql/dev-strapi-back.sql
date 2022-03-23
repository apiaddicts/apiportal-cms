-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 05:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev-strapi-back`
--

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_badgets`
--

CREATE TABLE `components_elements_badgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_elements_badgets`
--

INSERT INTO `components_elements_badgets` (`id`, `title`) VALUES
(1, 'Vida'),
(2, 'Salud'),
(3, NULL),
(4, 'Vida'),
(5, 'Vida'),
(6, 'Salud'),
(7, NULL),
(8, 'Vida'),
(9, 'Vida'),
(10, 'Salud'),
(12, 'Vida'),
(13, 'Salud'),
(15, 'Vida'),
(17, 'Vida');

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_columns`
--

CREATE TABLE `components_elements_columns` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_features`
--

CREATE TABLE `components_elements_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_elements_features`
--

INSERT INTO `components_elements_features` (`id`, `name`) VALUES
(1, 'A cool feature'),
(2, 'Another cool feature'),
(3, 'Some other cool feature'),
(4, 'The coolest feature'),
(5, 'Nice feature'),
(6, 'Fun feature'),
(7, 'Amazing feature'),
(8, 'Wow effect feature'),
(9, 'Mesmerizing feature');

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_logos`
--

CREATE TABLE `components_elements_logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_elements_logos`
--

INSERT INTO `components_elements_logos` (`id`, `title`) VALUES
(1, 'Strapi'),
(2, 'Strapi 2'),
(3, 'Strapi 3');

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_logos_components`
--

CREATE TABLE `components_elements_logos_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_elements_logo_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_main_heroes`
--

CREATE TABLE `components_elements_main_heroes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_elements_main_heroes`
--

INSERT INTO `components_elements_main_heroes` (`id`, `title`, `keyword`) VALUES
(1, '¡Toda la potencia de una aseguradora en', ' APIs!'),
(2, 'Líderes en seguros ', 'as a services');

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_navbar_columns`
--

CREATE TABLE `components_elements_navbar_columns` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `drop` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_navbar_columns_components`
--

CREATE TABLE `components_elements_navbar_columns_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_elements_navbar_column_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_navbar_section`
--

CREATE TABLE `components_elements_navbar_section` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `drop` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_elements_navbar_section`
--

INSERT INTO `components_elements_navbar_section` (`id`, `title`, `drop`) VALUES
(1, 'Products', 1),
(2, 'Use cases', 0),
(3, 'API Docs', 0),
(4, 'FAQs', 0);

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_navbar_sections`
--

CREATE TABLE `components_elements_navbar_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_navbar_sections_components`
--

CREATE TABLE `components_elements_navbar_sections_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_elements_navbar_section_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_navbar_section_components`
--

CREATE TABLE `components_elements_navbar_section_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_elements_navbar_section_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_elements_navbar_section_components`
--

INSERT INTO `components_elements_navbar_section_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_elements_navbar_section_id`) VALUES
(1, 'links', 1, 'components_links_links', 17, 1),
(2, 'links', 2, 'components_links_links', 18, 1),
(3, 'links', 3, 'components_links_links', 19, 1),
(4, 'links', 4, 'components_links_links', 20, 1),
(5, 'links', 5, 'components_links_links', 21, 1),
(6, 'links', 6, 'components_links_links', 22, 1),
(7, 'links', 1, 'components_links_links', 23, 3),
(8, 'links', 2, 'components_links_links', 24, 3),
(9, 'links', 3, 'components_links_links', 25, 3);

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_notification_banners`
--

CREATE TABLE `components_elements_notification_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_elements_notification_banners`
--

INSERT INTO `components_elements_notification_banners` (`id`, `text`, `type`) VALUES
(1, 'This page was built using the Strapi starter for Corporate Sites.\n[View other Strapi starters](https://strapi.io/starters)', 'info');

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_plans`
--

CREATE TABLE `components_elements_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `isRecommended` tinyint(1) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pricePeriod` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_elements_plans`
--

INSERT INTO `components_elements_plans` (`id`, `name`, `description`, `isRecommended`, `price`, `pricePeriod`) VALUES
(1, 'Hobby', 'Perfect for side projects', NULL, '0.00', 'forever'),
(2, 'Premium', 'A more advanced plan for SMBs', 1, '20.00', 'per month'),
(3, 'Enterprise', 'For large companies needs', NULL, '299.00', 'per month');

-- --------------------------------------------------------

--
-- Table structure for table `components_elements_plans_components`
--

CREATE TABLE `components_elements_plans_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_elements_plan_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_elements_plans_components`
--

INSERT INTO `components_elements_plans_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_elements_plan_id`) VALUES
(1, 'features', 1, 'components_elements_features', 1, 1),
(2, 'features', 2, 'components_elements_features', 2, 1),
(3, 'features', 3, 'components_elements_features', 3, 1),
(4, 'features', 1, 'components_elements_features', 4, 2),
(5, 'features', 2, 'components_elements_features', 5, 2),
(6, 'features', 3, 'components_elements_features', 6, 2),
(7, 'features', 1, 'components_elements_features', 7, 3),
(8, 'features', 2, 'components_elements_features', 8, 3),
(9, 'features', 3, 'components_elements_features', 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `components_layout_footers`
--

CREATE TABLE `components_layout_footers` (
  `id` int(10) UNSIGNED NOT NULL,
  `smallText` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_layout_footers`
--

INSERT INTO `components_layout_footers` (`id`, `smallText`) VALUES
(1, '© 2021 RIMAC Seguros y Reaseguros');

-- --------------------------------------------------------

--
-- Table structure for table `components_layout_footers_components`
--

CREATE TABLE `components_layout_footers_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_layout_footer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_layout_footers_components`
--

INSERT INTO `components_layout_footers_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_layout_footer_id`) VALUES
(1, 'columns', 1, 'components_links_footer_sections', 1, 1),
(2, 'columns', 2, 'components_links_footer_sections', 2, 1),
(3, 'columns', 3, 'components_links_footer_sections', 3, 1),
(4, 'columns', 4, 'components_links_footer_sections', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_layout_navbars`
--

CREATE TABLE `components_layout_navbars` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_layout_navbars`
--

INSERT INTO `components_layout_navbars` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `components_layout_navbars_components`
--

CREATE TABLE `components_layout_navbars_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_layout_navbar_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_layout_navbars_components`
--

INSERT INTO `components_layout_navbars_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_layout_navbar_id`) VALUES
(1, 'links', 1, 'components_links_links', 1, 1),
(2, 'links', 2, 'components_links_links', 2, 1),
(3, 'button', 1, 'components_links_buttons', 1, 1),
(4, 'navbarColumns', 2, 'components_elements_navbar_section', 2, 1),
(5, 'navbarColumns', 3, 'components_elements_navbar_section', 3, 1),
(6, 'navbarColumns', 1, 'components_elements_navbar_section', 1, 1),
(7, 'navbarColumns', 4, 'components_elements_navbar_section', 4, 1),
(8, 'navbarColumns', 5, 'components_elements_navbar_section', 5, 1),
(9, 'button', 2, 'components_links_buttons', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_layout_navbar_extendeds`
--

CREATE TABLE `components_layout_navbar_extendeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `components_layout_navbar_extendeds_components`
--

CREATE TABLE `components_layout_navbar_extendeds_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_layout_navbar_extended_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `components_links_buttons`
--

CREATE TABLE `components_links_buttons` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `newTab` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_links_buttons`
--

INSERT INTO `components_links_buttons` (`id`, `url`, `newTab`, `text`, `type`) VALUES
(1, '/iniciarsesion', 1, ' INICIAR SESIÓN', 'secondary'),
(2, 'https://github.com/strapi/strapi-template-corporate', 1, 'EMPIEZA AHORA', 'primary'),
(3, 'https://github.com/strapi/strapi-template-corporate', 1, '¿CÓMO FUNCIONA?', 'secondary'),
(4, 'https://github.com/strapi/strapi-template-corporate', 0, 'CONECTATE', 'primary'),
(6, '#', 0, 'Send an email', 'primary'),
(7, '#', 0, 'DM us on Twitter', 'secondary'),
(8, '/registrate', 1, 'REGÍSTRATE', 'primary');

-- --------------------------------------------------------

--
-- Table structure for table `components_links_footer_sections`
--

CREATE TABLE `components_links_footer_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `enlace` varchar(255) DEFAULT NULL,
  `drop` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_links_footer_sections`
--

INSERT INTO `components_links_footer_sections` (`id`, `title`, `enlace`, `drop`) VALUES
(1, 'API MARKET', NULL, NULL),
(2, 'DOCUMENTACIÓN', NULL, NULL),
(3, 'RIMACTECH', NULL, NULL),
(4, '¡ESTAMOS PARA AYUDARTE!', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_links_footer_sections_components`
--

CREATE TABLE `components_links_footer_sections_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_links_footer_section_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_links_footer_sections_components`
--

INSERT INTO `components_links_footer_sections_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_links_footer_section_id`) VALUES
(1, 'links', 1, 'components_links_links', 3, 1),
(2, 'links', 2, 'components_links_links', 4, 1),
(3, 'links', 1, 'components_links_links', 5, 2),
(4, 'links', 2, 'components_links_links', 6, 2),
(5, 'links', 1, 'components_links_links', 7, 3),
(6, 'links', 2, 'components_links_links', 8, 3),
(7, 'links', 1, 'components_links_links', 9, 4),
(8, 'links', 2, 'components_links_links', 10, 4),
(12, 'links', 3, 'components_links_links', 26, 2),
(13, 'links', 3, 'components_links_links', 27, 3),
(14, 'links', 3, 'components_links_links', 28, 4);

-- --------------------------------------------------------

--
-- Table structure for table `components_links_links`
--

CREATE TABLE `components_links_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `newTab` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_links_links`
--

INSERT INTO `components_links_links` (`id`, `url`, `newTab`, `text`, `title`, `color`) VALUES
(1, '/pricing', 0, 'Pricing', NULL, NULL),
(2, '/contact', 0, 'Contact', NULL, NULL),
(3, '/Soluciones', 0, 'Features', 'Soluciones', NULL),
(4, '/BibliotecaAPIs', 0, 'Sign up', 'Biblioteca de APIs', NULL),
(5, '/GuiaDesarrolladores', 0, 'Privacy policy', 'Guía para desarrolladores', NULL),
(6, '/DocumentacionAPIs', 0, 'Terms & conditions', 'Documentación de APIs', NULL),
(7, '/Desarrolladores', 0, 'Careers', 'Desarrolladores', NULL),
(8, '/APIs', 0, 'Team', 'APIs', NULL),
(9, '/Contacta', 0, 'Twitter', 'Contacta', NULL),
(10, '/Correo', 0, 'LinkedIn', 'contacto@example.com', NULL),
(11, '#', 0, 'All testimonials', NULL, NULL),
(12, '#', 0, 'View the list of UI sections', NULL, NULL),
(13, '#', 0, 'View how to create a page', NULL, NULL),
(17, '/Soluciones', 0, NULL, 'Soluciones', NULL),
(18, '/Banca', 0, NULL, 'Banca', NULL),
(19, '/Telco', 0, NULL, 'Telco', NULL),
(20, '/Retail', 0, NULL, 'Retail', NULL),
(21, '/Flotas', 0, NULL, 'Flotas', NULL),
(22, '/Empresas', 0, NULL, 'Empresas', NULL),
(23, '/GuiaDesarrolladores', 0, NULL, 'Guía desarrolladores', NULL),
(24, '/DocumentacionAPIs', 0, NULL, 'Documentación de APIs', NULL),
(25, '/PreguntasFrecuentes', 0, NULL, 'Preguntas Frecuentes', NULL),
(26, '/PreguntasFrecuentes', 0, NULL, 'Preguntas Frecuentes', NULL),
(27, '/Empresas', 0, NULL, 'Empresas', NULL),
(28, '/Telefono', 0, NULL, '+34 000 000 000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_links_simple_buttons`
--

CREATE TABLE `components_links_simple_buttons` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_links_simple_buttons`
--

INSERT INTO `components_links_simple_buttons` (`id`, `text`, `type`) VALUES
(1, 'Subscribe', 'primary');

-- --------------------------------------------------------

--
-- Table structure for table `components_links_sub_links`
--

CREATE TABLE `components_links_sub_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `components_meta_metadata`
--

CREATE TABLE `components_meta_metadata` (
  `id` int(10) UNSIGNED NOT NULL,
  `metaTitle` varchar(255) DEFAULT NULL,
  `metaDescription` longtext DEFAULT NULL,
  `twitterCardType` varchar(255) DEFAULT NULL,
  `twitterUsername` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_meta_metadata`
--

INSERT INTO `components_meta_metadata` (`id`, `metaTitle`, `metaDescription`, `twitterCardType`, `twitterUsername`) VALUES
(1, 'Strapi starter for Corporate Sites', 'Build your corporate site with Strapi', 'summary', 'strapijs'),
(2, 'Strapi corporate site starter', 'Build a fully editable site with Strapi', 'summary', NULL),
(3, 'Contact', 'Get in touch with our team', 'summary', NULL),
(4, 'Secret page', 'Preview-only page', 'summary', NULL),
(5, 'Pricing', 'The different plans', 'summary', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_sections_lead_forms`
--

CREATE TABLE `components_sections_lead_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `emailPlaceholder` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_sections_lead_forms`
--

INSERT INTO `components_sections_lead_forms` (`id`, `title`, `emailPlaceholder`, `location`) VALUES
(1, 'Subscribe To Our Newsletter', 'email@company.com', 'Home Page Bottom');

-- --------------------------------------------------------

--
-- Table structure for table `components_sections_lead_forms_components`
--

CREATE TABLE `components_sections_lead_forms_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_sections_lead_form_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_sections_lead_forms_components`
--

INSERT INTO `components_sections_lead_forms_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_sections_lead_form_id`) VALUES
(1, 'submitButton', 1, 'components_links_simple_buttons', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_sections_pricings`
--

CREATE TABLE `components_sections_pricings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_sections_pricings`
--

INSERT INTO `components_sections_pricings` (`id`, `title`) VALUES
(1, 'Clear pricing table');

-- --------------------------------------------------------

--
-- Table structure for table `components_sections_pricings_components`
--

CREATE TABLE `components_sections_pricings_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_sections_pricing_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_sections_pricings_components`
--

INSERT INTO `components_sections_pricings_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_sections_pricing_id`) VALUES
(1, 'plans', 1, 'components_elements_plans', 1, 1),
(2, 'plans', 2, 'components_elements_plans', 2, 1),
(3, 'plans', 3, 'components_elements_plans', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_sections_rich_texts`
--

CREATE TABLE `components_sections_rich_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_sections_rich_texts`
--

INSERT INTO `components_sections_rich_texts` (`id`, `content`) VALUES
(1, '# Get in touch\n\n> This is an example of a page that relies almost entirely on the RichText section. It\'s useful for blog articles, or content-heavy pages like legal terms.\n\nWe\'d love to hear from you.\n\n## Social media\n\n* [Twitter](#)\n* [Twitter](#)\n* [Twitter](#)\n\n## Postal address\n\n404 Headless Street\n__92210__ **Saint Cloud**, *France*\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(2, '## Secret page\n\nYou can only view this page in Preview Mode.');

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_bottom_actions`
--

CREATE TABLE `components_slices_bottom_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_bottom_actions`
--

INSERT INTO `components_slices_bottom_actions` (`id`, `title`, `keyword`) VALUES
(1, 'Integra tus sistemas con las  ', 'APIS de RIMAC'),
(2, 'Get in touch', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_bottom_actions_components`
--

CREATE TABLE `components_slices_bottom_actions_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_slices_bottom_action_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_bottom_actions_components`
--

INSERT INTO `components_slices_bottom_actions_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_slices_bottom_action_id`) VALUES
(1, 'buttons', 1, 'components_links_buttons', 4, 1),
(3, 'buttons', 1, 'components_links_buttons', 6, 2),
(4, 'buttons', 2, 'components_links_buttons', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_feature_columns`
--

CREATE TABLE `components_slices_feature_columns` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_feature_columns`
--

INSERT INTO `components_slices_feature_columns` (`id`, `title`, `description`) VALUES
(1, ' Regístrate.¡Empieza ahora!', 'Donec pharetra massa a feugiat viv erra. Duis fermentum vesti.'),
(2, '2. Configura y personaliza tus apps', 'Donec pharetra massa a feugiat viv erra. Duis fermentum vesti.'),
(3, '3. Conéctate y disfruta de tus apps', 'Donec pharetra massa a feugiat viv erra. Duis fermentum vesti.');

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_feature_columns_groups`
--

CREATE TABLE `components_slices_feature_columns_groups` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_feature_columns_groups`
--

INSERT INTO `components_slices_feature_columns_groups` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_feature_columns_groups_components`
--

CREATE TABLE `components_slices_feature_columns_groups_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_slices_feature_columns_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_feature_columns_groups_components`
--

INSERT INTO `components_slices_feature_columns_groups_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_slices_feature_columns_group_id`) VALUES
(1, 'features', 1, 'components_slices_feature_columns', 1, 1),
(2, 'features', 2, 'components_slices_feature_columns', 2, 1),
(3, 'features', 3, 'components_slices_feature_columns', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_feature_rows`
--

CREATE TABLE `components_slices_feature_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_feature_rows`
--

INSERT INTO `components_slices_feature_rows` (`id`, `title`, `description`) VALUES
(1, 'Analíticas de negocio', 'Donec pharetra massa a feugiat viverra. Duis fermentum vestibulum elit aliquet.'),
(2, 'Todo tipo de seguros', 'Donec pharetra massa a feugiat viverra. Duis fermentum vestibulum elit aliquet.'),
(3, 'Recursos y documentación para developers', 'Donec pharetra massa a feugiat viverra. Duis fermentum vestibulum elit aliquet. Donec pharetra massa a feugiat viverra. Duis fermentum vestibulum.');

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_feature_rows_components`
--

CREATE TABLE `components_slices_feature_rows_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_slices_feature_row_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_feature_rows_components`
--

INSERT INTO `components_slices_feature_rows_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_slices_feature_row_id`) VALUES
(1, 'link', 1, 'components_links_links', 12, 1),
(2, 'link', 1, 'components_links_links', 13, 2);

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_feature_rows_groups`
--

CREATE TABLE `components_slices_feature_rows_groups` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_feature_rows_groups`
--

INSERT INTO `components_slices_feature_rows_groups` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_feature_rows_groups_components`
--

CREATE TABLE `components_slices_feature_rows_groups_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_slices_feature_rows_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_feature_rows_groups_components`
--

INSERT INTO `components_slices_feature_rows_groups_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_slices_feature_rows_group_id`) VALUES
(1, 'features', 1, 'components_slices_feature_rows', 1, 1),
(2, 'features', 2, 'components_slices_feature_rows', 2, 1),
(3, 'features', 3, 'components_slices_feature_rows', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_heroes`
--

CREATE TABLE `components_slices_heroes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `smallTextWithLink` longtext DEFAULT NULL,
  `hmtl` longtext DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_heroes`
--

INSERT INTO `components_slices_heroes` (`id`, `title`, `label`, `description`, `smallTextWithLink`, `hmtl`, `keyword`) VALUES
(1, '¡Toda la potencia de una aseguradora en', 'as a services', 'Líderes en seguros ', 'Want to build your own from scratch? Tutorial coming soon', '**APIS***italic text*', ' APIs!');

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_heroes_components`
--

CREATE TABLE `components_slices_heroes_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_slices_hero_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_heroes_components`
--

INSERT INTO `components_slices_heroes_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_slices_hero_id`) VALUES
(1, 'buttons', 1, 'components_links_buttons', 2, 1),
(2, 'buttons', 2, 'components_links_buttons', 3, 1),
(3, 'mainHero', 1, 'components_elements_main_heroes', 1, 1),
(4, 'mainHero', 2, 'components_elements_main_heroes', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_large_videos`
--

CREATE TABLE `components_slices_large_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_testimonials`
--

CREATE TABLE `components_slices_testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` longtext DEFAULT NULL,
  `authorName` varchar(255) DEFAULT NULL,
  `authorTitle` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_testimonials`
--

INSERT INTO `components_slices_testimonials` (`id`, `text`, `authorName`, `authorTitle`, `link`, `title`) VALUES
(1, 'Nulla ornare lacus dignissim, dapibus erat sed, eleifend erat. Curabitur vestibulum rhoncus ipsum, ullamcorper rhoncus sapien convallis vel. Sed massa tellus, tincidunt ac elementum vitae, tempor sed leo sed massa tellus.', 'Tallah Cotton Cargo', 'Cargo', '#', 'Nulla ornare lacus dignissim, dapibu erat sed.'),
(2, 'Nulla ornare lacus dignissim, dapibus erat sed, eleifend erat. Curabitur vestibulum rhoncus ipsum, ullamcorper rhoncus sapien convallis vel. Sed massa tellus, tincidunt ac elementum vitae, tempor sed leo sed massa tellus.', 'Tallah Cotton Cargo', 'Cargo', NULL, 'Tallah Cotton Cargo');

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_testimonials_groups`
--

CREATE TABLE `components_slices_testimonials_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_testimonials_groups`
--

INSERT INTO `components_slices_testimonials_groups` (`id`, `title`, `description`) VALUES
(1, 'Your customer testimonials here', 'This section is where you can showcase your customers. Insert quotes, and show the logos of companies who like your product');

-- --------------------------------------------------------

--
-- Table structure for table `components_slices_testimonials_groups_components`
--

CREATE TABLE `components_slices_testimonials_groups_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `components_slices_testimonials_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `components_slices_testimonials_groups_components`
--

INSERT INTO `components_slices_testimonials_groups_components` (`id`, `field`, `order`, `component_type`, `component_id`, `components_slices_testimonials_group_id`) VALUES
(1, 'link', 1, 'components_links_links', 11, 1),
(2, 'logos', 1, 'components_elements_logos', 1, 1),
(3, 'logos', 2, 'components_elements_logos', 2, 1),
(4, 'logos', 3, 'components_elements_logos', 3, 1),
(5, 'testimonials', 1, 'components_slices_testimonials', 1, 1),
(6, 'testimonials', 2, 'components_slices_testimonials', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE `core_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'model_def_strapi::core-store', '{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(2, 'model_def_elements.feature-column', '{\"uid\":\"elements.feature-column\",\"collectionName\":\"components_slices_feature_columns\",\"info\":{\"name\":\"FeatureColumn\",\"icon\":\"align-center\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\"},\"icon\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true}}}', 'object', NULL, NULL),
(3, 'model_def_elements.feature-row', '{\"uid\":\"elements.feature-row\",\"collectionName\":\"components_slices_feature_rows\",\"info\":{\"name\":\"FeatureRow\",\"icon\":\"arrows-alt-h\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\"},\"media\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"videos\"],\"plugin\":\"upload\",\"required\":true},\"link\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"links.link\"}}}', 'object', NULL, NULL),
(4, 'model_def_elements.feature', '{\"uid\":\"elements.feature\",\"collectionName\":\"components_elements_features\",\"info\":{\"name\":\"feature\",\"icon\":\"traffic-light\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(5, 'model_def_elements.footer-section', '{\"uid\":\"elements.footer-section\",\"collectionName\":\"components_links_footer_sections\",\"info\":{\"name\":\"FooterSection\",\"icon\":\"chevron-circle-down\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"links\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"links.link\"},\"drop\":{\"type\":\"boolean\"}}}', 'object', NULL, NULL),
(6, 'model_def_elements.logos', '{\"uid\":\"elements.logos\",\"collectionName\":\"components_elements_logos\",\"info\":{\"name\":\"logos\",\"icon\":\"apple-alt\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"logo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false}}}', 'object', NULL, NULL),
(7, 'model_def_elements.notification-banner', '{\"uid\":\"elements.notification-banner\",\"collectionName\":\"components_elements_notification_banners\",\"info\":{\"name\":\"NotificationBanner\",\"icon\":\"exclamation\"},\"options\":{\"timestamps\":false},\"attributes\":{\"text\":{\"type\":\"richtext\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"alert\",\"info\",\"warning\"],\"required\":true}}}', 'object', NULL, NULL),
(8, 'model_def_elements.plan', '{\"uid\":\"elements.plan\",\"collectionName\":\"components_elements_plans\",\"info\":{\"name\":\"plan\",\"icon\":\"search-dollar\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"features\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"elements.feature\"},\"isRecommended\":{\"type\":\"boolean\"},\"price\":{\"type\":\"decimal\"},\"pricePeriod\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(9, 'model_def_elements.testimonial', '{\"uid\":\"elements.testimonial\",\"collectionName\":\"components_slices_testimonials\",\"info\":{\"name\":\"Testimonial\",\"icon\":\"user-check\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"logo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"picture\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"text\":{\"type\":\"text\"},\"authorName\":{\"type\":\"string\"},\"authorTitle\":{\"type\":\"string\"},\"link\":{\"type\":\"string\"},\"title\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(10, 'model_def_layout.footer', '{\"uid\":\"layout.footer\",\"collectionName\":\"components_layout_footers\",\"info\":{\"name\":\"Footer\",\"icon\":\"caret-square-down\"},\"options\":{\"timestamps\":false},\"attributes\":{\"logo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"columns\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"elements.footer-section\"},\"smallText\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(11, 'model_def_layout.navbar', '{\"uid\":\"layout.navbar\",\"collectionName\":\"components_layout_navbars\",\"info\":{\"name\":\"Navbar\",\"icon\":\"map-signs\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"logo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":true},\"button\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"links.button-link\"},\"navbarColumns\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"elements.navbar-columns\"}}}', 'object', NULL, NULL),
(12, 'model_def_links.button-link', '{\"uid\":\"links.button-link\",\"collectionName\":\"components_links_buttons\",\"info\":{\"name\":\"Button-link\",\"icon\":\"fingerprint\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"url\":{\"type\":\"string\"},\"newTab\":{\"type\":\"boolean\",\"default\":false},\"text\":{\"type\":\"string\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"primary\",\"secondary\"]},\"icon\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false}}}', 'object', NULL, NULL),
(13, 'model_def_links.button', '{\"uid\":\"links.button\",\"collectionName\":\"components_links_simple_buttons\",\"info\":{\"name\":\"Button\",\"icon\":\"fingerprint\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"text\":{\"type\":\"string\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"primary\",\"secondary\"]}}}', 'object', NULL, NULL),
(14, 'model_def_links.link', '{\"uid\":\"links.link\",\"collectionName\":\"components_links_links\",\"info\":{\"name\":\"Link\",\"icon\":\"link\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"url\":{\"type\":\"string\",\"required\":true},\"newTab\":{\"type\":\"boolean\",\"default\":false},\"title\":{\"type\":\"string\",\"required\":false},\"icon\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"color\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(15, 'model_def_meta.metadata', '{\"uid\":\"meta.metadata\",\"collectionName\":\"components_meta_metadata\",\"info\":{\"name\":\"Metadata\",\"icon\":\"robot\"},\"options\":{\"timestamps\":false},\"attributes\":{\"metaTitle\":{\"type\":\"string\",\"required\":true},\"metaDescription\":{\"type\":\"text\",\"required\":true},\"shareImage\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"twitterCardType\":{\"type\":\"enumeration\",\"enum\":[\"summary\",\"summary_large_image\",\"app\",\"player\"],\"default\":\"summary\"},\"twitterUsername\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(16, 'model_def_sections.bottom-actions', '{\"uid\":\"sections.bottom-actions\",\"collectionName\":\"components_slices_bottom_actions\",\"info\":{\"name\":\"BottomActions\",\"icon\":\"angle-double-right\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"buttons\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"links.button-link\"},\"keyword\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(17, 'model_def_sections.feature-columns-group', '{\"uid\":\"sections.feature-columns-group\",\"collectionName\":\"components_slices_feature_columns_groups\",\"info\":{\"name\":\"FeatureColumnsGroup\",\"icon\":\"star-of-life\"},\"options\":{\"timestamps\":false},\"attributes\":{\"features\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"elements.feature-column\"}}}', 'object', NULL, NULL),
(18, 'model_def_sections.feature-rows-group', '{\"uid\":\"sections.feature-rows-group\",\"collectionName\":\"components_slices_feature_rows_groups\",\"info\":{\"name\":\"FeatureRowsGroup\",\"icon\":\"bars\"},\"options\":{\"timestamps\":false},\"attributes\":{\"features\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"elements.feature-row\"}}}', 'object', NULL, NULL),
(19, 'model_def_sections.hero', '{\"uid\":\"sections.hero\",\"collectionName\":\"components_slices_heroes\",\"info\":{\"name\":\"Hero\",\"icon\":\"heading\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"label\":{\"type\":\"string\"},\"description\":{\"type\":\"string\"},\"picture\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"smallTextWithLink\":{\"type\":\"richtext\"},\"buttons\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"links.button-link\"},\"keyword\":{\"type\":\"string\"},\"mainHero\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"elements.main-hero\"}}}', 'object', NULL, NULL),
(20, 'model_def_sections.large-video', '{\"uid\":\"sections.large-video\",\"collectionName\":\"components_slices_large_videos\",\"info\":{\"name\":\"LargeVideo\",\"icon\":\"play-circle\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"description\":{\"type\":\"string\"},\"video\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"videos\"],\"plugin\":\"upload\",\"required\":true},\"poster\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false}}}', 'object', NULL, NULL),
(21, 'model_def_sections.lead-form', '{\"uid\":\"sections.lead-form\",\"collectionName\":\"components_sections_lead_forms\",\"info\":{\"name\":\"Lead form\",\"icon\":\"at\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"emailPlaceholder\":{\"type\":\"string\"},\"submitButton\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"links.button\"},\"location\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(22, 'model_def_sections.pricing', '{\"uid\":\"sections.pricing\",\"collectionName\":\"components_sections_pricings\",\"info\":{\"name\":\"Pricing\",\"icon\":\"dollar-sign\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"plans\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"elements.plan\"}}}', 'object', NULL, NULL),
(23, 'model_def_sections.rich-text', '{\"uid\":\"sections.rich-text\",\"collectionName\":\"components_sections_rich_texts\",\"info\":{\"name\":\"RichText\",\"icon\":\"text-height\"},\"options\":{\"timestamps\":false},\"attributes\":{\"content\":{\"type\":\"richtext\"}}}', 'object', NULL, NULL),
(24, 'model_def_sections.testimonials-group', '{\"uid\":\"sections.testimonials-group\",\"collectionName\":\"components_slices_testimonials_groups\",\"info\":{\"name\":\"TestimonialsGroup\",\"icon\":\"user-friends\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"link\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"links.link\"},\"testimonials\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"elements.testimonial\"}}}', 'object', NULL, NULL),
(25, 'model_def_application::global.global', '{\"uid\":\"application::global.global\",\"collectionName\":\"globals\",\"kind\":\"singleType\",\"info\":{\"name\":\"Global\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"metadata\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"meta.metadata\"},\"metaTitleSuffix\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false},\"notificationBanner\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"elements.notification-banner\"},\"navbar\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"layout.navbar\"},\"footer\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"layout.footer\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(26, 'model_def_application::lead-form-submissions.lead-form-submissions', '{\"uid\":\"application::lead-form-submissions.lead-form-submissions\",\"collectionName\":\"lead_form_submissions\",\"kind\":\"collectionType\",\"info\":{\"name\":\"LeadFormSubmissions\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"email\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"seen\",\"contacted\",\"ignored\"]},\"location\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(27, 'model_def_application::page.page', '{\"uid\":\"application::page.page\",\"collectionName\":\"pages\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"slug\":{\"type\":\"uid\",\"required\":false,\"targetField\":\"shortName\"},\"shortName\":{\"type\":\"string\"},\"metadata\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"meta.metadata\",\"required\":true},\"contentSections\":{\"type\":\"dynamiczone\",\"components\":[\"sections.hero\",\"sections.bottom-actions\",\"sections.feature-columns-group\",\"sections.feature-rows-group\",\"sections.testimonials-group\",\"sections.large-video\",\"sections.rich-text\",\"sections.pricing\",\"sections.lead-form\"]},\"status\":{\"type\":\"enumeration\",\"enum\":[\"published\",\"draft\"],\"default\":\"draft\",\"required\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(28, 'model_def_strapi::webhooks', '{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}', 'object', NULL, NULL),
(29, 'model_def_strapi::permission', '{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}', 'object', NULL, NULL),
(30, 'model_def_strapi::role', '{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}', 'object', NULL, NULL),
(31, 'model_def_strapi::user', '{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}', 'object', NULL, NULL),
(32, 'model_def_plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(33, 'model_def_plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(34, 'model_def_plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(35, 'model_def_plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(36, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', '', ''),
(37, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(38, 'plugin_content_manager_configuration_components::elements.feature-column', '{\"uid\":\"elements.feature-column\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"Icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"icon\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"icon\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(39, 'plugin_content_manager_configuration_components::elements.feature-row', '{\"uid\":\"elements.feature-row\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"media\":{\"edit\":{\"label\":\"Media\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Media\",\"searchable\":false,\"sortable\":false}},\"link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"media\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"media\",\"size\":6}],[{\"name\":\"link\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(40, 'plugin_content_manager_configuration_components::elements.feature', '{\"uid\":\"elements.feature\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(41, 'plugin_content_manager_configuration_components::elements.notification-banner', '{\"uid\":\"elements.notification-banner\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\"],\"edit\":[[{\"name\":\"text\",\"size\":12}],[{\"name\":\"type\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(42, 'plugin_content_manager_configuration_components::layout.footer', '{\"uid\":\"layout.footer\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"smallText\",\"defaultSortBy\":\"smallText\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"logo\":{\"edit\":{\"label\":\"Logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Logo\",\"searchable\":false,\"sortable\":false}},\"columns\":{\"edit\":{\"label\":\"Columns\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Columns\",\"searchable\":false,\"sortable\":false}},\"smallText\":{\"edit\":{\"label\":\"SmallText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SmallText\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"smallText\"],\"edit\":[[{\"name\":\"logo\",\"size\":6}],[{\"name\":\"columns\",\"size\":12}],[{\"name\":\"smallText\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(43, 'plugin_content_manager_configuration_components::layout.navbar', '{\"uid\":\"layout.navbar\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"logo\":{\"edit\":{\"label\":\"Logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Logo\",\"searchable\":false,\"sortable\":false}},\"button\":{\"edit\":{\"label\":\"Button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Button\",\"searchable\":false,\"sortable\":false}},\"navbarColumns\":{\"edit\":{\"label\":\"NavbarColumns\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NavbarColumns\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"logo\"],\"edit\":[[{\"name\":\"logo\",\"size\":6}],[{\"name\":\"button\",\"size\":12}],[{\"name\":\"navbarColumns\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(44, 'plugin_content_manager_configuration_components::elements.footer-section', '{\"uid\":\"elements.footer-section\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"links\":{\"edit\":{\"label\":\"Links\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Links\",\"searchable\":false,\"sortable\":false}},\"drop\":{\"edit\":{\"label\":\"Drop\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Drop\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"drop\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"links\",\"size\":12}],[{\"name\":\"drop\",\"size\":4}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(46, 'plugin_content_manager_configuration_components::elements.plan', '{\"uid\":\"elements.plan\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"features\":{\"edit\":{\"label\":\"Features\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Features\",\"searchable\":false,\"sortable\":false}},\"isRecommended\":{\"edit\":{\"label\":\"IsRecommended\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsRecommended\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"Price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Price\",\"searchable\":true,\"sortable\":true}},\"pricePeriod\":{\"edit\":{\"label\":\"PricePeriod\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PricePeriod\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"isRecommended\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"features\",\"size\":12}],[{\"name\":\"isRecommended\",\"size\":4},{\"name\":\"price\",\"size\":4}],[{\"name\":\"pricePeriod\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(47, 'plugin_content_manager_configuration_components::elements.testimonial', '{\"uid\":\"elements.testimonial\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"authorName\",\"defaultSortBy\":\"authorName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"logo\":{\"edit\":{\"label\":\"Logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Logo\",\"searchable\":false,\"sortable\":false}},\"picture\":{\"edit\":{\"label\":\"Picture\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Picture\",\"searchable\":false,\"sortable\":false}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":true,\"sortable\":true}},\"authorName\":{\"edit\":{\"label\":\"AuthorName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AuthorName\",\"searchable\":true,\"sortable\":true}},\"authorTitle\":{\"edit\":{\"label\":\"AuthorTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AuthorTitle\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"picture\",\"text\"],\"edit\":[[{\"name\":\"logo\",\"size\":6},{\"name\":\"picture\",\"size\":6}],[{\"name\":\"text\",\"size\":6},{\"name\":\"authorName\",\"size\":6}],[{\"name\":\"authorTitle\",\"size\":6},{\"name\":\"link\",\"size\":6}],[{\"name\":\"title\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(48, 'plugin_content_manager_configuration_components::links.button-link', '{\"uid\":\"links.button-link\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"url\",\"defaultSortBy\":\"url\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"newTab\":{\"edit\":{\"label\":\"NewTab\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NewTab\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"Icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"url\",\"newTab\",\"text\"],\"edit\":[[{\"name\":\"url\",\"size\":6},{\"name\":\"newTab\",\"size\":4}],[{\"name\":\"text\",\"size\":6},{\"name\":\"type\",\"size\":6}],[{\"name\":\"icon\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(49, 'plugin_content_manager_configuration_components::links.link', '{\"uid\":\"links.link\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"url\",\"defaultSortBy\":\"url\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"newTab\":{\"edit\":{\"label\":\"NewTab\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NewTab\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"Icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Icon\",\"searchable\":false,\"sortable\":false}},\"color\":{\"edit\":{\"label\":\"Color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Color\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"url\",\"newTab\",\"title\"],\"edit\":[[{\"name\":\"url\",\"size\":6},{\"name\":\"newTab\",\"size\":4}],[{\"name\":\"title\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"color\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(50, 'plugin_content_manager_configuration_components::links.button', '{\"uid\":\"links.button\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"text\",\"defaultSortBy\":\"text\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"text\",\"type\"],\"edit\":[[{\"name\":\"text\",\"size\":6},{\"name\":\"type\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(51, 'plugin_content_manager_configuration_components::meta.metadata', '{\"uid\":\"meta.metadata\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"MetaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MetaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"MetaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MetaDescription\",\"searchable\":true,\"sortable\":true}},\"shareImage\":{\"edit\":{\"label\":\"ShareImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ShareImage\",\"searchable\":false,\"sortable\":false}},\"twitterCardType\":{\"edit\":{\"label\":\"TwitterCardType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TwitterCardType\",\"searchable\":true,\"sortable\":true}},\"twitterUsername\":{\"edit\":{\"label\":\"TwitterUsername\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TwitterUsername\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"shareImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"shareImage\",\"size\":6},{\"name\":\"twitterCardType\",\"size\":6}],[{\"name\":\"twitterUsername\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(52, 'plugin_content_manager_configuration_components::sections.large-video', '{\"uid\":\"sections.large-video\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"video\":{\"edit\":{\"label\":\"Video\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Video\",\"searchable\":false,\"sortable\":false}},\"poster\":{\"edit\":{\"label\":\"Poster\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Poster\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"video\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"video\",\"size\":6},{\"name\":\"poster\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(53, 'plugin_content_manager_configuration_components::sections.bottom-actions', '{\"uid\":\"sections.bottom-actions\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"buttons\":{\"edit\":{\"label\":\"Buttons\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Buttons\",\"searchable\":false,\"sortable\":false}},\"keyword\":{\"edit\":{\"label\":\"Keyword\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Keyword\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"keyword\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"buttons\",\"size\":12}],[{\"name\":\"keyword\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(54, 'plugin_content_manager_configuration_components::sections.feature-columns-group', '{\"uid\":\"sections.feature-columns-group\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"features\":{\"edit\":{\"label\":\"Features\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Features\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"features\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(55, 'plugin_content_manager_configuration_components::sections.feature-rows-group', '{\"uid\":\"sections.feature-rows-group\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"features\":{\"edit\":{\"label\":\"Features\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Features\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"features\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(56, 'plugin_content_manager_configuration_components::sections.lead-form', '{\"uid\":\"sections.lead-form\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"emailPlaceholder\":{\"edit\":{\"label\":\"EmailPlaceholder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"EmailPlaceholder\",\"searchable\":true,\"sortable\":true}},\"submitButton\":{\"edit\":{\"label\":\"SubmitButton\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SubmitButton\",\"searchable\":false,\"sortable\":false}},\"location\":{\"edit\":{\"label\":\"Location\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Location\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"emailPlaceholder\",\"location\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"emailPlaceholder\",\"size\":6}],[{\"name\":\"submitButton\",\"size\":12}],[{\"name\":\"location\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', '');
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(57, 'plugin_content_manager_configuration_components::sections.hero', '{\"uid\":\"sections.hero\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"label\":{\"edit\":{\"label\":\"Label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Label\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"picture\":{\"edit\":{\"label\":\"Picture\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Picture\",\"searchable\":false,\"sortable\":false}},\"smallTextWithLink\":{\"edit\":{\"label\":\"SmallTextWithLink\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SmallTextWithLink\",\"searchable\":false,\"sortable\":false}},\"buttons\":{\"edit\":{\"label\":\"Buttons\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Buttons\",\"searchable\":false,\"sortable\":false}},\"keyword\":{\"edit\":{\"label\":\"Keyword\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Keyword\",\"searchable\":true,\"sortable\":true}},\"mainHero\":{\"edit\":{\"label\":\"MainHero\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MainHero\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"label\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"label\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"picture\",\"size\":6}],[{\"name\":\"smallTextWithLink\",\"size\":12}],[{\"name\":\"buttons\",\"size\":12}],[{\"name\":\"keyword\",\"size\":6}],[{\"name\":\"mainHero\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(58, 'plugin_content_manager_configuration_components::sections.pricing', '{\"uid\":\"sections.pricing\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"plans\":{\"edit\":{\"label\":\"Plans\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Plans\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"plans\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(59, 'plugin_content_manager_configuration_components::sections.testimonials-group', '{\"uid\":\"sections.testimonials-group\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":false,\"sortable\":false}},\"testimonials\":{\"edit\":{\"label\":\"Testimonials\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Testimonials\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"link\",\"size\":12}],[{\"name\":\"testimonials\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(60, 'plugin_content_manager_configuration_components::sections.rich-text', '{\"uid\":\"sections.rich-text\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"content\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(61, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(62, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(63, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', '', ''),
(64, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(65, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(66, 'plugin_content_manager_configuration_content_types::strapi::user', '{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(67, 'plugin_content_manager_configuration_content_types::application::global.global', '{\"uid\":\"application::global.global\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitleSuffix\",\"defaultSortBy\":\"metaTitleSuffix\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"metadata\":{\"edit\":{\"label\":\"Metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Metadata\",\"searchable\":false,\"sortable\":false}},\"metaTitleSuffix\":{\"edit\":{\"label\":\"MetaTitleSuffix\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MetaTitleSuffix\",\"searchable\":true,\"sortable\":true}},\"favicon\":{\"edit\":{\"label\":\"Favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Favicon\",\"searchable\":false,\"sortable\":false}},\"notificationBanner\":{\"edit\":{\"label\":\"NotificationBanner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NotificationBanner\",\"searchable\":false,\"sortable\":false}},\"navbar\":{\"edit\":{\"label\":\"Navbar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Navbar\",\"searchable\":false,\"sortable\":false}},\"footer\":{\"edit\":{\"label\":\"Footer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Footer\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metaTitleSuffix\",\"favicon\",\"created_at\"],\"edit\":[[{\"name\":\"metadata\",\"size\":12}],[{\"name\":\"metaTitleSuffix\",\"size\":6},{\"name\":\"favicon\",\"size\":6}],[{\"name\":\"notificationBanner\",\"size\":12}],[{\"name\":\"navbar\",\"size\":12}],[{\"name\":\"footer\",\"size\":12}]],\"editRelations\":[]}}', 'object', '', ''),
(68, 'plugin_content_manager_configuration_content_types::application::lead-form-submissions.lead-form-submissions', '{\"uid\":\"application::lead-form-submissions.lead-form-submissions\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"email\",\"defaultSortBy\":\"email\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"Status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Status\",\"searchable\":true,\"sortable\":true}},\"location\":{\"edit\":{\"label\":\"Location\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Location\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"email\",\"status\",\"location\"],\"editRelations\":[],\"edit\":[[{\"name\":\"email\",\"size\":6},{\"name\":\"status\",\"size\":6}],[{\"name\":\"location\",\"size\":6}]]}}', 'object', '', ''),
(69, 'plugin_content_manager_configuration_content_types::application::page.page', '{\"uid\":\"application::page.page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"shortName\",\"defaultSortBy\":\"shortName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"shortName\":{\"edit\":{\"label\":\"ShortName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ShortName\",\"searchable\":true,\"sortable\":true}},\"metadata\":{\"edit\":{\"label\":\"Metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Metadata\",\"searchable\":false,\"sortable\":false}},\"contentSections\":{\"edit\":{\"label\":\"ContentSections\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ContentSections\",\"searchable\":false,\"sortable\":false}},\"status\":{\"edit\":{\"label\":\"Status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Status\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"slug\",\"shortName\",\"status\"],\"editRelations\":[],\"edit\":[[{\"name\":\"slug\",\"size\":6},{\"name\":\"shortName\",\"size\":6}],[{\"name\":\"metadata\",\"size\":12}],[{\"name\":\"contentSections\",\"size\":12}],[{\"name\":\"status\",\"size\":6}]]}}', 'object', '', ''),
(70, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(71, 'plugin_content_manager_configuration_content_types::strapi::role', '{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', '', ''),
(72, 'plugin_content_manager_configuration_content_types::strapi::permission', '{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', '', ''),
(73, 'type_setup_initHasRun', 'true', 'boolean', 'development', ''),
(74, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', '', ''),
(75, 'model_def_application::solutions.solutions', '{\"uid\":\"application::solutions.solutions\",\"collectionName\":\"solutions\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Solutions\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"icon\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"title\":{\"type\":\"string\"},\"subtitle\":{\"type\":\"string\"},\"badgeSolution\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"elements.badget\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(76, 'plugin_content_manager_configuration_content_types::application::solutions.solutions', '{\"uid\":\"application::solutions.solutions\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"Icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Icon\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}},\"badgeSolution\":{\"edit\":{\"label\":\"BadgeSolution\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BadgeSolution\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"icon\",\"title\",\"subtitle\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"subtitle\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"badgeSolution\",\"size\":12}]],\"editRelations\":[]}}', 'object', '', ''),
(77, 'model_def_elements.badget', '{\"uid\":\"elements.badget\",\"collectionName\":\"components_elements_badgets\",\"info\":{\"name\":\"Badget\",\"icon\":\"ad\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(78, 'plugin_content_manager_configuration_components::elements.badget', '{\"uid\":\"elements.badget\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\"],\"edit\":[[{\"name\":\"title\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(79, 'model_def_application::updates.updates', '{\"uid\":\"application::updates.updates\",\"collectionName\":\"updates\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Posts\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"title\":{\"type\":\"string\"},\"subtitle\":{\"type\":\"string\"},\"icon\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(80, 'plugin_content_manager_configuration_content_types::application::updates.updates', '{\"uid\":\"application::updates.updates\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"subtitle\":{\"edit\":{\"label\":\"Subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subtitle\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"Icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Icon\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"subtitle\",\"icon\"],\"editRelations\":[],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"icon\",\"size\":6}]]}}', 'object', '', ''),
(81, 'model_def_application::headers.headers', '{\"uid\":\"application::headers.headers\",\"collectionName\":\"headers\",\"kind\":\"collectionType\",\"info\":{\"name\":\"headers\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"item\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(83, 'model_def_links.sub-link', '{\"uid\":\"links.sub-link\",\"collectionName\":\"components_links_sub_links\",\"info\":{\"name\":\"SubLink\",\"icon\":\"arrow-right\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"icon\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"descripcion\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(84, 'plugin_content_manager_configuration_components::links.sub-link', '{\"uid\":\"links.sub-link\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"Icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Icon\",\"searchable\":false,\"sortable\":false}},\"descripcion\":{\"edit\":{\"label\":\"Descripcion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descripcion\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"icon\",\"descripcion\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"descripcion\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(85, 'model_def_layout.navbar-extended', '{\"uid\":\"layout.navbar-extended\",\"collectionName\":\"components_layout_navbar_extendeds\",\"info\":{\"name\":\"NavbarExtended\",\"icon\":\"align-right\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(87, 'model_def_elements.navbar-section', '{\"uid\":\"elements.navbar-section\",\"collectionName\":\"components_elements_navbar_sections\",\"info\":{\"name\":\"NavbarSection\",\"icon\":\"angle-double-down\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"links\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"links.link\"}}}', 'object', NULL, NULL),
(89, 'model_def_elements.columns', '{\"uid\":\"elements.columns\",\"collectionName\":\"components_elements_columns\",\"info\":{\"name\":\"columns\",\"icon\":\"air-freshener\"},\"options\":{\"timestamps\":false},\"attributes\":{}}', 'object', NULL, NULL),
(90, 'plugin_content_manager_configuration_components::elements.columns', '{\"uid\":\"elements.columns\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(91, 'plugin_documentation_config', '{\"restrictedAccess\":false}', 'object', '', ''),
(92, 'model_def_elements.navbar-columns', '{\"uid\":\"elements.navbar-columns\",\"collectionName\":\"components_elements_navbar_section\",\"info\":{\"name\":\"navbarSection\",\"icon\":\"align-justify\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"links\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"links.link\"},\"title\":{\"type\":\"string\"},\"drop\":{\"type\":\"boolean\"}}}', 'object', NULL, NULL),
(93, 'plugin_content_manager_configuration_components::elements.navbar-columns', '{\"uid\":\"elements.navbar-columns\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"links\":{\"edit\":{\"label\":\"Links\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Links\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"drop\":{\"edit\":{\"label\":\"Drop\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Drop\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"drop\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"drop\",\"size\":4}],[{\"name\":\"links\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(94, 'model_def_elements.main-hero', '{\"uid\":\"elements.main-hero\",\"collectionName\":\"components_elements_main_heroes\",\"info\":{\"name\":\"mainHero\",\"icon\":\"allergies\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"keyword\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(95, 'plugin_content_manager_configuration_components::elements.main-hero', '{\"uid\":\"elements.main-hero\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"keyword\":{\"edit\":{\"label\":\"Keyword\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Keyword\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"keyword\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"keyword\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', ''),
(96, 'model_def_elements.logo', '{\"uid\":\"elements.logo\",\"collectionName\":\"components_elements_logos\",\"info\":{\"name\":\"Logo\",\"icon\":\"angry\"},\"options\":{\"timestamps\":false},\"attributes\":{\"titles\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"links.link\"},\"icon\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false}}}', 'object', NULL, NULL),
(97, 'plugin_content_manager_configuration_components::elements.logo', '{\"uid\":\"elements.logo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"titles\":{\"edit\":{\"label\":\"Titles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Titles\",\"searchable\":false,\"sortable\":false}},\"icon\":{\"edit\":{\"label\":\"Icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"icon\"],\"edit\":[[{\"name\":\"titles\",\"size\":12}],[{\"name\":\"icon\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `globals`
--

CREATE TABLE `globals` (
  `id` int(10) UNSIGNED NOT NULL,
  `metaTitleSuffix` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `globals`
--

INSERT INTO `globals` (`id`, `metaTitleSuffix`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Strapi Corporate', NULL, 1, '2021-04-15 07:21:46', '2021-04-26 19:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `globals_components`
--

CREATE TABLE `globals_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `global_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `globals_components`
--

INSERT INTO `globals_components` (`id`, `field`, `order`, `component_type`, `component_id`, `global_id`) VALUES
(1, 'metadata', 1, 'components_meta_metadata', 1, 1),
(2, 'notificationBanner', 1, 'components_elements_notification_banners', 1, 1),
(3, 'navbar', 1, 'components_layout_navbars', 1, 1),
(4, 'footer', 1, 'components_layout_footers', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `item`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Soluciones', '2021-04-21 16:08:16', 1, 1, '2021-04-21 21:08:13', '2021-04-21 21:08:16'),
(2, 'APIS', '2021-04-21 16:08:26', 1, 1, '2021-04-21 21:08:24', '2021-04-21 21:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `lead_form_submissions`
--

CREATE TABLE `lead_form_submissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lead_form_submissions`
--

INSERT INTO `lead_form_submissions` (`id`, `email`, `status`, `location`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'paul@thebeatles.com', 'contacted', 'Home Page Bottom', NULL, NULL, '2021-04-15 07:21:51', '2021-04-15 07:21:51'),
(2, 'george@thebeatles.com', 'ignored', 'Home Page Bottom', NULL, NULL, '2021-04-15 07:21:51', '2021-04-15 07:21:51'),
(3, 'johne@thebeatles.com', 'seen', 'Home Page Bottom', NULL, NULL, '2021-04-15 07:21:51', '2021-04-15 07:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `shortName` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `shortName`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Rimac', 'Home', 'published', NULL, 1, '2021-04-15 07:21:51', '2021-04-26 19:59:36'),
(2, 'pricing', 'Pricing', 'published', NULL, NULL, '2021-04-15 07:21:51', '2021-04-15 07:21:51'),
(3, 'contact', 'Contact', 'published', NULL, NULL, '2021-04-15 07:21:51', '2021-04-15 07:21:51'),
(4, 'secret', 'Secret', 'draft', NULL, NULL, '2021-04-15 07:21:51', '2021-04-15 07:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `pages_components`
--

CREATE TABLE `pages_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages_components`
--

INSERT INTO `pages_components` (`id`, `field`, `order`, `component_type`, `component_id`, `page_id`) VALUES
(1, 'metadata', 1, 'components_meta_metadata', 2, 1),
(2, 'contentSections', 5, 'components_sections_lead_forms', 1, 1),
(3, 'contentSections', 6, 'components_slices_bottom_actions', 1, 1),
(4, 'contentSections', 1, 'components_slices_heroes', 1, 1),
(5, 'contentSections', 3, 'components_slices_feature_columns_groups', 1, 1),
(6, 'contentSections', 2, 'components_slices_feature_rows_groups', 1, 1),
(7, 'contentSections', 4, 'components_slices_testimonials_groups', 1, 1),
(8, 'metadata', 1, 'components_meta_metadata', 3, 3),
(9, 'contentSections', 1, 'components_sections_rich_texts', 1, 3),
(10, 'contentSections', 2, 'components_slices_bottom_actions', 2, 3),
(11, 'metadata', 1, 'components_meta_metadata', 4, 4),
(12, 'contentSections', 1, 'components_sections_rich_texts', 2, 4),
(13, 'metadata', 1, 'components_meta_metadata', 5, 2),
(14, 'contentSections', 1, 'components_sections_pricings', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `Badgets` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solutions`
--

INSERT INTO `solutions` (`id`, `title`, `subtitle`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`, `Badgets`) VALUES
(1, 'Brokers', 'Donec pharetra massa a feugiat viverra.', '2021-04-20 18:44:39', 1, 1, '2021-04-20 23:29:10', '2021-04-22 21:07:26', NULL),
(2, 'Canales no tradicionales', 'Donec pharetra massa a feugiat viverra.', '2021-04-20 19:05:17', 1, 1, '2021-04-21 00:05:00', '2021-04-22 21:07:34', NULL),
(3, 'Banca', 'Donec pharetra massa a feugiat viverra.', '2021-04-20 19:15:01', 1, 1, '2021-04-21 00:14:57', '2021-04-22 21:07:19', NULL),
(4, 'Clínicas', 'Donec pharetra massa a feugiat viverra.', '2021-04-20 19:15:33', 1, 1, '2021-04-21 00:15:30', '2021-04-22 20:44:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `solutions_components`
--

CREATE TABLE `solutions_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `solution_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solutions_components`
--

INSERT INTO `solutions_components` (`id`, `field`, `order`, `component_type`, `component_id`, `solution_id`) VALUES
(1, 'Badgetsolution', 1, 'components_elements_badgets', 1, 1),
(2, 'Badgetsolution', 2, 'components_elements_badgets', 2, 1),
(3, 'Badgetsolution', 3, 'components_elements_badgets', 3, 1),
(4, 'Badgetsolution', 1, 'components_elements_badgets', 4, 2),
(5, 'Badgetsolution', 1, 'components_elements_badgets', 5, 3),
(6, 'Badgetsolution', 2, 'components_elements_badgets', 6, 3),
(7, 'Badgetsolution', 3, 'components_elements_badgets', 7, 3),
(8, 'Badgetsolution', 1, 'components_elements_badgets', 8, 4),
(9, 'badgeSolution', 1, 'components_elements_badgets', 9, 3),
(10, 'badgeSolution', 2, 'components_elements_badgets', 10, 3),
(12, 'badgeSolution', 1, 'components_elements_badgets', 12, 1),
(13, 'badgeSolution', 2, 'components_elements_badgets', 13, 1),
(15, 'badgeSolution', 1, 'components_elements_badgets', 15, 2),
(17, 'badgeSolution', 1, 'components_elements_badgets', 17, 4);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`) VALUES
(1, 'Sharon', 'Quispe', NULL, 'sharon.quispe.pe@cloudappi.net', '$2a$10$DbCxvM3ChidEZ0YesHcmu.GJ1.rNEqaeItkuPt0kWMORP9fBYoqqm', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_permission`
--

CREATE TABLE `strapi_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext DEFAULT NULL,
  `conditions` longtext DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_permission`
--

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `fields`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
(1, 'plugins::content-manager.explorer.create', 'application::page.page', '[\"slug\",\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"status\"]', '[]', 2, '2021-04-15 07:21:52', '2021-04-15 07:21:52'),
(2, 'plugins::content-manager.explorer.create', 'application::global.global', '[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.logo\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.smallText\",\"footer.columns.links.title\"]', '[]', 2, '2021-04-15 07:21:52', '2021-04-23 20:34:23'),
(3, 'plugins::content-manager.explorer.read', 'application::global.global', '[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.logo\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.smallText\",\"footer.columns.links.title\"]', '[]', 2, '2021-04-15 07:21:52', '2021-04-23 20:34:23'),
(4, 'plugins::content-manager.explorer.create', 'application::lead-form-submissions.lead-form-submissions', '[\"email\",\"status\",\"location\"]', '[]', 2, '2021-04-15 07:21:52', '2021-04-15 07:21:52'),
(5, 'plugins::content-manager.explorer.read', 'application::lead-form-submissions.lead-form-submissions', '[\"email\",\"status\",\"location\"]', '[]', 2, '2021-04-15 07:21:52', '2021-04-15 07:21:52'),
(6, 'plugins::content-manager.explorer.read', 'application::page.page', '[\"slug\",\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"status\"]', '[]', 2, '2021-04-15 07:21:52', '2021-04-15 07:21:52'),
(7, 'plugins::content-manager.explorer.update', 'application::global.global', '[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.logo\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.smallText\",\"footer.columns.links.title\"]', '[]', 2, '2021-04-15 07:21:52', '2021-04-23 20:34:23'),
(8, 'plugins::content-manager.explorer.update', 'application::lead-form-submissions.lead-form-submissions', '[\"email\",\"status\",\"location\"]', '[]', 2, '2021-04-15 07:21:52', '2021-04-15 07:21:52'),
(9, 'plugins::content-manager.explorer.update', 'application::page.page', '[\"slug\",\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"status\"]', '[]', 2, '2021-04-15 07:21:52', '2021-04-15 07:21:52'),
(10, 'plugins::content-manager.explorer.delete', 'application::global.global', NULL, '[]', 2, '2021-04-15 07:21:52', '2021-04-15 07:21:53'),
(11, 'plugins::content-manager.explorer.delete', 'application::lead-form-submissions.lead-form-submissions', NULL, '[]', 2, '2021-04-15 07:21:52', '2021-04-15 07:21:53'),
(12, 'plugins::content-manager.explorer.delete', 'application::page.page', NULL, '[]', 2, '2021-04-15 07:21:52', '2021-04-15 07:21:53'),
(13, 'plugins::upload.read', NULL, NULL, '[]', 2, '2021-04-15 07:21:53', '2021-04-15 07:21:53'),
(14, 'plugins::upload.assets.create', NULL, NULL, '[]', 2, '2021-04-15 07:21:53', '2021-04-15 07:21:53'),
(15, 'plugins::upload.assets.update', NULL, NULL, '[]', 2, '2021-04-15 07:21:53', '2021-04-15 07:21:53'),
(16, 'plugins::upload.assets.download', NULL, NULL, '[]', 2, '2021-04-15 07:21:53', '2021-04-15 07:21:53'),
(17, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 2, '2021-04-15 07:21:53', '2021-04-15 07:21:53'),
(18, 'plugins::content-manager.explorer.read', 'application::global.global', '[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.logo\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.smallText\",\"footer.columns.links.title\"]', '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:54', '2021-04-23 20:34:23'),
(19, 'plugins::content-manager.explorer.create', 'application::global.global', '[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.logo\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.smallText\",\"footer.columns.links.title\"]', '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:54', '2021-04-23 20:34:23'),
(20, 'plugins::content-manager.explorer.create', 'application::lead-form-submissions.lead-form-submissions', '[\"email\",\"status\",\"location\"]', '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:54', '2021-04-15 07:21:54'),
(21, 'plugins::content-manager.explorer.read', 'application::lead-form-submissions.lead-form-submissions', '[\"email\",\"status\",\"location\"]', '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:54', '2021-04-15 07:21:54'),
(22, 'plugins::content-manager.explorer.read', 'application::page.page', '[\"slug\",\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"status\"]', '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:54', '2021-04-15 07:21:54'),
(23, 'plugins::content-manager.explorer.create', 'application::page.page', '[\"slug\",\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"status\"]', '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:54', '2021-04-15 07:21:54'),
(24, 'plugins::content-manager.explorer.update', 'application::global.global', '[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.logo\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.smallText\",\"footer.columns.links.title\"]', '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:55', '2021-04-23 20:34:23'),
(25, 'plugins::content-manager.explorer.update', 'application::lead-form-submissions.lead-form-submissions', '[\"email\",\"status\",\"location\"]', '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:55', '2021-04-15 07:21:55'),
(26, 'plugins::content-manager.explorer.update', 'application::page.page', '[\"slug\",\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"status\"]', '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:55', '2021-04-15 07:21:55'),
(27, 'plugins::content-manager.explorer.delete', 'application::global.global', NULL, '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:55', '2021-04-15 07:21:55'),
(28, 'plugins::content-manager.explorer.delete', 'application::lead-form-submissions.lead-form-submissions', NULL, '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:55', '2021-04-15 07:21:55'),
(29, 'plugins::content-manager.explorer.delete', 'application::page.page', NULL, '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:55', '2021-04-15 07:21:55'),
(30, 'plugins::upload.read', NULL, NULL, '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:55', '2021-04-15 07:21:56'),
(31, 'plugins::upload.assets.create', NULL, NULL, '[]', 3, '2021-04-15 07:21:55', '2021-04-15 07:21:56'),
(32, 'plugins::upload.assets.update', NULL, NULL, '[\"admin::is-creator\"]', 3, '2021-04-15 07:21:56', '2021-04-15 07:21:56'),
(33, 'plugins::upload.assets.download', NULL, NULL, '[]', 3, '2021-04-15 07:21:56', '2021-04-15 07:21:56'),
(34, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 3, '2021-04-15 07:21:56', '2021-04-15 07:21:56'),
(35, 'plugins::content-manager.explorer.read', 'application::lead-form-submissions.lead-form-submissions', '[\"email\",\"status\",\"location\"]', '[]', 1, '2021-04-15 07:21:56', '2021-04-15 07:21:56'),
(38, 'plugins::content-manager.explorer.create', 'application::lead-form-submissions.lead-form-submissions', '[\"email\",\"status\",\"location\"]', '[]', 1, '2021-04-15 07:21:56', '2021-04-15 07:21:56'),
(39, 'plugins::content-manager.explorer.create', 'application::page.page', '[\"slug\",\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"status\"]', '[]', 1, '2021-04-15 07:21:56', '2021-04-15 07:21:56'),
(40, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2021-04-15 07:21:56', '2021-04-15 07:21:56'),
(41, 'plugins::content-manager.explorer.read', 'application::page.page', '[\"slug\",\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"status\"]', '[]', 1, '2021-04-15 07:21:57', '2021-04-15 07:21:57'),
(42, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2021-04-15 07:21:57', '2021-04-15 07:21:57'),
(43, 'plugins::content-manager.explorer.update', 'application::lead-form-submissions.lead-form-submissions', '[\"email\",\"status\",\"location\"]', '[]', 1, '2021-04-15 07:21:57', '2021-04-15 07:21:57'),
(45, 'plugins::content-manager.explorer.update', 'application::page.page', '[\"slug\",\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"status\"]', '[]', 1, '2021-04-15 07:21:57', '2021-04-15 07:21:57'),
(46, 'plugins::content-manager.explorer.delete', 'application::global.global', NULL, '[]', 1, '2021-04-15 07:21:57', '2021-04-15 07:21:57'),
(47, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2021-04-15 07:21:57', '2021-04-15 07:21:57'),
(48, 'plugins::content-manager.explorer.delete', 'application::lead-form-submissions.lead-form-submissions', NULL, '[]', 1, '2021-04-15 07:21:57', '2021-04-15 07:21:58'),
(49, 'plugins::content-manager.explorer.delete', 'application::page.page', NULL, '[]', 1, '2021-04-15 07:21:57', '2021-04-15 07:21:58'),
(50, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', NULL, '[]', 1, '2021-04-15 07:21:57', '2021-04-15 07:21:58'),
(51, 'plugins::content-type-builder.read', NULL, NULL, '[]', 1, '2021-04-15 07:21:57', '2021-04-15 07:21:58'),
(52, 'plugins::email.settings.read', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:58'),
(53, 'plugins::upload.read', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:58'),
(54, 'plugins::upload.assets.create', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:58'),
(55, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:58'),
(56, 'plugins::upload.assets.update', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:58'),
(57, 'plugins::upload.assets.download', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:58'),
(58, 'plugins::upload.settings.read', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:58'),
(59, 'plugins::content-manager.single-types.configure-view', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:58'),
(60, 'plugins::content-manager.collection-types.configure-view', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:59'),
(61, 'plugins::content-manager.components.configure-layout', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:59'),
(62, 'plugins::users-permissions.roles.create', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:59'),
(63, 'plugins::users-permissions.roles.read', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:59'),
(64, 'plugins::users-permissions.roles.update', NULL, NULL, '[]', 1, '2021-04-15 07:21:58', '2021-04-15 07:21:59'),
(65, 'plugins::users-permissions.roles.delete', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(66, 'plugins::users-permissions.providers.read', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(67, 'plugins::users-permissions.providers.update', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(68, 'plugins::users-permissions.email-templates.read', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(69, 'plugins::users-permissions.email-templates.update', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(70, 'plugins::users-permissions.advanced-settings.read', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(71, 'plugins::users-permissions.advanced-settings.update', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(72, 'admin::marketplace.read', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(73, 'admin::marketplace.plugins.install', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(74, 'admin::marketplace.plugins.uninstall', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(75, 'admin::webhooks.create', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(76, 'admin::webhooks.read', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(77, 'admin::webhooks.update', NULL, NULL, '[]', 1, '2021-04-15 07:21:59', '2021-04-15 07:21:59'),
(78, 'admin::users.create', NULL, NULL, '[]', 1, '2021-04-15 07:22:00', '2021-04-15 07:22:00'),
(79, 'admin::webhooks.delete', NULL, NULL, '[]', 1, '2021-04-15 07:22:00', '2021-04-15 07:22:00'),
(80, 'admin::users.read', NULL, NULL, '[]', 1, '2021-04-15 07:22:00', '2021-04-15 07:22:00'),
(81, 'admin::users.delete', NULL, NULL, '[]', 1, '2021-04-15 07:22:00', '2021-04-15 07:22:00'),
(82, 'admin::users.update', NULL, NULL, '[]', 1, '2021-04-15 07:22:00', '2021-04-15 07:22:00'),
(83, 'admin::roles.create', NULL, NULL, '[]', 1, '2021-04-15 07:22:00', '2021-04-15 07:22:00'),
(84, 'admin::roles.read', NULL, NULL, '[]', 1, '2021-04-15 07:22:00', '2021-04-15 07:22:00'),
(85, 'admin::roles.delete', NULL, NULL, '[]', 1, '2021-04-15 07:22:00', '2021-04-15 07:22:00'),
(86, 'admin::roles.update', NULL, NULL, '[]', 1, '2021-04-15 07:22:00', '2021-04-15 07:22:00'),
(90, 'plugins::content-manager.explorer.delete', 'application::solutions.solutions', NULL, '[]', 1, '2021-04-20 22:05:46', '2021-04-20 22:05:46'),
(91, 'plugins::content-manager.explorer.publish', 'application::solutions.solutions', NULL, '[]', 1, '2021-04-20 22:05:46', '2021-04-20 22:05:46'),
(98, 'plugins::content-manager.explorer.create', 'application::updates.updates', '[\"title\",\"subtitle\",\"icon\"]', '[]', 1, '2021-04-21 00:27:54', '2021-04-21 00:27:54'),
(99, 'plugins::content-manager.explorer.read', 'application::updates.updates', '[\"title\",\"subtitle\",\"icon\"]', '[]', 1, '2021-04-21 00:27:54', '2021-04-21 00:27:54'),
(100, 'plugins::content-manager.explorer.update', 'application::updates.updates', '[\"title\",\"subtitle\",\"icon\"]', '[]', 1, '2021-04-21 00:27:54', '2021-04-21 00:27:54'),
(101, 'plugins::content-manager.explorer.delete', 'application::updates.updates', NULL, '[]', 1, '2021-04-21 00:27:54', '2021-04-21 00:27:54'),
(102, 'plugins::content-manager.explorer.publish', 'application::updates.updates', NULL, '[]', 1, '2021-04-21 00:27:54', '2021-04-21 00:27:54'),
(108, 'plugins::content-manager.explorer.create', 'application::solutions.solutions', '[\"icon\",\"title\",\"subtitle\",\"badgeSolution.title\"]', '[]', 1, '2021-04-22 19:41:24', '2021-04-22 19:41:24'),
(109, 'plugins::content-manager.explorer.read', 'application::solutions.solutions', '[\"icon\",\"title\",\"subtitle\",\"badgeSolution.title\"]', '[]', 1, '2021-04-22 19:41:24', '2021-04-22 19:41:24'),
(110, 'plugins::content-manager.explorer.update', 'application::solutions.solutions', '[\"icon\",\"title\",\"subtitle\",\"badgeSolution.title\"]', '[]', 1, '2021-04-22 19:41:24', '2021-04-22 19:41:24'),
(120, 'plugins::documentation.read', NULL, NULL, '[]', 1, '2021-04-23 20:27:37', '2021-04-23 20:27:37'),
(121, 'plugins::documentation.settings.update', NULL, NULL, '[]', 1, '2021-04-23 20:27:37', '2021-04-23 20:27:37'),
(122, 'plugins::documentation.settings.regenerate', NULL, NULL, '[]', 1, '2021-04-23 20:27:37', '2021-04-23 20:27:37'),
(135, 'plugins::content-manager.explorer.create', 'application::global.global', '[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.logo\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.button.icon\",\"navbar.navbarColumns.links.url\",\"navbar.navbarColumns.links.newTab\",\"navbar.navbarColumns.links.title\",\"navbar.navbarColumns.links.icon\",\"navbar.navbarColumns.links.color\",\"navbar.navbarColumns.title\",\"navbar.navbarColumns.drop\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.title\",\"footer.columns.links.icon\",\"footer.columns.links.color\",\"footer.columns.drop\",\"footer.smallText\"]', '[]', 1, '2021-04-26 19:41:19', '2021-04-26 19:41:19'),
(136, 'plugins::content-manager.explorer.read', 'application::global.global', '[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.logo\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.button.icon\",\"navbar.navbarColumns.links.url\",\"navbar.navbarColumns.links.newTab\",\"navbar.navbarColumns.links.title\",\"navbar.navbarColumns.links.icon\",\"navbar.navbarColumns.links.color\",\"navbar.navbarColumns.title\",\"navbar.navbarColumns.drop\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.title\",\"footer.columns.links.icon\",\"footer.columns.links.color\",\"footer.columns.drop\",\"footer.smallText\"]', '[]', 1, '2021-04-26 19:41:19', '2021-04-26 19:41:19'),
(137, 'plugins::content-manager.explorer.update', 'application::global.global', '[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.logo\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.button.icon\",\"navbar.navbarColumns.links.url\",\"navbar.navbarColumns.links.newTab\",\"navbar.navbarColumns.links.title\",\"navbar.navbarColumns.links.icon\",\"navbar.navbarColumns.links.color\",\"navbar.navbarColumns.title\",\"navbar.navbarColumns.drop\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.title\",\"footer.columns.links.icon\",\"footer.columns.links.color\",\"footer.columns.drop\",\"footer.smallText\"]', '[]', 1, '2021-04-26 19:41:19', '2021-04-26 19:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_role`
--

CREATE TABLE `strapi_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_role`
--

INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2021-04-15 07:21:51', '2021-04-15 07:21:51'),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2021-04-15 07:21:51', '2021-04-15 07:21:51'),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2021-04-15 07:21:52', '2021-04-15 07:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_users_roles`
--

CREATE TABLE `strapi_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_users_roles`
--

INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `title`, `subtitle`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '¿Qué es Serverless?', 'Donec pharetra massa a feugiat viverra.', '2021-04-20 19:29:46', 1, 1, '2021-04-21 00:29:43', '2021-04-21 00:29:46'),
(2, 'DDD como filosofía de empresa.', 'Donec pharetra massa a feugiat viverra.', '2021-04-20 21:08:45', 1, 1, '2021-04-21 02:08:43', '2021-04-21 02:08:45'),
(3, 'Tendencias Insurtech en el sector de seguros.', 'Donec pharetra massa a feugiat viverra.', '2021-04-20 21:10:08', 1, 1, '2021-04-21 02:10:06', '2021-04-21 02:10:08'),
(4, 'Conoce nuestras APIs de auto flexible.', 'Donec pharetra massa a feugiat viverra.', '2021-04-20 21:10:59', 1, 1, '2021-04-21 02:10:57', '2021-04-21 02:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_file`
--

INSERT INTO `upload_file` (`id`, `name`, `alternativeText`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `previewUrl`, `provider`, `provider_metadata`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'favicon.png', 'favicon', NULL, 512, 512, '{\"thumbnail\":{\"name\":\"thumbnail_favicon.png\",\"hash\":\"thumbnail_favicon_65323b7b86\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":156,\"height\":156,\"size\":5.86,\"path\":null,\"url\":\"/uploads/thumbnail_favicon_65323b7b86.png\"},\"small\":{\"name\":\"small_favicon.png\",\"hash\":\"small_favicon_65323b7b86\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":500,\"size\":25.52,\"path\":null,\"url\":\"/uploads/small_favicon_65323b7b86.png\"}}', 'favicon_65323b7b86', '.png', 'image/png', '5.26', '/uploads/favicon_65323b7b86.png', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:21:49', '2021-04-15 07:21:50'),
(2, 'logo.png', 'logo', NULL, 1000, 265, '{\"thumbnail\":{\"name\":\"thumbnail_logo.png\",\"hash\":\"thumbnail_logo_a7bdeb8f60\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":65,\"size\":10.85,\"path\":null,\"url\":\"/uploads/thumbnail_logo_a7bdeb8f60.png\"},\"medium\":{\"name\":\"medium_logo.png\",\"hash\":\"medium_logo_a7bdeb8f60\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":199,\"size\":48.04,\"path\":null,\"url\":\"/uploads/medium_logo_a7bdeb8f60.png\"},\"small\":{\"name\":\"small_logo.png\",\"hash\":\"small_logo_a7bdeb8f60\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":133,\"size\":27.73,\"path\":null,\"url\":\"/uploads/small_logo_a7bdeb8f60.png\"}}', 'logo_a7bdeb8f60', '.png', 'image/png', '44.31', '/uploads/logo_a7bdeb8f60.png', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:21:49', '2021-04-15 07:21:50'),
(3, 'logo.png', 'logo', NULL, 1000, 265, '{\"thumbnail\":{\"name\":\"thumbnail_logo.png\",\"hash\":\"thumbnail_logo_68d5044aad\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":65,\"size\":10.85,\"path\":null,\"url\":\"/uploads/thumbnail_logo_68d5044aad.png\"},\"medium\":{\"name\":\"medium_logo.png\",\"hash\":\"medium_logo_68d5044aad\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":199,\"size\":48.04,\"path\":null,\"url\":\"/uploads/medium_logo_68d5044aad.png\"},\"small\":{\"name\":\"small_logo.png\",\"hash\":\"small_logo_68d5044aad\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":133,\"size\":27.73,\"path\":null,\"url\":\"/uploads/small_logo_68d5044aad.png\"}}', 'logo_68d5044aad', '.png', 'image/png', '44.31', '/uploads/logo_68d5044aad.png', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:21:49', '2021-04-15 07:21:50'),
(4, 'undraw-content-team.png', 'undraw-content-team', NULL, 1119, 712, '{\"thumbnail\":{\"name\":\"thumbnail_undraw-content-team.png\",\"hash\":\"thumbnail_undraw_content_team_de7c5d2e37\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":156,\"size\":12.63,\"path\":null,\"url\":\"/uploads/thumbnail_undraw_content_team_de7c5d2e37.png\"},\"large\":{\"name\":\"large_undraw-content-team.png\",\"hash\":\"large_undraw_content_team_de7c5d2e37\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":636,\"size\":66.19,\"path\":null,\"url\":\"/uploads/large_undraw_content_team_de7c5d2e37.png\"},\"medium\":{\"name\":\"medium_undraw-content-team.png\",\"hash\":\"medium_undraw_content_team_de7c5d2e37\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":477,\"size\":46.14,\"path\":null,\"url\":\"/uploads/medium_undraw_content_team_de7c5d2e37.png\"},\"small\":{\"name\":\"small_undraw-content-team.png\",\"hash\":\"small_undraw_content_team_de7c5d2e37\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":318,\"size\":28.57,\"path\":null,\"url\":\"/uploads/small_undraw_content_team_de7c5d2e37.png\"}}', 'undraw_content_team_de7c5d2e37', '.png', 'image/png', '40.60', '/uploads/undraw_content_team_de7c5d2e37.png', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:21:49', '2021-04-15 07:21:50'),
(5, 'preview.svg', 'preview', NULL, 24, 24, NULL, 'preview_e7bb097cde', '.svg', 'image/svg+xml', '0.92', '/uploads/preview_e7bb097cde.svg', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:22:02', '2021-04-15 07:22:08'),
(6, 'undraw-create-page.svg', 'undraw-create-page', NULL, 818, 610, NULL, 'undraw_create_page_38b553a7bf', '.svg', 'image/svg+xml', '13.29', '/uploads/undraw_create_page_38b553a7bf.svg', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:22:02', '2021-04-15 07:22:08'),
(7, 'undraw-design-page.svg', 'undraw-design-page', NULL, 830, 665, NULL, 'undraw_design_page_aa0425870b', '.svg', 'image/svg+xml', '10.35', '/uploads/undraw_design_page_aa0425870b.svg', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:22:02', '2021-04-15 07:22:10'),
(8, 'devices.svg', 'devices', NULL, 24, 24, NULL, 'devices_7020908393', '.svg', 'image/svg+xml', '0.32', '/uploads/devices_7020908393.svg', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:22:02', '2021-04-15 07:22:08'),
(9, 'undraw-content-team.svg', 'undraw-content-team', NULL, 643, 464, '{}', 'undraw_content_team_884627381f', '.svg', 'image/svg+xml', '48.35', '/uploads/undraw_content_team_884627381f.svg', NULL, 'local', NULL, NULL, 1, '2021-04-15 07:22:02', '2021-04-16 03:21:36'),
(10, 'palette.svg', 'palette', NULL, 24, 24, NULL, 'palette_0b0cd7b100', '.svg', 'image/svg+xml', '1.09', '/uploads/palette_0b0cd7b100.svg', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:22:02', '2021-04-15 07:22:10'),
(11, 'logo.png', 'logo', NULL, 1000, 265, '{\"thumbnail\":{\"name\":\"thumbnail_logo.png\",\"hash\":\"thumbnail_logo_ccb369cf24\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":65,\"size\":10.85,\"path\":null,\"url\":\"/uploads/thumbnail_logo_ccb369cf24.png\"},\"medium\":{\"name\":\"medium_logo.png\",\"hash\":\"medium_logo_ccb369cf24\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":199,\"size\":48.04,\"path\":null,\"url\":\"/uploads/medium_logo_ccb369cf24.png\"},\"small\":{\"name\":\"small_logo.png\",\"hash\":\"small_logo_ccb369cf24\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":133,\"size\":27.73,\"path\":null,\"url\":\"/uploads/small_logo_ccb369cf24.png\"}}', 'logo_ccb369cf24', '.png', 'image/png', '44.31', '/uploads/logo_ccb369cf24.png', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:22:03', '2021-04-15 07:22:10'),
(12, 'logo.png', 'logo', NULL, 1000, 265, '{\"thumbnail\":{\"name\":\"thumbnail_logo.png\",\"hash\":\"thumbnail_logo_74f05cd750\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":65,\"size\":10.85,\"path\":null,\"url\":\"/uploads/thumbnail_logo_74f05cd750.png\"},\"medium\":{\"name\":\"medium_logo.png\",\"hash\":\"medium_logo_74f05cd750\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":199,\"size\":48.04,\"path\":null,\"url\":\"/uploads/medium_logo_74f05cd750.png\"},\"small\":{\"name\":\"small_logo.png\",\"hash\":\"small_logo_74f05cd750\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":133,\"size\":27.73,\"path\":null,\"url\":\"/uploads/small_logo_74f05cd750.png\"}}', 'logo_74f05cd750', '.png', 'image/png', '44.31', '/uploads/logo_74f05cd750.png', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:22:03', '2021-04-15 07:22:10'),
(13, 'undraw-content-team.png', 'undraw-content-team', NULL, 1119, 712, '{\"thumbnail\":{\"name\":\"thumbnail_undraw-content-team.png\",\"hash\":\"thumbnail_undraw_content_team_06c2325316\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":156,\"size\":12.63,\"path\":null,\"url\":\"/uploads/thumbnail_undraw_content_team_06c2325316.png\"},\"large\":{\"name\":\"large_undraw-content-team.png\",\"hash\":\"large_undraw_content_team_06c2325316\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":636,\"size\":66.19,\"path\":null,\"url\":\"/uploads/large_undraw_content_team_06c2325316.png\"},\"medium\":{\"name\":\"medium_undraw-content-team.png\",\"hash\":\"medium_undraw_content_team_06c2325316\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":477,\"size\":46.14,\"path\":null,\"url\":\"/uploads/medium_undraw_content_team_06c2325316.png\"},\"small\":{\"name\":\"small_undraw-content-team.png\",\"hash\":\"small_undraw_content_team_06c2325316\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":318,\"size\":28.57,\"path\":null,\"url\":\"/uploads/small_undraw_content_team_06c2325316.png\"}}', 'undraw_content_team_06c2325316', '.png', 'image/png', '40.60', '/uploads/undraw_content_team_06c2325316.png', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:22:03', '2021-04-15 07:22:10'),
(14, 'logo.png', 'logo', NULL, 1000, 265, '{\"thumbnail\":{\"name\":\"thumbnail_logo.png\",\"hash\":\"thumbnail_logo_910976fa24\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":65,\"size\":10.85,\"path\":null,\"url\":\"/uploads/thumbnail_logo_910976fa24.png\"},\"medium\":{\"name\":\"medium_logo.png\",\"hash\":\"medium_logo_910976fa24\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":199,\"size\":48.04,\"path\":null,\"url\":\"/uploads/medium_logo_910976fa24.png\"},\"small\":{\"name\":\"small_logo.png\",\"hash\":\"small_logo_910976fa24\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":133,\"size\":27.73,\"path\":null,\"url\":\"/uploads/small_logo_910976fa24.png\"}}', 'logo_910976fa24', '.png', 'image/png', '44.31', '/uploads/logo_910976fa24.png', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:22:04', '2021-04-15 07:22:10'),
(15, 'logo.png', 'logo', NULL, 1000, 265, '{\"thumbnail\":{\"name\":\"thumbnail_logo.png\",\"hash\":\"thumbnail_logo_e38fa5e2d6\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":65,\"size\":10.85,\"path\":null,\"url\":\"/uploads/thumbnail_logo_e38fa5e2d6.png\"},\"medium\":{\"name\":\"medium_logo.png\",\"hash\":\"medium_logo_e38fa5e2d6\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":199,\"size\":48.04,\"path\":null,\"url\":\"/uploads/medium_logo_e38fa5e2d6.png\"},\"small\":{\"name\":\"small_logo.png\",\"hash\":\"small_logo_e38fa5e2d6\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":133,\"size\":27.73,\"path\":null,\"url\":\"/uploads/small_logo_e38fa5e2d6.png\"}}', 'logo_e38fa5e2d6', '.png', 'image/png', '44.31', '/uploads/logo_e38fa5e2d6.png', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:22:04', '2021-04-15 07:22:10'),
(16, 'user.png', 'user', NULL, 652, 928, '{\"thumbnail\":{\"name\":\"thumbnail_user.png\",\"hash\":\"thumbnail_user_1787c2b37a\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":110,\"height\":156,\"size\":46.18,\"path\":null,\"url\":\"/uploads/thumbnail_user_1787c2b37a.png\"},\"medium\":{\"name\":\"medium_user.png\",\"hash\":\"medium_user_1787c2b37a\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":527,\"height\":750,\"size\":882.52,\"path\":null,\"url\":\"/uploads/medium_user_1787c2b37a.png\"},\"small\":{\"name\":\"small_user.png\",\"hash\":\"small_user_1787c2b37a\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":351,\"height\":500,\"size\":402.97,\"path\":null,\"url\":\"/uploads/small_user_1787c2b37a.png\"}}', 'user_1787c2b37a', '.png', 'image/png', '1229.38', '/uploads/user_1787c2b37a.png', NULL, 'local', NULL, NULL, NULL, '2021-04-15 07:22:05', '2021-04-15 07:22:10'),
(17, 'IMG.svg', '', '', 224, 132, NULL, 'IMG_aca70b2820', '.svg', 'image/svg+xml', '31.20', '/uploads/IMG_aca70b2820.svg', NULL, 'local', NULL, 1, 1, '2021-04-20 23:29:07', '2021-04-20 23:29:07'),
(18, 'card_271x163_sepelio@2x.svg', '', '', 218, 131, NULL, 'card_271x163_sepelio_2x_ec968d5564', '.svg', 'image/svg+xml', '35.57', '/uploads/card_271x163_sepelio_2x_ec968d5564.svg', NULL, 'local', NULL, 1, 1, '2021-04-21 00:04:46', '2021-04-21 00:04:46'),
(19, 'img-2 1.svg', '', '', 224, 100, NULL, 'img_2_1_8c4fe8f05d', '.svg', 'image/svg+xml', '2166.76', '/uploads/img_2_1_8c4fe8f05d.svg', NULL, 'local', NULL, 1, 1, '2021-04-21 00:29:36', '2021-04-21 00:29:36'),
(20, 'img-2 1 (1).svg', '', '', 218, 97, NULL, 'img_2_1_1_4fe270510e', '.svg', 'image/svg+xml', '2788.29', '/uploads/img_2_1_1_4fe270510e.svg', NULL, 'local', NULL, 1, 1, '2021-04-21 02:08:39', '2021-04-21 02:08:39'),
(21, 'img-2 1 (2).svg', '', '', 218, 97, NULL, 'img_2_1_2_35c7b0fe5f', '.svg', 'image/svg+xml', '2472.31', '/uploads/img_2_1_2_35c7b0fe5f.svg', NULL, 'local', NULL, 1, 1, '2021-04-21 02:10:02', '2021-04-21 02:10:02'),
(22, 'img-2 1 (3).svg', '', '', 218, 97, NULL, 'img_2_1_3_4a4b6eb0aa', '.svg', 'image/svg+xml', '2919.69', '/uploads/img_2_1_3_4a4b6eb0aa.svg', NULL, 'local', NULL, 1, 1, '2021-04-21 02:10:54', '2021-04-21 02:10:54'),
(23, 'Logo RIMAC.svg', '', '', 99, 16, NULL, 'Logo_RIMAC_5bc2da0282', '.svg', 'image/svg+xml', '1.64', '/uploads/Logo_RIMAC_5bc2da0282.svg', NULL, 'local', NULL, 1, 1, '2021-04-22 23:58:31', '2021-04-22 23:58:31'),
(24, 'icon_credit-card-front.svg', '', '', 64, 64, NULL, 'icon_credit_card_front_2d558c9932', '.svg', 'image/svg+xml', '2.68', '/uploads/icon_credit_card_front_2d558c9932.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 00:23:00', '2021-04-24 00:23:00'),
(25, 'icon_savings.svg', '', '', 64, 64, NULL, 'icon_savings_8c3cc858ae', '.svg', 'image/svg+xml', '5.62', '/uploads/icon_savings_8c3cc858ae.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 00:24:20', '2021-04-24 00:24:20'),
(26, 'icon_laptop.svg', '', '', 64, 64, NULL, 'icon_laptop_56e4a255e4', '.svg', 'image/svg+xml', '6.30', '/uploads/icon_laptop_56e4a255e4.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 00:24:57', '2021-04-24 00:24:57'),
(27, 'icon_inversion.svg', '', '', 64, 64, NULL, 'icon_inversion_2d98d804f5', '.svg', 'image/svg+xml', '2.90', '/uploads/icon_inversion_2d98d804f5.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 00:25:36', '2021-04-24 00:25:36'),
(28, 'icon_auto-workshop-online.svg', '', '', 64, 64, NULL, 'icon_auto_workshop_online_177280c3a3', '.svg', 'image/svg+xml', '3.93', '/uploads/icon_auto_workshop_online_177280c3a3.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 00:26:08', '2021-04-24 00:26:08'),
(29, 'icon_buildings.svg', '', '', 64, 64, NULL, 'icon_buildings_48ad978bae', '.svg', 'image/svg+xml', '7.12', '/uploads/icon_buildings_48ad978bae.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 00:27:03', '2021-04-24 00:27:03'),
(30, 'icon_checklist.svg', '', '', 64, 64, NULL, 'icon_checklist_0bafc7a04b', '.svg', 'image/svg+xml', '2.81', '/uploads/icon_checklist_0bafc7a04b.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 00:32:24', '2021-04-24 00:32:24'),
(31, 'icon_information.svg', '', '', 64, 64, NULL, 'icon_information_6f9b8765b2', '.svg', 'image/svg+xml', '2.66', '/uploads/icon_information_6f9b8765b2.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 00:35:28', '2021-04-24 00:35:28'),
(32, 'XMLID 823.3.svg', '', '', 16, 12, NULL, 'XMLID_823_3_5425106a0d', '.svg', 'image/svg+xml', '0.84', '/uploads/XMLID_823_3_5425106a0d.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 01:12:40', '2021-04-24 01:12:40'),
(33, 'icon_premium.svg', '', '', 64, 64, NULL, 'icon_premium_535b35edd5', '.svg', 'image/svg+xml', '3.37', '/uploads/icon_premium_535b35edd5.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 01:34:49', '2021-04-24 01:34:49'),
(34, 'icon_rimac.svg', '', '', 72, 72, NULL, 'icon_rimac_646429059a', '.svg', 'image/svg+xml', '2.85', '/uploads/icon_rimac_646429059a.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 02:28:45', '2021-04-24 02:28:45'),
(35, 'icon_maintenance.svg', '', '', 72, 72, NULL, 'icon_maintenance_8aa9ee075e', '.svg', 'image/svg+xml', '4.28', '/uploads/icon_maintenance_8aa9ee075e.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 02:29:47', '2021-04-24 02:29:47'),
(36, 'claves-salud-tesoreria 3.svg', '', '', 440, 396, NULL, 'claves_salud_tesoreria_3_7ff07d08d0', '.svg', 'image/svg+xml', '1622.89', '/uploads/claves_salud_tesoreria_3_7ff07d08d0.svg', NULL, 'local', NULL, 1, 1, '2021-04-24 04:01:44', '2021-04-24 04:01:44'),
(37, 'gl_profile.svg', '', '', 12, 13, NULL, 'gl_profile_3713205c1d', '.svg', 'image/svg+xml', '0.41', '/uploads/gl_profile_3713205c1d.svg', NULL, 'local', NULL, 1, 1, '2021-04-26 18:31:24', '2021-04-26 18:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(10) UNSIGNED NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_file_morph`
--

INSERT INTO `upload_file_morph` (`id`, `upload_file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(118, 19, 1, 'updates', 'icon', 1),
(119, 20, 2, 'updates', 'icon', 1),
(120, 21, 3, 'updates', 'icon', 1),
(121, 22, 4, 'updates', 'icon', 1),
(128, 18, 4, 'solutions', 'icon', 1),
(129, 17, 3, 'solutions', 'icon', 1),
(130, 17, 1, 'solutions', 'icon', 1),
(131, 18, 2, 'solutions', 'icon', 1),
(337, 12, 1, 'components_elements_logos', 'logo', 1),
(338, 14, 2, 'components_elements_logos', 'logo', 1),
(339, 11, 3, 'components_elements_logos', 'logo', 1),
(359, 4, 1, 'components_meta_metadata', 'shareImage', 1),
(360, 37, 1, 'components_links_buttons', 'icon', 1),
(361, 24, 17, 'components_links_links', 'icon', 1),
(362, 25, 18, 'components_links_links', 'icon', 1),
(363, 26, 19, 'components_links_links', 'icon', 1),
(364, 27, 20, 'components_links_links', 'icon', 1),
(365, 28, 21, 'components_links_links', 'icon', 1),
(366, 29, 22, 'components_links_links', 'icon', 1),
(367, 30, 23, 'components_links_links', 'icon', 1),
(368, 26, 24, 'components_links_links', 'icon', 1),
(369, 31, 25, 'components_links_links', 'icon', 1),
(370, 23, 1, 'components_layout_navbars', 'logo', 1),
(371, 23, 1, 'components_layout_footers', 'logo', 1),
(372, 1, 1, 'globals', 'favicon', 1),
(373, 13, 2, 'components_meta_metadata', 'shareImage', 1),
(374, 34, 1, 'components_slices_feature_columns', 'icon', 1),
(375, 35, 2, 'components_slices_feature_columns', 'icon', 1),
(376, 26, 3, 'components_slices_feature_columns', 'icon', 1),
(377, 26, 3, 'components_slices_feature_rows', 'media', 1),
(378, 32, 3, 'components_links_buttons', 'icon', 1),
(379, 27, 1, 'components_slices_feature_rows', 'media', 1),
(380, 33, 2, 'components_slices_feature_rows', 'media', 1),
(381, 15, 1, 'components_slices_testimonials', 'logo', 1),
(382, 36, 1, 'components_slices_testimonials', 'picture', 1),
(383, 23, 2, 'components_slices_testimonials', 'logo', 1),
(384, 36, 2, 'components_slices_testimonials', 'picture', 1),
(385, 9, 1, 'components_slices_heroes', 'picture', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
(1, 'application', 'lead-form-submissions', 'create', 0, '', 1, NULL, NULL),
(2, 'application', 'lead-form-submissions', 'create', 1, '', 2, NULL, NULL),
(3, 'application', 'lead-form-submissions', 'count', 0, '', 1, NULL, NULL),
(4, 'application', 'lead-form-submissions', 'count', 0, '', 2, NULL, NULL),
(5, 'application', 'global', 'update', 0, '', 2, NULL, NULL),
(6, 'application', 'global', 'delete', 0, '', 1, NULL, NULL),
(7, 'application', 'global', 'find', 0, '', 1, NULL, NULL),
(8, 'application', 'global', 'find', 1, '', 2, NULL, NULL),
(9, 'application', 'global', 'update', 0, '', 1, NULL, NULL),
(10, 'application', 'global', 'delete', 0, '', 2, NULL, NULL),
(11, 'application', 'lead-form-submissions', 'delete', 0, '', 1, NULL, NULL),
(12, 'application', 'lead-form-submissions', 'delete', 0, '', 2, NULL, NULL),
(13, 'application', 'lead-form-submissions', 'find', 0, '', 2, NULL, NULL),
(14, 'application', 'lead-form-submissions', 'update', 0, '', 2, NULL, NULL),
(15, 'application', 'page', 'count', 0, '', 1, NULL, NULL),
(16, 'application', 'lead-form-submissions', 'find', 0, '', 1, NULL, NULL),
(17, 'application', 'lead-form-submissions', 'findone', 0, '', 1, NULL, NULL),
(18, 'application', 'lead-form-submissions', 'update', 0, '', 1, NULL, NULL),
(19, 'application', 'page', 'count', 0, '', 2, NULL, NULL),
(20, 'application', 'lead-form-submissions', 'findone', 0, '', 2, NULL, NULL),
(21, 'application', 'page', 'create', 0, '', 2, NULL, NULL),
(22, 'application', 'page', 'create', 0, '', 1, NULL, NULL),
(23, 'application', 'page', 'delete', 0, '', 1, NULL, NULL),
(24, 'application', 'page', 'find', 0, '', 1, NULL, NULL),
(25, 'application', 'page', 'findone', 0, '', 1, NULL, NULL),
(26, 'application', 'page', 'findone', 1, '', 2, NULL, NULL),
(27, 'application', 'page', 'update', 0, '', 1, NULL, NULL),
(28, 'application', 'page', 'update', 0, '', 2, NULL, NULL),
(29, 'application', 'page', 'delete', 0, '', 2, NULL, NULL),
(30, 'application', 'page', 'find', 1, '', 2, NULL, NULL),
(31, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 1, NULL, NULL),
(32, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 2, NULL, NULL),
(33, 'content-manager', 'collection-types', 'create', 0, '', 2, NULL, NULL),
(34, 'content-manager', 'collection-types', 'delete', 0, '', 1, NULL, NULL),
(35, 'content-manager', 'collection-types', 'delete', 0, '', 2, NULL, NULL),
(36, 'content-manager', 'collection-types', 'find', 0, '', 1, NULL, NULL),
(37, 'content-manager', 'collection-types', 'create', 0, '', 1, NULL, NULL),
(38, 'content-manager', 'collection-types', 'find', 0, '', 2, NULL, NULL),
(39, 'content-manager', 'collection-types', 'findone', 0, '', 1, NULL, NULL),
(40, 'content-manager', 'collection-types', 'findone', 0, '', 2, NULL, NULL),
(41, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 1, NULL, NULL),
(42, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 2, NULL, NULL),
(43, 'content-manager', 'collection-types', 'publish', 0, '', 2, NULL, NULL),
(44, 'content-manager', 'collection-types', 'unpublish', 0, '', 1, NULL, NULL),
(45, 'content-manager', 'collection-types', 'unpublish', 0, '', 2, NULL, NULL),
(46, 'content-manager', 'collection-types', 'publish', 0, '', 1, NULL, NULL),
(47, 'content-manager', 'collection-types', 'update', 0, '', 1, NULL, NULL),
(48, 'content-manager', 'collection-types', 'update', 0, '', 2, NULL, NULL),
(49, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 1, NULL, NULL),
(50, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 2, NULL, NULL),
(51, 'content-manager', 'components', 'findcomponents', 0, '', 1, NULL, NULL),
(52, 'content-manager', 'components', 'findcomponents', 0, '', 2, NULL, NULL),
(53, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 1, NULL, NULL),
(54, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 2, NULL, NULL),
(55, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 1, NULL, NULL),
(56, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 2, NULL, NULL),
(57, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 1, NULL, NULL),
(58, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 2, NULL, NULL),
(59, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 1, NULL, NULL),
(60, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 2, NULL, NULL),
(61, 'content-manager', 'relations', 'find', 0, '', 1, NULL, NULL),
(62, 'content-manager', 'single-types', 'createorupdate', 0, '', 1, NULL, NULL),
(63, 'content-manager', 'single-types', 'delete', 0, '', 1, NULL, NULL),
(64, 'content-manager', 'relations', 'find', 0, '', 2, NULL, NULL),
(65, 'content-manager', 'single-types', 'createorupdate', 0, '', 2, NULL, NULL),
(66, 'content-manager', 'single-types', 'delete', 0, '', 2, NULL, NULL),
(67, 'content-manager', 'single-types', 'find', 0, '', 2, NULL, NULL),
(68, 'content-manager', 'single-types', 'find', 0, '', 1, NULL, NULL),
(69, 'content-manager', 'single-types', 'publish', 0, '', 1, NULL, NULL),
(70, 'content-manager', 'single-types', 'publish', 0, '', 2, NULL, NULL),
(71, 'content-manager', 'single-types', 'unpublish', 0, '', 1, NULL, NULL),
(72, 'content-manager', 'single-types', 'unpublish', 0, '', 2, NULL, NULL),
(73, 'content-manager', 'uid', 'checkuidavailability', 0, '', 1, NULL, NULL),
(74, 'content-manager', 'uid', 'checkuidavailability', 0, '', 2, NULL, NULL),
(75, 'content-manager', 'uid', 'generateuid', 0, '', 1, NULL, NULL),
(76, 'content-manager', 'uid', 'generateuid', 0, '', 2, NULL, NULL),
(77, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
(78, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
(79, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
(80, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
(81, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
(82, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
(83, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
(84, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
(85, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
(86, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
(87, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
(88, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
(89, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
(90, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
(91, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
(92, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
(93, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
(94, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
(95, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
(96, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
(97, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
(98, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
(99, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
(100, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
(101, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
(102, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
(103, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
(104, 'email', 'email', 'getsettings', 0, '', 1, NULL, NULL),
(105, 'email', 'email', 'getsettings', 0, '', 2, NULL, NULL),
(106, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
(107, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
(108, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
(109, 'email', 'email', 'test', 0, '', 1, NULL, NULL),
(110, 'email', 'email', 'test', 0, '', 2, NULL, NULL),
(111, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
(112, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
(113, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
(114, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
(115, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
(116, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
(117, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
(118, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
(119, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
(120, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
(121, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
(122, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
(123, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
(124, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
(125, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
(126, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
(127, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
(128, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
(129, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
(130, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
(131, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
(132, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
(133, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
(134, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
(135, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
(136, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
(137, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
(138, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
(139, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
(140, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
(141, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
(142, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
(143, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
(144, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
(145, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
(146, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
(147, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
(148, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
(149, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
(150, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
(151, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
(152, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
(153, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
(154, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
(155, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
(156, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
(157, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
(158, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
(159, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
(160, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
(161, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
(162, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
(163, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
(164, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
(165, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
(166, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
(167, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
(168, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
(169, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
(170, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
(171, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
(172, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
(173, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
(174, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
(175, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
(176, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
(177, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
(178, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
(179, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
(180, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
(181, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
(182, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
(183, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
(184, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
(185, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
(186, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
(187, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
(188, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL),
(189, 'application', 'solutions', 'count', 0, '', 1, NULL, NULL),
(190, 'application', 'solutions', 'count', 0, '', 2, NULL, NULL),
(191, 'application', 'solutions', 'create', 0, '', 1, NULL, NULL),
(192, 'application', 'solutions', 'create', 0, '', 2, NULL, NULL),
(193, 'application', 'solutions', 'delete', 0, '', 2, NULL, NULL),
(194, 'application', 'solutions', 'find', 1, '', 2, NULL, NULL),
(195, 'application', 'solutions', 'delete', 0, '', 1, NULL, NULL),
(196, 'application', 'solutions', 'findone', 0, '', 1, NULL, NULL),
(197, 'application', 'solutions', 'find', 0, '', 1, NULL, NULL),
(198, 'application', 'solutions', 'findone', 1, '', 2, NULL, NULL),
(199, 'application', 'solutions', 'update', 0, '', 1, NULL, NULL),
(200, 'application', 'solutions', 'update', 0, '', 2, NULL, NULL),
(201, 'application', 'updates', 'count', 0, '', 1, NULL, NULL),
(202, 'application', 'updates', 'count', 0, '', 2, NULL, NULL),
(203, 'application', 'updates', 'create', 0, '', 1, NULL, NULL),
(204, 'application', 'updates', 'create', 0, '', 2, NULL, NULL),
(205, 'application', 'updates', 'delete', 0, '', 1, NULL, NULL),
(206, 'application', 'updates', 'delete', 0, '', 2, NULL, NULL),
(207, 'application', 'updates', 'find', 0, '', 1, NULL, NULL),
(208, 'application', 'updates', 'find', 1, '', 2, NULL, NULL),
(209, 'application', 'updates', 'findone', 0, '', 1, NULL, NULL),
(210, 'application', 'updates', 'findone', 1, '', 2, NULL, NULL),
(211, 'application', 'updates', 'update', 0, '', 1, NULL, NULL),
(212, 'application', 'updates', 'update', 0, '', 2, NULL, NULL),
(225, 'documentation', 'documentation', 'deletedoc', 0, '', 1, NULL, NULL),
(226, 'documentation', 'documentation', 'deletedoc', 0, '', 2, NULL, NULL),
(227, 'documentation', 'documentation', 'getinfos', 0, '', 1, NULL, NULL),
(228, 'documentation', 'documentation', 'getinfos', 0, '', 2, NULL, NULL),
(229, 'documentation', 'documentation', 'index', 0, '', 2, NULL, NULL),
(230, 'documentation', 'documentation', 'login', 0, '', 1, NULL, NULL),
(231, 'documentation', 'documentation', 'login', 0, '', 2, NULL, NULL),
(232, 'documentation', 'documentation', 'index', 0, '', 1, NULL, NULL),
(233, 'documentation', 'documentation', 'loginview', 0, '', 2, NULL, NULL),
(234, 'documentation', 'documentation', 'loginview', 0, '', 1, NULL, NULL),
(235, 'documentation', 'documentation', 'regeneratedoc', 0, '', 1, NULL, NULL),
(236, 'documentation', 'documentation', 'regeneratedoc', 0, '', 2, NULL, NULL),
(237, 'documentation', 'documentation', 'updatesettings', 0, '', 1, NULL, NULL),
(238, 'documentation', 'documentation', 'updatesettings', 0, '', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `components_elements_badgets`
--
ALTER TABLE `components_elements_badgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_columns`
--
ALTER TABLE `components_elements_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_features`
--
ALTER TABLE `components_elements_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_logos`
--
ALTER TABLE `components_elements_logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_logos_components`
--
ALTER TABLE `components_elements_logos_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_elements_logo_id_fk` (`components_elements_logo_id`);

--
-- Indexes for table `components_elements_main_heroes`
--
ALTER TABLE `components_elements_main_heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_navbar_columns`
--
ALTER TABLE `components_elements_navbar_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_navbar_columns_components`
--
ALTER TABLE `components_elements_navbar_columns_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_elements_navbar_column_id_fk` (`components_elements_navbar_column_id`);

--
-- Indexes for table `components_elements_navbar_section`
--
ALTER TABLE `components_elements_navbar_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_navbar_sections`
--
ALTER TABLE `components_elements_navbar_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_navbar_sections_components`
--
ALTER TABLE `components_elements_navbar_sections_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_elements_navbar_section_id_fk` (`components_elements_navbar_section_id`);

--
-- Indexes for table `components_elements_navbar_section_components`
--
ALTER TABLE `components_elements_navbar_section_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_notification_banners`
--
ALTER TABLE `components_elements_notification_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_plans`
--
ALTER TABLE `components_elements_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_elements_plans_components`
--
ALTER TABLE `components_elements_plans_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_elements_plan_id_fk` (`components_elements_plan_id`);

--
-- Indexes for table `components_layout_footers`
--
ALTER TABLE `components_layout_footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_layout_footers_components`
--
ALTER TABLE `components_layout_footers_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_layout_footer_id_fk` (`components_layout_footer_id`);

--
-- Indexes for table `components_layout_navbars`
--
ALTER TABLE `components_layout_navbars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_layout_navbars_components`
--
ALTER TABLE `components_layout_navbars_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_layout_navbar_id_fk` (`components_layout_navbar_id`);

--
-- Indexes for table `components_layout_navbar_extendeds`
--
ALTER TABLE `components_layout_navbar_extendeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_layout_navbar_extendeds_components`
--
ALTER TABLE `components_layout_navbar_extendeds_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_layout_navbar_extended_id_fk` (`components_layout_navbar_extended_id`);

--
-- Indexes for table `components_links_buttons`
--
ALTER TABLE `components_links_buttons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_links_footer_sections`
--
ALTER TABLE `components_links_footer_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_links_footer_sections_components`
--
ALTER TABLE `components_links_footer_sections_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_links_footer_section_id_fk` (`components_links_footer_section_id`);

--
-- Indexes for table `components_links_links`
--
ALTER TABLE `components_links_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_links_simple_buttons`
--
ALTER TABLE `components_links_simple_buttons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_links_sub_links`
--
ALTER TABLE `components_links_sub_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_meta_metadata`
--
ALTER TABLE `components_meta_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_sections_lead_forms`
--
ALTER TABLE `components_sections_lead_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_sections_lead_forms_components`
--
ALTER TABLE `components_sections_lead_forms_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_sections_lead_form_id_fk` (`components_sections_lead_form_id`);

--
-- Indexes for table `components_sections_pricings`
--
ALTER TABLE `components_sections_pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_sections_pricings_components`
--
ALTER TABLE `components_sections_pricings_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_sections_pricing_id_fk` (`components_sections_pricing_id`);

--
-- Indexes for table `components_sections_rich_texts`
--
ALTER TABLE `components_sections_rich_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_slices_bottom_actions`
--
ALTER TABLE `components_slices_bottom_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_slices_bottom_actions_components`
--
ALTER TABLE `components_slices_bottom_actions_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_bottom_action_id_fk` (`components_slices_bottom_action_id`);

--
-- Indexes for table `components_slices_feature_columns`
--
ALTER TABLE `components_slices_feature_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_slices_feature_columns_groups`
--
ALTER TABLE `components_slices_feature_columns_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_slices_feature_columns_groups_components`
--
ALTER TABLE `components_slices_feature_columns_groups_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_feature_columns_group_id_fk` (`components_slices_feature_columns_group_id`);

--
-- Indexes for table `components_slices_feature_rows`
--
ALTER TABLE `components_slices_feature_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_slices_feature_rows_components`
--
ALTER TABLE `components_slices_feature_rows_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_feature_row_id_fk` (`components_slices_feature_row_id`);

--
-- Indexes for table `components_slices_feature_rows_groups`
--
ALTER TABLE `components_slices_feature_rows_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_slices_feature_rows_groups_components`
--
ALTER TABLE `components_slices_feature_rows_groups_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_feature_rows_group_id_fk` (`components_slices_feature_rows_group_id`);

--
-- Indexes for table `components_slices_heroes`
--
ALTER TABLE `components_slices_heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_slices_heroes_components`
--
ALTER TABLE `components_slices_heroes_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_hero_id_fk` (`components_slices_hero_id`);

--
-- Indexes for table `components_slices_large_videos`
--
ALTER TABLE `components_slices_large_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_slices_testimonials`
--
ALTER TABLE `components_slices_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_slices_testimonials_groups`
--
ALTER TABLE `components_slices_testimonials_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_slices_testimonials_groups_components`
--
ALTER TABLE `components_slices_testimonials_groups_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_testimonials_group_id_fk` (`components_slices_testimonials_group_id`);

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `globals`
--
ALTER TABLE `globals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `globals_components`
--
ALTER TABLE `globals_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `global_id_fk` (`global_id`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_form_submissions`
--
ALTER TABLE `lead_form_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `pages_components`
--
ALTER TABLE `pages_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id_fk` (`page_id`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solutions_components`
--
ALTER TABLE `solutions_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solution_id_fk` (`solution_id`);

--
-- Indexes for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_administrator_email_unique` (`email`);

--
-- Indexes for table `strapi_permission`
--
ALTER TABLE `strapi_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_role`
--
ALTER TABLE `strapi_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_role_name_unique` (`name`),
  ADD UNIQUE KEY `strapi_role_code_unique` (`code`);

--
-- Indexes for table `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_role_type_unique` (`type`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_user_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `components_elements_badgets`
--
ALTER TABLE `components_elements_badgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `components_elements_columns`
--
ALTER TABLE `components_elements_columns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_elements_features`
--
ALTER TABLE `components_elements_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `components_elements_logos`
--
ALTER TABLE `components_elements_logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components_elements_logos_components`
--
ALTER TABLE `components_elements_logos_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_elements_main_heroes`
--
ALTER TABLE `components_elements_main_heroes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `components_elements_navbar_columns`
--
ALTER TABLE `components_elements_navbar_columns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_elements_navbar_columns_components`
--
ALTER TABLE `components_elements_navbar_columns_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_elements_navbar_section`
--
ALTER TABLE `components_elements_navbar_section`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `components_elements_navbar_sections`
--
ALTER TABLE `components_elements_navbar_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_elements_navbar_sections_components`
--
ALTER TABLE `components_elements_navbar_sections_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_elements_navbar_section_components`
--
ALTER TABLE `components_elements_navbar_section_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `components_elements_notification_banners`
--
ALTER TABLE `components_elements_notification_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_elements_plans`
--
ALTER TABLE `components_elements_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components_elements_plans_components`
--
ALTER TABLE `components_elements_plans_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `components_layout_footers`
--
ALTER TABLE `components_layout_footers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `components_layout_footers_components`
--
ALTER TABLE `components_layout_footers_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `components_layout_navbars`
--
ALTER TABLE `components_layout_navbars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_layout_navbars_components`
--
ALTER TABLE `components_layout_navbars_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `components_layout_navbar_extendeds`
--
ALTER TABLE `components_layout_navbar_extendeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_layout_navbar_extendeds_components`
--
ALTER TABLE `components_layout_navbar_extendeds_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_links_buttons`
--
ALTER TABLE `components_links_buttons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `components_links_footer_sections`
--
ALTER TABLE `components_links_footer_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `components_links_footer_sections_components`
--
ALTER TABLE `components_links_footer_sections_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `components_links_links`
--
ALTER TABLE `components_links_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `components_links_simple_buttons`
--
ALTER TABLE `components_links_simple_buttons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_links_sub_links`
--
ALTER TABLE `components_links_sub_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_meta_metadata`
--
ALTER TABLE `components_meta_metadata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `components_sections_lead_forms`
--
ALTER TABLE `components_sections_lead_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_sections_lead_forms_components`
--
ALTER TABLE `components_sections_lead_forms_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_sections_pricings`
--
ALTER TABLE `components_sections_pricings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_sections_pricings_components`
--
ALTER TABLE `components_sections_pricings_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components_sections_rich_texts`
--
ALTER TABLE `components_sections_rich_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `components_slices_bottom_actions`
--
ALTER TABLE `components_slices_bottom_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `components_slices_bottom_actions_components`
--
ALTER TABLE `components_slices_bottom_actions_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `components_slices_feature_columns`
--
ALTER TABLE `components_slices_feature_columns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components_slices_feature_columns_groups`
--
ALTER TABLE `components_slices_feature_columns_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_slices_feature_columns_groups_components`
--
ALTER TABLE `components_slices_feature_columns_groups_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components_slices_feature_rows`
--
ALTER TABLE `components_slices_feature_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components_slices_feature_rows_components`
--
ALTER TABLE `components_slices_feature_rows_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `components_slices_feature_rows_groups`
--
ALTER TABLE `components_slices_feature_rows_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_slices_feature_rows_groups_components`
--
ALTER TABLE `components_slices_feature_rows_groups_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `components_slices_heroes`
--
ALTER TABLE `components_slices_heroes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_slices_heroes_components`
--
ALTER TABLE `components_slices_heroes_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `components_slices_large_videos`
--
ALTER TABLE `components_slices_large_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_slices_testimonials`
--
ALTER TABLE `components_slices_testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `components_slices_testimonials_groups`
--
ALTER TABLE `components_slices_testimonials_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `components_slices_testimonials_groups_components`
--
ALTER TABLE `components_slices_testimonials_groups_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `globals`
--
ALTER TABLE `globals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `globals_components`
--
ALTER TABLE `globals_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lead_form_submissions`
--
ALTER TABLE `lead_form_submissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages_components`
--
ALTER TABLE `pages_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `solutions_components`
--
ALTER TABLE `solutions_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_permission`
--
ALTER TABLE `strapi_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `strapi_role`
--
ALTER TABLE `strapi_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `components_elements_logos_components`
--
ALTER TABLE `components_elements_logos_components`
  ADD CONSTRAINT `components_elements_logo_id_fk` FOREIGN KEY (`components_elements_logo_id`) REFERENCES `components_elements_logos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_elements_navbar_columns_components`
--
ALTER TABLE `components_elements_navbar_columns_components`
  ADD CONSTRAINT `components_elements_navbar_column_id_fk` FOREIGN KEY (`components_elements_navbar_column_id`) REFERENCES `components_elements_navbar_columns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_elements_navbar_sections_components`
--
ALTER TABLE `components_elements_navbar_sections_components`
  ADD CONSTRAINT `components_elements_navbar_section_id_fk` FOREIGN KEY (`components_elements_navbar_section_id`) REFERENCES `components_elements_navbar_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_elements_plans_components`
--
ALTER TABLE `components_elements_plans_components`
  ADD CONSTRAINT `components_elements_plan_id_fk` FOREIGN KEY (`components_elements_plan_id`) REFERENCES `components_elements_plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_layout_footers_components`
--
ALTER TABLE `components_layout_footers_components`
  ADD CONSTRAINT `components_layout_footer_id_fk` FOREIGN KEY (`components_layout_footer_id`) REFERENCES `components_layout_footers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_layout_navbars_components`
--
ALTER TABLE `components_layout_navbars_components`
  ADD CONSTRAINT `components_layout_navbar_id_fk` FOREIGN KEY (`components_layout_navbar_id`) REFERENCES `components_layout_navbars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_layout_navbar_extendeds_components`
--
ALTER TABLE `components_layout_navbar_extendeds_components`
  ADD CONSTRAINT `components_layout_navbar_extended_id_fk` FOREIGN KEY (`components_layout_navbar_extended_id`) REFERENCES `components_layout_navbar_extendeds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_links_footer_sections_components`
--
ALTER TABLE `components_links_footer_sections_components`
  ADD CONSTRAINT `components_links_footer_section_id_fk` FOREIGN KEY (`components_links_footer_section_id`) REFERENCES `components_links_footer_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_sections_lead_forms_components`
--
ALTER TABLE `components_sections_lead_forms_components`
  ADD CONSTRAINT `components_sections_lead_form_id_fk` FOREIGN KEY (`components_sections_lead_form_id`) REFERENCES `components_sections_lead_forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_sections_pricings_components`
--
ALTER TABLE `components_sections_pricings_components`
  ADD CONSTRAINT `components_sections_pricing_id_fk` FOREIGN KEY (`components_sections_pricing_id`) REFERENCES `components_sections_pricings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_slices_bottom_actions_components`
--
ALTER TABLE `components_slices_bottom_actions_components`
  ADD CONSTRAINT `components_slices_bottom_action_id_fk` FOREIGN KEY (`components_slices_bottom_action_id`) REFERENCES `components_slices_bottom_actions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_slices_feature_columns_groups_components`
--
ALTER TABLE `components_slices_feature_columns_groups_components`
  ADD CONSTRAINT `components_slices_feature_columns_group_id_fk` FOREIGN KEY (`components_slices_feature_columns_group_id`) REFERENCES `components_slices_feature_columns_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_slices_feature_rows_components`
--
ALTER TABLE `components_slices_feature_rows_components`
  ADD CONSTRAINT `components_slices_feature_row_id_fk` FOREIGN KEY (`components_slices_feature_row_id`) REFERENCES `components_slices_feature_rows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_slices_feature_rows_groups_components`
--
ALTER TABLE `components_slices_feature_rows_groups_components`
  ADD CONSTRAINT `components_slices_feature_rows_group_id_fk` FOREIGN KEY (`components_slices_feature_rows_group_id`) REFERENCES `components_slices_feature_rows_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_slices_heroes_components`
--
ALTER TABLE `components_slices_heroes_components`
  ADD CONSTRAINT `components_slices_hero_id_fk` FOREIGN KEY (`components_slices_hero_id`) REFERENCES `components_slices_heroes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `components_slices_testimonials_groups_components`
--
ALTER TABLE `components_slices_testimonials_groups_components`
  ADD CONSTRAINT `components_slices_testimonials_group_id_fk` FOREIGN KEY (`components_slices_testimonials_group_id`) REFERENCES `components_slices_testimonials_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globals_components`
--
ALTER TABLE `globals_components`
  ADD CONSTRAINT `global_id_fk` FOREIGN KEY (`global_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages_components`
--
ALTER TABLE `pages_components`
  ADD CONSTRAINT `page_id_fk` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `solutions_components`
--
ALTER TABLE `solutions_components`
  ADD CONSTRAINT `solution_id_fk` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
