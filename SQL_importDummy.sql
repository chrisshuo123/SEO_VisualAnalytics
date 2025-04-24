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
/* 1. FK Tipe Iklan */
update iklan_toko_platform_a
set idTipeIklanPlatformA_fk = 2 /* Iklan Toko */
where idIklanTokoPlatformA between 1 and 3;

select * from tipe_iklan_platform_a;

/* 2. FK Status */
update iklan_toko_platform_a
set idStatusPlatformA_fk = 2 # Tidak Tampil
where idIklanTokoPlatformA between 1 and 3;

select * from status_platform_a;

select * from iklan_toko_platform_a;

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

/* Update FK Constraint */
/* 1. FK Tipe Iklan */
update kata_kunci_platform_a
set idTipeIklanPlatformA_fk = 1 /* Iklan Produk */
where idKataKunci between 1 and 730;

update kata_kunci_platform_a
set idTipeIklanPlatformA_fk = 2 /* Iklan Toko */
where idKataKunci in(9,17,19,26,74,136,144,184,238,245,267,271,280,318,326,334,343,365,370,439,480,489,504,514,557,582,600,604,607,658,665,666,684);

select * from tipe_iklan_platform_a;

/* 2. FK Status */
update kata_kunci_platform_a
set idStatusPlatformA_fk = 3 # Sudah Terhapus
where idKataKunci between 1 and 730;

update kata_kunci_platform_a
set idStatusPlatformA_fk = 1 # Aktif
where idKataKunci in(4,8,10,15,16,17,20,21,25,27,31,32,34,35,36,38,39,44,45,48,49,55,57,60,61,64,69,71,74,75,76,80,82,83,84,86,87,89,91,92,96,99,100,107,109,111,113,115,121,125,131,135,136,139,141,142,145,147,149,151,152,154,156,157,158,160,163,164,165,166,169,173,174,175,176,178,186,187,188,191,193,197,200,201,202,204,205,206,209,211,216,218,220,221,222,225,231,232,233,237,241,243,248,249,253,255,257,261,265,266,270,271,274,276,277,283,287,289,291,292)
or idKataKunci between 295 and 299
or idKataKunci in(305,309,313,315,316,317,322,326,328,331,333,336,340,343,344,346,348)
or idKataKunci between 353 and 356
or idKataKunci in(358,361,362,364,366,370,371,378,381,386,392,393,397,398,401,402,405,406,407,409,411,420)
or idKataKunci between 423 and 426
or idKataKunci between 428 and 430
or idKataKunci in(432,436,437,441,442,445,448,449,450,452,453,457,462,465,470,471,472,474,476,477,481,485,487)
or idKataKunci between 489 and 492
or idKataKunci in(495,496)
or idKataKunci between 500 and 503
or idKataKunci in(505,509,510,512,515,517,519,520,524,529,532,536,538,540,542,545,548,549,552)
or idKataKunci between 556 and 563
or idKataKunci in(566,569,570,575,576,586)
or idKataKunci between 588 and 592
or idKataKunci in(595,596,598,599,600,603,610,611,612,614,615,616,618,621,622,626,627,628,630,631,632,633,635,639,642,644,645,646,648,649,654,657,658,663,675,681,683,687,690,695,698,699,703,708,711,712,715,717,718,720,721,725,728,729,730);

update kata_kunci_platform_a
set idStatusPlatformA_fk = 2 # Tidak Menyala
where idKataKunci in(3,9,14,26,41,53,65,95,103,116,127,155,167,182,199,207,223,230,254,259,275,314,319,329,335,374,415,419,427,455,497,523,528,534,605,606,608,624,650,653,665,668,676,722);

select * from status_platform_a;

/* 3. FK Tipe Pencarian */
update kata_kunci_platform_a
set idTipePencarianPlatformA_fk = 1 # Pencarian Luas
where idKataKunci between 1 and 730;

update kata_kunci_platform_a
set idTipePencarianPlatformA_fk = 2 # Pencarian Spesifik
where idKataKunci in(15,22,49,100,210,239,259,266,272,280,281,320,348,399,400,414,427,460,466,492,514,517,543,551,555,571,594,603,651,653);

select * from tipe_pencarian_platform_a;

/* 4. FK Tipe Kata Kunci */
update kata_kunci_platform_a
set idTipeKataKunciPlatformA_fk = 1 # Kata Kunci Positif
where idKataKunci between 1 and 730;

select * from kata_kunci_platform_a;