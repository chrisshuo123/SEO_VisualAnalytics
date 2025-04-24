/* Ads 2: Iklan Produk Rekomend Tokped, Laporan 1-31 Jan 2024 Long Tail */
LOAD DATA INFILE 'D:/5 - PixelMind ID (Coding, Photo Editing, Digital Marketing)/33.1_Keyword MP DB/1 - Untuk Menampung Tokped & Sope/File SQL/csv_file/1_Januari_2024/2_iklan_produk_direkomendasi_1_31_jan_24.csv'
INTO TABLE iklan_produk_rekomend_tokped
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(namaGrup,namaProduk,pengeluaran,pendapatan,totalEfektivitasIklan,efektivitasIklan,performaTampil,tampilTeratas,tampil,klik,persentaseKlik,terjual,totTerjual,persentaseTerjual,@rataRata)
SET
	rataRata = CAST(@rataRata AS DECIMAL(10,2));

select * from iklan_produk_rekomend_tokped;
/* Berjumlah 89 rows, dengan PK idIklanRekomendasi berkisar 1-89 */