CREATE TABLE `penjualan_ds`(
	`id_invoice` char(6),
    `tanggal` datetime,
    `id_customer` char(9),
    `id_barang` char(7),
    `jumlah_barang` int,
    `unit` varchar(6),
    `harga` int,
    `mata_uang` char(3)
);