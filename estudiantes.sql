-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2021 a las 01:34:55
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clase24x_prueba`
--

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corregimientos_panama`
--

CREATE TABLE `corregimientos_panama` (
  `id_num_correg` int(5) NOT NULL,
  `nombre_correg` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `id_num_dist` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `corregimientos_panama`
--

INSERT INTO `corregimientos_panama` (`id_num_correg`, `nombre_correg`, `id_num_dist`) VALUES
(1, 'Bocas del Toro', 1),
(2, 'Bastimentos', 1),
(3, 'Cauchero', 1),
(4, 'Punta Laurel', 1),
(5, 'Tierra Oscura', 1),
(6, 'Changuinola', 2),
(7, 'Almirante', 2),
(8, 'Cochigro', 2),
(9, 'El Empalme', 2),
(10, 'Guabito', 2),
(11, 'La Gloria', 2),
(12, 'Las Delicias', 2),
(13, 'Las Tablas', 2),
(14, 'Nance de Risco', 2),
(15, 'El Teribe', 2),
(16, 'Valle del Risco', 2),
(17, 'Valle de Agua', 2),
(18, 'Chiriquí Grande', 3),
(19, 'Bajo Cedro', 3),
(20, 'Miramar', 3),
(21, 'Punta Peña', 3),
(22, 'Punta Robalo', 3),
(23, 'Rambala', 3),
(24, 'Aguadulce', 4),
(25, 'Barrios Unidos', 4),
(26, 'El Cristo', 4),
(27, 'El Roble', 4),
(28, 'Pocrí', 4),
(29, 'Antón', 5),
(30, 'Caballero', 5),
(31, 'Cabuya', 5),
(32, 'El Chirú', 5),
(33, 'El Retiro', 5),
(34, 'El Valle', 5),
(35, 'Juan Díaz', 5),
(36, 'Río Hato', 5),
(37, 'San Juan de Dios', 5),
(38, 'Santa Rita', 5),
(39, 'La Pintada', 6),
(40, 'El Harino', 6),
(41, 'El Potrero', 6),
(42, 'Las Lomas', 6),
(43, 'Llano Grande', 6),
(44, 'Piedras Gordas', 6),
(45, 'Natá', 7),
(46, 'Capellanía', 7),
(47, 'El Caño', 7),
(48, 'Guzmán', 7),
(49, 'Las Huacas', 7),
(50, 'Toza', 7),
(51, 'Olá', 8),
(52, 'El Copé', 8),
(53, 'El Palmar', 8),
(54, 'El Picacho', 8),
(55, 'La Pava', 8),
(56, 'Penonomé', 9),
(57, 'Cañaveral', 9),
(58, 'Coclé', 9),
(59, 'Chiguirí Arriba', 9),
(60, 'El Coco', 9),
(61, 'El Valle de San Miguel', 9),
(62, 'Pajonal', 9),
(63, 'Río Grande', 9),
(64, 'Río Índio', 9),
(65, 'Toabré', 9),
(66, 'Tulú', 9),
(67, 'Barrio Norte', 10),
(68, 'Barrio Sur', 10),
(69, 'Buena Vista', 10),
(70, 'Cativá', 10),
(71, 'Ciricito', 10),
(72, 'Cristósbal', 10),
(73, 'Escobal', 10),
(74, 'Limón', 10),
(75, 'Nueva Providencia', 10),
(76, 'Puerto Pilón', 10),
(77, 'Sabanitas', 10),
(78, 'Salamanca', 10),
(79, 'San Juan', 10),
(80, 'Santa Rosa', 10),
(81, 'Nuevo Chagres', 11),
(82, 'Achiote', 11),
(83, 'El Guabo', 11),
(84, 'La Encantada', 11),
(85, 'Palmas Bellas', 11),
(86, 'Piña', 11),
(87, 'Salud', 11),
(88, 'Miguel de la Borda', 12),
(89, 'Coclé del Norte', 12),
(90, 'El Guásimos', 12),
(91, 'Gobea', 12),
(92, 'Río Índio', 12),
(93, 'San José del General', 12),
(94, 'Portobelo', 13),
(95, 'Cacique', 13),
(96, 'Garrote', 13),
(97, 'Isla Grande', 13),
(98, 'María Chiquita', 13),
(99, 'Palenque', 14),
(100, 'Cuango', 14),
(101, 'Miramar', 14),
(102, 'Nombre de Dios', 14),
(103, 'Palmira', 14),
(104, 'Playa Chiquita', 14),
(105, 'Santa Isabel', 14),
(106, 'Viento Frío', 14),
(107, 'Alanje', 15),
(108, 'Divalá', 15),
(109, 'Canta Gallo', 15),
(110, 'El Tejar', 15),
(111, 'Guarumal', 15),
(112, 'Nuevo México', 15),
(113, 'Querévalo', 15),
(114, 'Palo Grande', 15),
(115, 'Santo Tomás', 15),
(116, 'Puerto Armuelles', 16),
(117, 'Baco', 16),
(118, 'Limones', 16),
(119, 'Progreso', 16),
(120, 'Rodolfo Aguilar Delgado', 16),
(121, 'Boquerón', 17),
(122, 'Bágala', 17),
(123, 'Coordillera', 17),
(124, 'Guabal', 17),
(125, 'Guayabal', 17),
(126, 'Paraíso', 17),
(127, 'Pedregal', 17),
(128, 'Tijeras', 17),
(129, 'Bajo Boquete', 18),
(130, 'Alto Boquete', 18),
(131, 'Caldera', 18),
(132, 'Jaramillo', 18),
(133, 'Los Naranjos', 18),
(134, 'Palmira', 18),
(135, 'La Concepción', 19),
(136, 'Aserrío de Gariché', 19),
(137, 'Bugaba', 19),
(138, 'Cerro Punta', 19),
(139, 'El Bongo', 19),
(140, 'Gómez', 19),
(141, 'La Estrella', 19),
(142, 'San Andrés', 19),
(143, 'Santa Marta', 19),
(144, 'Santa Rosa', 19),
(145, 'Santo Domingo', 19),
(146, 'Solano', 19),
(147, 'Sortová', 19),
(148, 'Volcán', 19),
(149, 'David', 20),
(150, 'Bijagual', 20),
(151, 'Cochea', 20),
(152, 'Chiriquí', 20),
(153, 'Guacá', 20),
(154, 'Las Lomas', 20),
(155, 'Pedregal', 20),
(156, 'San Carlos', 20),
(157, 'San Pablo Nuevo', 20),
(158, 'San Pablo Viejo', 20),
(159, 'Dolega', 21),
(160, 'Dos Ríos', 21),
(161, 'Los Algarrobos', 21),
(162, 'Los Anastacios', 21),
(163, 'Potrerillos', 21),
(164, 'Potrerillos Abajo', 21),
(165, 'Rovira', 21),
(166, 'Tinajas', 21),
(167, 'Gualaca', 22),
(168, 'Hornito', 22),
(169, 'Los Angeles', 22),
(170, 'Paja de Sombrero', 22),
(171, 'Rincón', 22),
(172, 'Remedios', 23),
(173, 'El Nancito', 23),
(174, 'El Porvenir', 23),
(175, 'El Puerto', 23),
(176, 'Santa Lucía', 23),
(177, 'Río Sereno', 24),
(178, 'Breñon', 24),
(179, 'Cañas Gordas', 24),
(180, 'Dominical', 24),
(181, 'Monte Lirio', 24),
(182, 'Plaza de Caisán', 24),
(183, 'Santa Cruz', 24),
(184, 'Santa Clara', 24),
(185, 'Las Lajas', 25),
(186, 'Lajas Adentro', 25),
(187, 'Juay', 25),
(188, 'San Félix', 25),
(189, 'Santa Cruz', 25),
(190, 'Horconcitos', 26),
(191, 'Boca Chica', 26),
(192, 'Boca del Monte', 26),
(193, 'San Juan', 26),
(194, 'San Lorenzo', 26),
(195, 'Tolé', 27),
(196, 'Bella Vista', 27),
(197, 'Cerro Viejo', 27),
(198, 'El Cristo', 27),
(199, 'Justo Fidel Palacios', 27),
(200, 'Lajas de Tolé', 27),
(201, 'Potrero de Caña', 27),
(202, 'Quebrada de Piedra', 27),
(203, 'Veladero', 27),
(204, 'La Palma', 28),
(205, 'Agua Fría', 28),
(206, 'Camoganti', 28),
(207, 'Chepigana', 28),
(208, 'Cucunatí', 28),
(209, 'Garachiné', 28),
(210, 'Jaqué', 28),
(211, 'Puerto Piña', 28),
(212, 'Río Congo', 28),
(213, 'Río Iglesias', 28),
(214, 'Sambú', 28),
(215, 'Setegantí', 28),
(216, 'Taimatí', 28),
(217, 'Tucutí', 28),
(218, 'Río Congo Arriba', 28),
(219, 'Santa Fé', 28),
(220, 'El Real de Santa María', 29),
(221, 'Boca de Cupe', 29),
(222, 'Paya', 29),
(223, 'Pinogana', 29),
(224, 'Púcuro', 29),
(225, 'Yape', 29),
(226, 'Yaviza', 29),
(227, 'Metetí', 29),
(228, 'Wargandí', 29),
(229, 'Chitré', 30),
(230, 'La Arena', 30),
(231, 'Monagrillo', 30),
(232, 'LLano Bonito', 30),
(233, 'San Juan Bautista', 30),
(234, 'Las Minas', 31),
(235, 'Chepo', 31),
(236, 'Chumical', 31),
(237, 'El Toro', 31),
(238, 'Leones', 31),
(239, 'Quebrada del Rosario', 31),
(240, 'Quebrada El Ciprión', 31),
(241, 'Los Pozos', 32),
(242, 'El Capurí', 32),
(243, 'El Calabacito', 32),
(244, 'El Cedro', 32),
(245, 'La Arena', 32),
(246, 'La Pitaloza', 32),
(247, 'Los Cerritos', 32),
(248, 'Los Cerros de Paja', 32),
(249, 'Las Llanas', 32),
(250, 'Ocú', 33),
(251, 'Cerro Largo', 33),
(252, 'El Tijera', 33),
(253, 'Entradero del Castillo', 33),
(254, 'Los LLanos', 33),
(255, 'Llano Grande', 33),
(256, 'Menchaca', 33),
(257, 'Peñas Chatas', 33),
(258, 'Parita', 34),
(259, 'Cabuya', 34),
(260, 'Los Castillos', 34),
(261, 'LLano de la Cruz', 34),
(262, 'París', 34),
(263, 'Portobelillo', 34),
(264, 'Potuga', 34),
(265, 'Pesé', 35),
(266, 'Las Cabras', 35),
(267, 'Los Pájaros', 35),
(268, 'El Barrero', 35),
(269, 'El Pedregoso', 35),
(270, 'El Ciruelo', 35),
(271, 'Sabanagrande', 35),
(272, 'Rincón Hondo', 35),
(273, 'Santa María', 36),
(274, 'Chupampa', 36),
(275, 'El Rincón', 36),
(276, 'El Limón', 36),
(277, 'Los Canelos', 36),
(278, 'Guararé', 37),
(279, 'El Espinal', 37),
(280, 'El Macano', 37),
(281, 'Guararé Arriba', 37),
(282, 'La Enea', 37),
(283, 'La Pasera', 37),
(284, 'Las Trancas', 37),
(285, 'Llano Abajo', 37),
(286, 'El Hato', 37),
(287, 'Perales', 37),
(288, 'Las Tablas', 38),
(289, 'Bajo Corral', 38),
(290, 'Bayano', 38),
(291, 'El Carate', 38),
(292, 'El Cocal', 38),
(293, 'El Manantial', 38),
(294, 'El Muñoz', 38),
(295, 'El Pedregoso', 38),
(296, 'La Laja', 38),
(297, 'La Miel', 38),
(298, 'La Palma', 38),
(299, 'La Tiza', 38),
(300, 'Las Palmitas', 38),
(301, 'Las Tablas Abajo', 38),
(302, 'Nuario', 38),
(303, 'Palmira', 38),
(304, 'Peña Blanca', 38),
(305, 'Río Hondo', 38),
(306, 'San José', 38),
(307, 'San Miguel', 38),
(308, 'Santo Domingo', 38),
(309, 'El Sesteadero', 38),
(310, 'Valle Rico', 38),
(311, 'Vallerriquito', 38),
(312, 'La Villa de los Santos', 39),
(313, 'El Ejido', 39),
(314, 'El Guásimo', 39),
(315, 'La Colorada', 39),
(316, 'La Espigadilla', 39),
(317, 'Las Cruces', 39),
(318, 'Las Guabas', 39),
(319, 'Los Ángeles', 39),
(320, 'Los Olivos', 39),
(321, 'Llano Largo', 39),
(322, 'Sabanagrande', 39),
(323, 'San Agustín', 39),
(324, 'Santa Ana', 39),
(325, 'Tres Quebradas', 39),
(326, 'Villa Lourdes', 39),
(327, 'Agua Buena', 39),
(328, 'Macaracas', 40),
(329, 'Bahía Honda', 40),
(330, 'Bajos de Guera', 40),
(331, 'Corozal', 40),
(332, 'Chupá', 40),
(333, 'El Cedro', 40),
(334, 'Espino Amarillo', 40),
(335, 'La Mesa', 40),
(336, 'Llano de Piedras', 40),
(337, 'Las Palmas', 40),
(338, 'Mogollón', 40),
(339, 'Pedasí', 41),
(340, 'Los Asientos', 41),
(341, 'Mariabé', 41),
(342, 'Purio', 41),
(343, 'Oria Arriba', 41),
(344, 'Pocrí', 42),
(345, 'El Cañafístulo', 42),
(346, 'Lajamina', 42),
(347, 'Paraíso', 42),
(348, 'Paritilla', 42),
(349, 'Tonosí', 43),
(350, 'Altos de Guera', 43),
(351, 'Cañas', 43),
(352, 'El Bebedero', 43),
(353, 'El Cacao', 43),
(354, 'El Cortezo', 43),
(355, 'Flores', 43),
(356, 'Guánico', 43),
(357, 'La Tronosa', 43),
(358, 'Cambutal', 43),
(359, 'Isla de Cañas', 43),
(360, 'San Miguel', 44),
(361, 'La Ensenada', 44),
(362, 'La Esmeralda', 44),
(363, 'La Guinea', 44),
(364, 'Pedro González', 44),
(365, 'Saboga', 44),
(366, 'Chepo', 45),
(367, 'Cañita', 45),
(368, 'Chepillo', 45),
(369, 'El Llano', 45),
(370, 'Las Margaritas', 45),
(371, 'Santa Cruz de Chinina', 45),
(372, 'Tortí', 45),
(373, 'Madugandí', 45),
(374, 'Chimán', 46),
(375, 'Brujas', 46),
(376, 'Gonzalo Vásquez', 46),
(377, 'Pásiga', 46),
(378, 'Unión Santeña', 46),
(379, '24 de Diciembre', 47),
(380, 'Alcalde Díaz', 47),
(381, 'Ancón', 47),
(382, 'Betania', 47),
(383, 'Bella Vista', 47),
(384, 'Calidonia', 47),
(385, 'Caimitillo', 47),
(386, 'Chilibre', 47),
(387, 'El Chorrillo', 47),
(388, 'Curundú', 47),
(389, 'Ernesto Córdoba Campos', 47),
(390, 'Juan Díaz', 47),
(391, 'Las Cumbres', 47),
(392, 'Las Mañanitas', 47),
(393, 'Pacora', 47),
(394, 'Parque Lefevre', 47),
(395, 'Pedregal', 47),
(396, 'Pueblo Nuevo', 47),
(397, 'Río Abajo', 47),
(398, 'San Felipe', 47),
(399, 'San Francisco', 47),
(400, 'San Martín', 47),
(401, 'Santa Ana', 47),
(402, 'Tocumen', 47),
(403, 'Amelia Denis de Icaza', 48),
(404, 'Belisario Porras', 48),
(405, 'José Domingo Espinar', 48),
(406, 'Mateo Iturralde', 48),
(407, 'Victoriano Lorenzo', 48),
(408, 'Arnulfo Arias', 48),
(409, 'Belisario Frías', 48),
(410, 'Omar Torrijos', 48),
(411, 'Rufina Alfaro', 48),
(412, 'Taboga', 49),
(413, 'Otoque Occidente', 49),
(414, 'Otoque Oriente', 49),
(415, 'Atalaya', 50),
(416, 'El Barrito', 50),
(417, 'La Carrillo', 50),
(418, 'La Montañuela', 50),
(419, 'San Antonio', 50),
(420, 'Calobre', 51),
(421, 'Barnizal', 51),
(422, 'Chitra', 51),
(423, 'El Cocla', 51),
(424, 'El Potrero', 51),
(425, 'La Laguna', 51),
(426, 'La Raya de Calobre', 51),
(427, 'La Tetilla', 51),
(428, 'La Yeguada', 51),
(429, 'Las Guías', 51),
(430, 'Monjarás', 51),
(431, 'San José', 51),
(432, 'Cañazas', 52),
(433, 'Cerro de Plata', 52),
(434, 'El Aromillo', 52),
(435, 'El Picador', 52),
(436, 'Las Cruces', 52),
(437, 'Los Valles', 52),
(438, 'San José', 52),
(439, 'San Marcelo', 52),
(440, 'La Mesa', 53),
(441, 'Bisvalles', 53),
(442, 'Boró', 53),
(443, 'El Higo', 53),
(444, 'Los Milagros', 53),
(445, 'Llano Grande', 53),
(446, 'San Bartolo', 53),
(447, 'Las Palmas', 54),
(448, 'Cerro de Casa', 54),
(449, 'Corozal', 54),
(450, 'El María', 54),
(451, 'El Prado', 54),
(452, 'El Rincón', 54),
(453, 'Lolá', 54),
(454, 'Manuel Amador Guerrero', 54),
(455, 'Pixvae', 54),
(456, 'Puerto Vidal', 54),
(457, 'San Martín de Porres', 54),
(458, 'Viguí', 54),
(459, 'Zapotillo', 54),
(460, 'Mariato', 55),
(461, 'Arenas', 55),
(462, 'El Cacao', 55),
(463, 'Quebro', 55),
(464, 'Tebario', 55),
(465, 'Montijo', 56),
(466, 'Cébaco', 56),
(467, 'Costa Hermosa', 56),
(468, 'Gobernadora', 56),
(469, 'La Garceana', 56),
(470, 'Leones', 56),
(471, 'Pilón', 56),
(472, 'Unión del Norte', 56),
(473, 'Río de Jesús', 57),
(474, '14 de Noviembre', 57),
(475, 'Las Huacas', 57),
(476, 'Los Castillos', 57),
(477, 'Utira', 57),
(478, 'San Francisco', 58),
(479, 'Corral Falso', 58),
(480, 'Los Hatillos', 58),
(481, 'Remance', 58),
(482, 'San Juan', 58),
(483, 'San José', 58),
(484, 'Santa Fé', 59),
(485, 'Calovébora', 59),
(486, 'El Alto', 59),
(487, 'El Cuay', 59),
(488, 'El Pantano', 59),
(489, 'Gatuncito', 59),
(490, 'Río Luis', 59),
(491, 'Rubén Cantú', 59),
(492, 'Santiago', 60),
(493, 'Canto del Llano', 60),
(494, 'Carlos Santana Ávila', 60),
(495, 'Edwin Fábrega', 60),
(496, 'El Llanito', 60),
(497, 'La Colorada', 60),
(498, 'La Peña', 60),
(499, 'La Raya de Santa María', 60),
(500, 'La Soledad', 60),
(501, 'Los Algarrobos', 60),
(502, 'Ponuga', 60),
(503, 'San Martín de Porres', 60),
(504, 'San Pedro del Espino', 60),
(505, 'Rincón Largo', 60),
(506, 'Urracá', 60),
(507, 'Soná', 61),
(508, 'Bahía Honda', 61),
(509, 'Calidonia', 61),
(510, 'Cativé', 61),
(511, 'El Marañon', 61),
(512, 'Guarumal', 61),
(513, 'Hicaco', 61),
(514, 'La Soledad', 61),
(515, 'Quebrada de Oro', 61),
(516, 'Río Grande', 61),
(517, 'Rodeo Viejo', 61),
(518, 'Ailigandi', 62),
(519, 'Narganá', 62),
(520, 'Puerto Obaldía', 62),
(521, 'Tubuala', 62),
(522, 'Cirilo Guaynora', 63),
(523, 'Lajas Blancas', 63),
(524, 'Manuel Ortega', 63),
(525, 'Jingurundó', 64),
(526, 'Río Sabalo', 64),
(527, 'Soloy', 65),
(528, 'Boca de Balsa', 65),
(529, 'Cerro Banco', 65),
(530, 'Cerro Patena', 65),
(531, 'Camarón Arriba', 65),
(532, 'Emplanada de Chorcha', 65),
(533, 'Namnoní', 65),
(534, 'Niba', 65),
(535, 'Bisira', 66),
(536, 'Burí', 66),
(537, 'Kankintú', 66),
(538, 'Guariviara', 66),
(539, 'Guoroní', 66),
(540, 'Mununí', 66),
(541, 'Piedra Roja', 66),
(542, 'Tuwai', 66),
(543, 'Man Creek', 66),
(544, 'Kusapín', 67),
(545, 'Calovebora/Santa Catalina', 67),
(546, 'Bahía Azul', 67),
(547, 'Río Chiriquí', 67),
(548, 'Loma Yuca', 67),
(549, 'Tobobé', 67),
(550, 'Valle Bonito', 67),
(551, 'Hato Pilón', 68),
(552, 'Cascabel', 68),
(553, 'Hato Corotú', 68),
(554, 'Hato Culantro', 68),
(555, 'Hato Jobo', 68),
(556, 'Hato Julí', 68),
(557, 'Quebrada de Loro', 68),
(558, 'Salto Dupí', 68),
(559, 'Cerro Iglesias', 69),
(560, 'Lajero', 69),
(561, 'Hato Chamí', 69),
(562, 'Susama', 69),
(563, 'Jadeberi', 69),
(564, 'Chichica', 70),
(565, 'Alto Caballero', 70),
(566, 'Bagama', 70),
(567, 'Cerro Caña', 70),
(568, 'Cerro Puerco', 70),
(569, 'Krua', 70),
(570, 'Maraca', 70),
(571, 'Nibra', 70),
(572, 'Peña Blanca', 70),
(573, 'Roka', 70),
(574, 'Sitio Prado', 70),
(575, 'Umaní', 70),
(576, 'Buenos Aires', 71),
(577, 'Agua de Salud', 71),
(578, 'Alto de Jesús', 71),
(579, 'Cerro Pelado', 71),
(580, 'El Bale', 71),
(581, 'El Paredón', 71),
(582, 'El Piro', 71),
(583, 'Guayabito', 71),
(584, 'Guibale', 71),
(585, 'Arraiján', 72),
(586, 'Burunga', 72),
(587, 'Cerro Silvestre', 72),
(588, 'Juan Demóstenes Arosemena', 72),
(589, 'Nuevo Emperador', 72),
(590, 'Santa Clara', 72),
(591, 'Veracruz', 72),
(592, 'Vista Alegre', 72),
(593, 'Capira', 73),
(594, 'Caimito', 73),
(595, 'Campana', 73),
(596, 'Cermeño', 73),
(597, 'Cirí de los Sotos', 73),
(598, 'Cirí Grande', 73),
(599, 'El Cacao', 73),
(600, 'La Trinidad', 73),
(601, 'Las Ollas Arriba', 73),
(602, 'Lídice', 73),
(603, 'Villa Carmen', 73),
(604, 'Villa Rosario', 73),
(605, 'Santa Rosa', 73),
(606, 'Chame', 74),
(607, 'Bejuco', 74),
(608, 'Buenos Aires', 74),
(609, 'Cabuya', 74),
(610, 'Chicá', 74),
(611, 'El Líbano', 74),
(612, 'Las Lajas', 74),
(613, 'Nueva Gorgona', 74),
(614, 'Punta Chame', 74),
(615, 'Sajalices', 74),
(616, 'Sorá', 74),
(617, 'La Chorrera', 75),
(618, 'Barrio Balboa', 75),
(619, 'Barrio Colón', 75),
(620, 'Amador', 75),
(621, 'Arosemena', 75),
(622, 'El Arado', 75),
(623, 'El Coco', 75),
(624, 'Feuillet', 75),
(625, 'Guadalupe', 75),
(626, 'Herrera', 75),
(627, 'Hurtado', 75),
(628, 'Iturralde', 75),
(629, 'La Represa', 75),
(630, 'Los Díaz', 75),
(631, 'Mendoza', 75),
(632, 'Obaldía', 75),
(633, 'Playa Leona', 75),
(634, 'Puerto Caimito', 75),
(635, 'Santa Rita', 75),
(636, 'San Carlos', 76),
(637, 'El Espino', 76),
(638, 'El Higo', 76),
(639, 'Guayabito', 76),
(640, 'La Ermita', 76),
(641, 'La Laguna', 76),
(642, 'Las Uvas', 76),
(643, 'Los Llanitos', 76),
(644, 'San José', 76);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento_u_nacional`
--

CREATE TABLE `departamento_u_nacional` (
  `id` int(11) NOT NULL,
  `opcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `relacion` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `departamento_u_nacional`
--

INSERT INTO `departamento_u_nacional` (`id`, `opcion`, `relacion`) VALUES
(1, 'Finanzas, Banca, Seguros y Negocios', 1),
(2, 'Control Contable y Auditoría', 1),
(3, 'Sistemas de Información Contable Administrativa', 1),
(4, 'Desarrollo de la Empresa', 1),
(5, 'La Empresa y su Organización', 1),
(6, 'Contabilidad Financiera', 1),
(7, 'Contabilidad Administrativa', 1),
(8, 'Contabilidades Especiales', 1),
(9, 'Mercadeo', 1),
(10, 'Administración de Empresas Turísticas', 1),
(11, 'Administración en Empresas Marítimas', 1),
(12, 'Recursos Humanos', 1),
(13, 'Gerencia Secretarial y de Oficina Bilingüe', 1),
(14, 'Administración Pública', 2),
(15, 'Relaciones Internacionales', 2),
(16, 'Trabajo Social', 2),
(17, 'Arte', 3),
(18, 'Diseño', 3),
(19, 'Planeamiento', 3),
(20, 'Técnica', 3),
(21, 'Música', 4),
(22, 'Artes Visuales', 4),
(23, 'Danza', 4),
(24, 'Arte Teatral', 4),
(25, 'Desarrollo Agropecuario', 5),
(26, 'Ciencias de la Familia y del Desarrollo Comunitario', 5),
(27, 'Zootecnia', 5),
(28, 'Fitotecnia', 5),
(29, 'Suelo y Aguas', 5),
(30, 'Protección Vegetal', 5),
(31, 'Didáctica y Tecnología Educativa ', 6),
(32, 'Desarrollo Educativo', 6),
(33, 'Psicopedagogía ', 6),
(34, 'Evaluación e Investigación Educativa', 6),
(35, 'Currículo', 6),
(36, 'Administración y Supervisión Educativa ', 6),
(37, 'Orientación Educativa y Profesional ', 6),
(38, 'Física', 7),
(39, 'Matemática', 7),
(40, 'Estadística', 7),
(41, 'Fisiología y Comportamiento Animal', 7),
(42, 'Biología Marina y Limnología', 7),
(43, 'Zoología', 7),
(44, 'Botánica', 7),
(45, 'Genética y Biología Molecular', 7),
(46, 'Química Inorgánica', 7),
(47, 'Química Orgánica', 7),
(48, 'Química Física', 7),
(49, 'Química Analítica', 7),
(50, 'Bioquímica', 7),
(51, 'Ciencias y Tecnología de Alimentos', 7),
(52, 'Microbiología y Parasitología ', 7),
(53, 'Promoción, Medios y Tecnología', 8),
(54, 'Estructura de la Comunicación ', 8),
(60, 'Derecho Procesal ', 20),
(63, 'Teoría y Desarrollo Económico', 10),
(64, 'Análisis y Economía Aplicada', 10),
(65, 'Estadística Económica y Social', 10),
(66, 'Salud Mental', 11),
(67, 'Salud de Adultos', 11),
(68, 'Gestión de los Servicios de Enfermería y Salud', 11),
(69, 'Enfermería Materno Infantil', 11),
(70, 'Enfermería en Salud Pública', 11),
(71, 'Farmacia Clínica', 12),
(72, 'Química Medicinal  y Farmacognosia', 12),
(73, 'Ciencias y Tecnología Farmacéutica', 12),
(74, 'Bibliotecología, Archivología y Documentación', 13),
(75, 'Educación Física', 13),
(76, 'Español', 13),
(77, 'Filosofía', 13),
(78, 'Sociología', 13),
(79, 'Historia', 13),
(80, 'Geografía', 13),
(81, 'Inglés', 13),
(82, 'Francés', 13),
(83, 'Estudios Generales', 13),
(84, 'Electrónica y Comunicación', 14),
(85, 'Informática', 14),
(86, 'Anatomía y Embriología', 15),
(87, 'Bioquímica y Nutrición', 15),
(88, 'Ciencias de Laboratorio Clínico', 15),
(89, 'Cirugía', 15),
(90, 'Dietética y Nutrición Aplicada', 15),
(91, 'Farmacología ', 15),
(92, 'Fisiología Humana', 15),
(93, 'Ginecología y Obstetricia', 15),
(94, 'Histología', 15),
(95, 'Medicina', 15),
(96, 'Medicina Familiar y Comunitaria', 15),
(97, 'Medicina Preventiva y Social', 15),
(98, 'Microbiología Humana', 15),
(99, 'Patología Humana', 15),
(100, 'Pediatría', 15),
(102, 'Enfermedades Transmisibles y Salud Pública', 16),
(103, 'Patología Veterinaria(I)', 16),
(104, 'Morfología y Patología Veterinaria', 16),
(105, 'Clínica y Cirugía', 16),
(106, 'Producción y Bienestar Animal', 16),
(107, 'Clínica Integrada', 17),
(108, 'Ciencias Quirúrgicas', 17),
(109, 'Estomatología', 17),
(110, 'Odontología Integral del Niño y del Adolescente', 17),
(111, 'Odontologia Social', 17),
(112, 'Odontología Restauradora', 17),
(113, 'Investigación, Medición y Evaluación Psicológica', 18),
(114, 'Psicología Clínica y de la Salud', 18),
(115, 'Psicología Educativa y Escolar', 18),
(116, 'Psicología Industrial, Organizacional y Social', 18),
(117, 'Educación(I)', 19),
(118, 'Ciencias Políticas', 20),
(119, 'Metodología y Ciencias del Derecho', 20),
(120, 'Derecho Privado', 20),
(121, 'Derecho Público', 20),
(123, 'Ciencias Penales y Criminológicas', 20),
(124, 'Derecho Social', 20),
(131, 'Fundamentos de la Comunicación', 8),
(132, 'Ingeniería Civil', 21),
(133, 'Ingeniería en Tecnologías', 21),
(134, 'Prevención de Riesgos y Ambiente', 21),
(135, 'Ciencias de la Tierra', 21),
(136, 'Ciencias Ambientales', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distritos_panama`
--

CREATE TABLE `distritos_panama` (
  `id_num_dist` int(5) NOT NULL,
  `nombre_dist` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `id_num_prov` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `distritos_panama`
--

INSERT INTO `distritos_panama` (`id_num_dist`, `nombre_dist`, `id_num_prov`) VALUES
(1, 'Bocas del Toro', 1),
(2, 'Changuinola', 1),
(3, 'Chiriquí Grande', 1),
(4, 'Aguadulce', 2),
(5, 'Antón', 2),
(6, 'La Pintada', 2),
(7, 'Natá', 2),
(8, 'Olá', 2),
(9, 'Penonomé', 2),
(10, 'Colón', 3),
(11, 'Chagres', 3),
(12, 'Donoso', 3),
(13, 'Portobelo', 3),
(14, 'Santa Isabel', 3),
(15, 'Alanje', 4),
(16, 'Barú', 4),
(17, 'Boquerón', 4),
(18, 'Boquete', 4),
(19, 'Bugaba', 4),
(20, 'David', 4),
(21, 'Dolega', 4),
(22, 'Gualaca', 4),
(23, 'Remedios', 4),
(24, 'Renacimiento', 4),
(25, 'San Félix', 4),
(26, 'San Lorenzo', 4),
(27, 'Tolé', 4),
(28, 'Chepigana', 5),
(29, 'Pinogana', 5),
(30, 'Chitré', 6),
(31, 'Las Minas', 6),
(32, 'Los Pozos', 6),
(33, 'Ocú', 6),
(34, 'Parita', 6),
(35, 'Pesé', 6),
(36, 'Santa María', 6),
(37, 'Guararé', 7),
(38, 'Las Tablas', 7),
(39, 'Los Santos', 7),
(40, 'Macaracas', 7),
(41, 'Pedasí', 7),
(42, 'Pocrí', 7),
(43, 'Tonosí', 7),
(44, 'Balboa', 8),
(45, 'Chepo', 8),
(46, 'Chimán', 8),
(47, 'Panamá', 8),
(48, 'San Miguelito', 8),
(49, 'Taboga', 8),
(50, 'Atalaya', 9),
(51, 'Calobre', 9),
(52, 'Cañazas', 9),
(53, 'La Mesa', 9),
(54, 'Las Palmas', 9),
(55, 'Mariato', 9),
(56, 'Montijo', 9),
(57, 'Río de Jesús', 9),
(58, 'San Francisco', 9),
(59, 'Santa Fé', 9),
(60, 'Santiago', 9),
(61, 'Soná', 9),
(62, 'Desconocido', 10),
(63, 'Cémaco', 11),
(64, 'Sambú', 11),
(65, 'Besikó', 12),
(66, 'Kankintú', 12),
(67, 'Kusapín', 12),
(68, 'Mironí', 12),
(69, 'Nole Düima', 12),
(70, 'Müna', 12),
(71, 'Ñürüm', 12),
(72, 'Arraiján', 13),
(73, 'Capira', 13),
(74, 'Chame', 13),
(75, 'La Chorrera', 13),
(76, 'San Carlos', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades_u_nacional`
--

CREATE TABLE `facultades_u_nacional` (
  `id` int(11) NOT NULL,
  `opcion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `facultades_u_nacional`
--

INSERT INTO `facultades_u_nacional` (`id`, `opcion`) VALUES
(1, 'Administración de Empresas y Contabilidad'),
(2, 'Administración Pública'),
(3, 'Arquitectura'),
(4, 'Bellas Artes'),
(5, 'Ciencias Agropecuarias'),
(6, 'Ciencias de la Educación'),
(7, 'Ciencias Naturales, Exactas y Tecnología'),
(8, 'Comunicación Social'),
(10, 'Economía'),
(11, 'Enfermería'),
(12, 'Farmacia'),
(13, 'Humanidades'),
(14, 'Informática, Electrónica y Comunicación'),
(15, 'Medicina'),
(16, 'Medicina Veterinaria'),
(17, 'Odontología'),
(18, 'Psicología'),
(19, 'Filosofía, Letras y Educación(I)'),
(20, 'Derecho y Ciencias Políticas'),
(21, 'Ingeniería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(22) NOT NULL,
  `cedula` varchar(22) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `sexo` varchar(2) NOT NULL,
  `Provincia` varchar(55) NOT NULL,
  `Distrito` varchar(55) NOT NULL,
  `corregimiento` varchar(55) NOT NULL,
  `facultad` varchar(55) NOT NULL,
  `carrera` varchar(55) NOT NULL,
  `anio` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `cedula`, `nombre`, `sexo`, `Provincia`, `Distrito`, `corregimiento`, `facultad`, `carrera`, `anio`) VALUES
(6, '9-573-1435', 'Pedro', 'M', 'Veraguas', 'La Mesa', 'Bisvalles', 'Arquitectura', 'Arte', '2013'),
(7, '9-123-4321', 'Marta', 'F', 'Herrera', 'Chitré', 'La Arena', 'Administración Pública', 'Administración Pública', '2015'),
(8, '8-651-871', 'Carmen', 'F', 'Panamá', 'San Miguelito', 'Omar Torrijos', 'Economía', 'Análisis y Economía Aplicada', '2013');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias_panama`
--

CREATE TABLE `provincias_panama` (
  `id_num_prov` int(5) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `provincias_panama`
--

INSERT INTO `provincias_panama` (`id_num_prov`, `nombre`) VALUES
(1, 'Bocas del Toro'),
(2, 'Coclé'),
(3, 'Colón'),
(4, 'Chiriquí'),
(5, 'Darién'),
(6, 'Herrera'),
(7, 'Los Santos'),
(8, 'Panamá'),
(9, 'Veraguas'),
(10, 'Guna Yala'),
(11, 'Emberá Wounaan'),
(12, 'Ngobe-Bugle'),
(13, 'Panamá Oeste');

-- --------------------------------------------------------


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `facultades_u_nacional`
--
ALTER TABLE `facultades_u_nacional`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `departamento_u_nacional`
  ADD PRIMARY KEY (`id`);
--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provincias_panama`
--
ALTER TABLE `provincias_panama`
  ADD PRIMARY KEY (`id_num_prov`);
--
--
-- Indices de la tabla `distritos_panama`
--
ALTER TABLE `distritos_panama`
  ADD PRIMARY KEY (`id_num_dist`);

-- Indices de la tabla `corregimientos_panama`
--
ALTER TABLE `corregimientos_panama`
  ADD PRIMARY KEY (`id_num_correg`);



--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `corregimientos_panama`
--
ALTER TABLE `corregimientos_panama`
  MODIFY `id_num_correg` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=645;

--
-- AUTO_INCREMENT de la tabla `departamento_u_nacional`
--
ALTER TABLE `departamento_u_nacional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `distritos_panama`
--
ALTER TABLE `distritos_panama`
  MODIFY `id_num_dist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `facultades_u_nacional`
--
ALTER TABLE `facultades_u_nacional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `provincias_panama`
--
ALTER TABLE `provincias_panama`
  MODIFY `id_num_prov` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;



ALTER TABLE `corregimientos_panama`
  ADD CONSTRAINT fkd FOREIGN KEY(id_num_dist) REFERENCES distritos_panama(id_num_dist);
--
-- Indices de la tabla `departamento_u_nacional`
--


ALTER TABLE `departamento_u_nacional`
  ADD CONSTRAINT fkf FOREIGN KEY(relacion) REFERENCES facultades_u_nacional(id);



ALTER TABLE `distritos_panama`
  ADD CONSTRAINT fkp FOREIGN KEY(id_num_prov) REFERENCES provincias_panama(id_num_prov);




COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
