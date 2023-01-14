use kimia_farma;

CREATE TABLE `dim_barang`(
	`id_barang` varchar(7),
    `nama_barang` varchar(41),
    `kemasan` varchar(6),
    `harga` int,
    `nama_brand` varchar(8),
    primary key(id_barang)
);

CREATE TABLE `dim_pelanggan`(
	`id_customer` varchar(9),
    `nama` varchar(18),
    `cabang_sales` varchar(9),
	`id_distributor` varchar(3),
	`group` varchar(6),
    primary key(id_customer)
);

CREATE TABLE `dim_waktu`(
    `tanggal` date,
    `hari` int,
    `nama_hari` varchar(10),
    `minggu` int,
    `bulan` int,
    `nama_bulan` varchar(10),
    `tahun` year,
    primary key(tanggal)
);

CREATE TABLE `fact_penjualan`(
    `id_invoice` varchar(6),
    `tanggal` date,
    `id_customer` varchar(9),
    `id_barang` varchar(7),
    `jumlah_barang` int,
	`unit` varchar(6),
    `harga` int,
    `nama_brand` varchar(8),
    `total_penjualan` int,
    primary key(id_invoice)
);