CREATE TABLE `barang_ds`(
	`kode_barang` char(7),
    `nama_barang` varchar(41),
    `kemasan` varchar(6),
    `harga` int,
    `nama_tipe` varchar(11),
    `kode_brand` int,
    `brand` varchar(8),
    primary key (kode_barang)
);
