DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `kd_menu` int(5) NOT NULL,
  `nm_menu` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `kd_parent` int(5) NOT NULL,
  PRIMARY KEY (`kd_menu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `menu` (`kd_menu`, `nm_menu`, `link`, `kd_parent`) VALUES
(1,	'Home',	'#',	0),
(2,	'Master',	'#',	0),
(3,	'Transaksi',	'#',	0),
(4,	'Laporan',	'#',	0),
(5,	'About',	'#',	0),
(21,	'Pelanggan',	'#',	2),
(22,	'Barang',	'#',	2),
(23,	'Pegawai',	'#',	2),
(231,	'Tetap',	'#',	23),
(232,	'Tidak Tetap',	'#',	23),
(31,	'Penjualan Tunai',	'#',	3),
(32,	'Penjualan Kredit',	'#',	3),
(33,	'Faktur',	'#',	3),
(34,	'Surat Jalan',	'#',	3),
(41,	'Stok Barang',	'#',	4),
(42,	'Pelanggan',	'#',	4),
(43,	'Penjualan',	'#',	4),
(431,	'Tunai',	'#',	43),
(432,	'Kredit',	'#',	43);
