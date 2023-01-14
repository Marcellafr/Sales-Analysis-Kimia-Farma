CREATE TABLE `dashboard_kimiafarma`(
    `id_invoice` varchar(6),
    `tanggal` date,
    `id_customer` varchar(9),
    `id_barang` varchar(7),
    `jumlah_barang` int,
	`unit` varchar(6),
    `harga` int,
    `nama_brand` varchar(8),
    `total_penjualan` int,
    `nama_pelanggan` varchar(18),
    `cabang_sales` varchar(9),
	`group` varchar(6),
    `nama_barang` varchar(41),
    `hari` int,
    `nama_hari` varchar(10),
    `minggu` int,
    `bulan` int,
    `nama_bulan` varchar(10),
    `tahun` year,
     primary key(id_invoice)
);

insert into dashboard_kimiafarma
select distinct p.id_invoice,
    p.tanggal,
    p.id_customer,
    p.id_barang,
    p.jumlah_barang,
	p.unit,
    p.harga,
    p.nama_brand,
    p.total_penjualan,
    c.nama as nama_pelanggan,
    c.cabang_sales,
	c.group,
    b.nama_barang,
    w.hari,
    w.nama_hari,
    w.minggu,
    w.bulan,
    w.nama_bulan,
    w.tahun
FROM fact_penjualan as p
JOIN dim_pelanggan as c ON p.id_customer = c.id_customer
JOIN dim_barang as b ON p.id_barang = b.id_barang
JOIN dim_waktu as w ON DATE(p.tanggal) = DATE(w.tanggal);
