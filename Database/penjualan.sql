CREATE DATABASE KIMIA_FARMA;
USE KIMIA_FARMA;

CREATE TABLE `penjualan`(
	`id_distributor` varchar(3),
    `id_cabang` char(5),
    `id_invoice` char(6),
    `tanggal` datetime,
    `id_customer` char(9),
    `id_barang` char(7),
    `jumlah_barang` int,
    `unit` char(3),
    `harga` decimal(7,2),
    `mata_uang` char(3),
    `brand_id` char(7),
    `lini` varchar(10)
);
