CREATE TABLE `nodos` (
  `id` int(100) NOT NULL,
  `padre` int(10) NOT NULL,
  `hijo` int(10) NOT NULL,
  `estado` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `nodos` (`id`, `padre`, `hijo`, `estado`) VALUES
(2, 45, 23, NULL),
(3, 45, 12, NULL),
(4, 23, 41, NULL),
(5, 23, 87, NULL),
(6, 41, 5, NULL),
(7, 41, 67, NULL),
(8, 67, 52, NULL),
(9, 67, 8, NULL),
(10, 87, 15, NULL),
(11, 87, 90, NULL),
(12, 12, 78, NULL),
(13, 12, 40, NULL),
(14, 78, 38, NULL),
(15, 40, 11, NULL),
(16, 11, 20, NULL),
(17, 11, 71, NULL);

ALTER TABLE `nodos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `nodos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;
