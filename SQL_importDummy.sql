/* Ads 1: Laporan 'Semua Iklan Produk' Platform A (Laporan Dummy) */
LOAD DATA INFILE 'D:/5 - PixelMind ID (Coding, Photo Editing, Digital Marketing)/33.1_Keyword MP DB/2 - Untuk Portfolio & Project/SQL Keyword Project & Experiment/csvDataDummies_foodAPIMimesis/platform_a/1_hasil_laporan_iklan_platform_a.csv'
INTO TABLE iklan_produk_direkomendasi_platform_a
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(namaGrup,namaProduk,pengeluaran,pendapatan,totalEfektivitasIklan,efektivitasIklan,performaTampil,tampilTeratas,tampil,klik,persentaseKlik,terjual,totTerjual,persentaseTerjual,@rataRata)
SET
	rataRata = CAST(@rataRata AS DECIMAL(10,2));

select * from iklan_produk_direkomendasi_platform_a;
/* Berjumlah 89 rows, dengan PK idIklanRekomendasi berkisar 1-89 */