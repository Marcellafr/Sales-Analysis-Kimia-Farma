insert into dim_barang
select distinct b.kode_barang as id_barang,
				b.nama_barang,
                b.kemasan,
                bd.harga,
                bd.brand as nama_brand
From barang as b
JOIN barang_ds as bd ON b.kode_barang=bd.kode_barang;

insert into dim_waktu
select distinct date(tanggal),
			dayofweek(tanggal),
            dayname(tanggal),
            week(tanggal),
            month(tanggal),
            monthname(tanggal),
            year(tanggal)
From penjualan;

insert into fact_penjualan
select distinct p.id_invoice,
                p.tanggal,
                p.id_customer, 
                p.id_barang,
                p.jumlah_barang,
                bd.kemasan as unit,
                bd.harga,
                bd.brand as nama_brand,
                p.jumlah_barang * bd.harga as total_penjualan
FROM penjualan as p
JOIN barang_ds as bd on p.id_barang=bd.kode_barang;

insert into dim_pelanggan
select distinct p.id_customer,
				p.nama,
                p.cabang_sales,
                pd.id_distributor,
                p.group
From pelanggan as p
JOIN pelanggan_ds as pd on p.id_customer = pd.id_customer;