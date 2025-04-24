/* Ads 1: Laporan 'Semua Iklan Produk' Platform A (Laporan Dummy) */
LOAD DATA INFILE 'D:/5 - PixelMind ID (Coding, Photo Editing, Digital Marketing)/33.1_Keyword MP DB/2 - Untuk Portfolio & Project/SQL Keyword Project & Experiment/csvDataDummies_foodAPIMimesis/platform_a/1_hasil_laporan_iklan_platform_a.csv'
INTO TABLE semua_iklan_produk_platform_a
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(namaGrup,namaProduk,pengeluaran,pendapatan,totalEfektivitasIklan,efektivitasIklan,performaTampil,tampilTeratas,tampil,klik,persentaseKlik,terjual,totTerjual,persentaseTerjual,@rataRata)
SET
	rataRata = CAST(@rataRata AS DECIMAL(10,2));

/* Update the FK */
/* 1. FK Tipe Iklan */
update semua_iklan_produk_platform_a
set idTipeIklanPlatformA_fk = 1 /* Iklan Produk */
where idSemuaIklanProduk between 1 and 119;

update semua_iklan_produk_platform_a
set idTipeIklanPlatformA_fk = 2 /* Iklan Toko */
where idSemuaIklanProduk in(9,43,44,50,53,70,77);

select * from tipe_iklan_platform_a;

/* 2. FK Status */
update semua_iklan_produk_platform_a
set idStatusPlatformA_fk = 1 # Aktif
where idSemuaIklanProduk between 1 and 119;

update semua_iklan_produk_platform_a
set idStatusPlatformA_fk = 2 # Tidak Tampil
where idSemuaIklanProduk in(1,2,3,6,8,9,10,19,20,22,24,25,26,28,31,32,40,41,53,56,58,59,61,63,65,66,73,76,78,81,83,84,87,88,92,94,100);

update semua_iklan_produk_platform_a
set idStatusPlatformA_fk = 3 # Sudah Terhapus
where idSemuaIklanProduk in(36,68,70,79);

select * from status_platform_a;

select * from semua_iklan_produk_platform_a;

/* Ads 2: Laporan 'Iklan Produk Direkomendasi' Platform A (Laporan Dummy) */
LOAD DATA INFILE 'D:/5 - PixelMind ID (Coding, Photo Editing, Digital Marketing)/33.1_Keyword MP DB/2 - Untuk Portfolio & Project/SQL Keyword Project & Experiment/csvDataDummies_foodAPIMimesis/platform_a/2_iklan_produk_direkomendasi_platform_a.csv'
INTO TABLE iklan_produk_direkomendasi_platform_a
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(namaGrup,namaProduk,pengeluaran,pendapatan,totalEfektivitasIklan,efektivitasIklan,performaTampil,tampilTeratas,tampil,klik,persentaseKlik,terjual,totTerjual,persentaseTerjual,@rataRata)
SET
	rataRata = CAST(@rataRata AS DECIMAL(10,2));

select * from iklan_produk_direkomendasi_platform_a;

/* Update FK */
/* 1. FK Tipe Iklan */
update iklan_produk_direkomendasi_platform_a
set idTipeIklanPlatformA_fk = 1 /* Iklan Produk */
where idIklanRekomendasi between 128 and 215;

update iklan_produk_direkomendasi_platform_a
set idTipeIklanPlatformA_fk = 2 /* Iklan Toko */
where idIklanRekomendasi in(132,136,145,153,189);

select * from tipe_iklan_platform_a;

/* 2. FK Status */
update iklan_produk_direkomendasi_platform_a
set idStatusPlatformA_fk = 1 # Aktif
where idIklanRekomendasi between 128 and 215;

update iklan_produk_direkomendasi_platform_a
set idStatusPlatformA_fk = 2 # Tidak Tampil
where idIklanRekomendasi in(133,140,142-145,147)
or idIklanRekomendasi between 150 and 153
or idIklanRekomendasi in(156,159,162,163,164,166,167,171,173,174,175,177,178,180)
or idIklanRekomendasi between 185 and 188
or idIklanRekomendasi in(191,197,202,205,206,208,213,214,215);

update iklan_produk_direkomendasi_platform_a
set idStatusPlatformA_fk = 3 # Sudah Terhapus
where idIklanRekomendasi in(168,183,193,194,203,204,210);

select * from status_platform_a;

select * from iklan_produk_direkomendasi_platform_a;

/* Ads 3: Laporan 'Iklan Produk Pencarian' Platform A (Laporan Dummy) */
LOAD DATA INFILE 'D:/5 - PixelMind ID (Coding, Photo Editing, Digital Marketing)/33.1_Keyword MP DB/2 - Untuk Portfolio & Project/SQL Keyword Project & Experiment/csvDataDummies_foodAPIMimesis/platform_a/3_iklan_produk_pencarian_platform_a.csv'
INTO TABLE iklan_produk_pencarian_platform_a
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(namaGrup,namaProduk,pengeluaran,pendapatan,totalEfektivitasIklan,efektivitasIklan,performaTampil,tampilTeratas,tampil,klik,persentaseKlik,terjual,totTerjual,persentaseTerjual,@rataRata)
SET
	rataRata = CAST(@rataRata AS DECIMAL(10,2));

select * from iklan_produk_pencarian_platform_a;
/* Row between 6 and 123 */

/* Update FK Constraint */
/* 1. FK Tipe Iklan */
update iklan_produk_pencarian_platform_a
set idTipeIklanPlatformA_fk = 1 /* Iklan Produk */
where idIklanPencarian between 6 and 123;

update iklan_produk_pencarian_platform_a
set idTipeIklanPlatformA_fk = 2 /* Iklan Toko */
where idIklanPencarian in(28,40,50,71,77,82,96,110,116);

select * from tipe_iklan_platform_a;

/* 2. FK Status */
update iklan_produk_pencarian_platform_a
set idStatusPlatformA_fk = 1 # Aktif
where idIklanPencarian between 6 and 123;

update iklan_produk_pencarian_platform_a
set idStatusPlatformA_fk = 2 # Tidak Tampil
where idIklanPencarian in(6,7,9,13,17,18,19,21,22,23,25,26,27,32,34,35,44,47,49,50,51,52,55,64,68,69,73,74,80,85,86,88,90,94,102,111,112,115,119,120,123);

update iklan_produk_pencarian_platform_a
set idStatusPlatformA_fk = 3 # Sudah Terhapus
where idIklanPencarian in(14,38,66,78,83,98);

select * from status_platform_a;

select * from iklan_produk_pencarian_platform_a;

/* Ads 4: Laporan 'Iklan Toko' Platform A (Laporan Dummy) */
LOAD DATA INFILE 'D:/5 - PixelMind ID (Coding, Photo Editing, Digital Marketing)/33.1_Keyword MP DB/2 - Untuk Portfolio & Project/SQL Keyword Project & Experiment/csvDataDummies_foodAPIMimesis/platform_a/4_iklan_toko_platform_a.csv'
INTO TABLE iklan_toko_platform_a
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(namaGrup,pengeluaran,pendapatan,performaTampil,tampilTeratas,tampil,klik,persentaseKlik,totalTerjual,persentaseTerjual,@rataRata)
SET
	rataRata = CAST(@rataRata AS DECIMAL(10,2));

select * from iklan_toko_platform_a;

/* Update FK Constraint */

/* Ads 5: Laporan 'Kata Kunci' Platform A (Laporan Dummy) */
LOAD DATA INFILE 'D:/5 - PixelMind ID (Coding, Photo Editing, Digital Marketing)/33.1_Keyword MP DB/2 - Untuk Portfolio & Project/SQL Keyword Project & Experiment/csvDataDummies_foodAPIMimesis/platform_a/5_kata_kunci_platform_a.csv'
INTO TABLE kata_kunci_platform_a
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(namaGrup,kataKunci,pengeluaran,pendapatan,totalEfektivitasIklan,efektivitasIklan,tampil,klik,persentaseKlik,terjual,totTerjual,@rataRata,@tampilTeratas)
SET
	rataRata = CAST(@rataRata AS DECIMAL(10,2)),
	tampilTeratas = CAST(@tampilTeratas AS DECIMAL(10,2));

select * from kata_kunci_platform_a;
