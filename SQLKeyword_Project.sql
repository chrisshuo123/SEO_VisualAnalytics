use keyword_db_mp_experiment;

/* === 1 - GROUP PROFILE === */
create table profile (
	idProfile int(10) primary key auto_increment,
    tanggalInput timestamp not null default current_timestamp,
    jenisMP varchar(10)
);
alter table profile
    rename column tanggalInput to inputDate,
    rename column jenisMP to marketplaceType;

describe profile;

create table namaTokoMarketplace (
	idNamaToko int(10) primary key auto_increment,
    idToko int(10)
);
alter table namaTokoMarketplace
	add column tanggalInput timestamp not null default current_timestamp after idNamaToko;
describe namaTokoMarketplace;

/* === 2 - GROUP LAPORAN === */
create table laporan (
	idLaporan int(10) primary key auto_increment,
    waktuLaporanDibuat DATETIME not null
);
alter table laporan
	add column tanggalInput timestamp not null default current_timestamp after idLaporan;
alter table laporan
	add column idPeriode_fk int(10) after waktuLaporanDibuat;
alter table laporan
	add foreign key (idPeriode_fk) references periode(idPeriode);
describe laporan;

create table periode (
	idPeriode int(10) primary key,
    periode varchar(100)
);
alter table periode
	add column tanggalInput timestamp not null default current_timestamp after idPeriode;
select * from periode;

/* === 3 - GROUP MARKETPLACE PLATFORMS === */
/* Let's call this platforms Alphabetically, starts from A to Z. */
/* Mari kita sebut contoh platform ini dalam huruf Alfabet secara A - Z. */

/* -- 3.1 - GROUP IKLAN PlatformMP_A -- */

/* 3.1.1 - Semua Iklan Produk Platform A */
create table semua_Iklan_Produk_Platform_a (
    idSemuaIklanProduk int(10) primary key auto_increment,
    tanggalInput timestamp not null default current_timestamp,
    idTipeIklanPlatformA_fk int(10),
    namaGrup varchar(100),
    namaProduk varchar(100),
    idStatusPlatformA_fk int(10),
    pengeluaran bigint(10),
    pendapatan bigint(10),
    totalEfektivitasIklan decimal(10,2),
    efektivitasIklan decimal(10,2),
    performaTampil decimal(10,2),
    tampilTeratas int(10),
    tampil int(10),
    klik int(10),
    persentaseKlik decimal(10,2),
    terjual int(10),
    totTerjual int(10),
    persentaseTerjual decimal(10,2),
    rataRata int(10)
);

alter table semua_Iklan_Produk_Platform_a
	add foreign key (idTipeIklanPlatformA_fk) references tipe_iklan_platform_a(idTipeIklanPlatformA),
    add foreign key (idStatusPlatformA_fk) references status_platform_a(idStatusPlatformA);

/* DROP FOREIGN KEY PROCESS */
SHOW CREATE TABLE semua_Iklan_Produk_Platform_a;

alter table semua_Iklan_Produk_Platform_a
	drop foreign key semua_iklan_produk_platform_a_ibfk_1,
    drop foreign key semua_iklan_produk_platform_a_ibfk_2;

describe semua_Iklan_Produk_Platform_a;

/* Drop Table Process */
drop table semua_Iklan_Produk_Platform_a;
/* ------------- */

/* 3.1.2 - Iklan Produk Direkomendasi di Platform A */
create table iklan_produk_direkomendasi_platform_a (
    idIklanRekomendasi int(10) primary key auto_increment,
    tanggalInput timestamp not null default current_timestamp,
    idTipeIklanPlatformA_fk int(10),
    namaGrup varchar(100),
    namaProduk varchar(100),
    idStatusPlatformA_fk int(10),
    pengeluaran bigint(20),
    pendapatan bigint(20),
    totalEfektivitasIklan decimal(10,2),
    efektivitasIklan decimal(10,2),
    performaTampil decimal(10,2),
    tampilTeratas int(10),
    tampil int(10),
    klik int(10),
    persentaseKlik decimal(10,2),
    terjual int(10),
    totTerjual int(10),
    persentaseTerjual decimal(10,2),
    rataRata int(10)
);

alter table iklan_produk_direkomendasi_platform_a
	add foreign key (idTipeIklanPlatformA_fk) references tipe_iklan_platform_a(idTipeIklanPlatformA),
	add foreign key (idStatusPlatformA_fk) references status_platform_a(idStatusPlatformA); 

/* DROP Fk Process */
SHOW CREATE TABLE iklan_produk_direkomendasi_platform_a;

alter table iklan_produk_direkomendasi_platform_a
	drop foreign key iklan_produk_direkomendasi_platform_a_ibfk_1,
    drop foreign key iklan_produk_direkomendasi_platform_a_ibfk_2,
    drop foreign key iklan_produk_direkomendasi_platform_a_ibfk_3,
    drop foreign key iklan_produk_direkomendasi_platform_a_ibfk_4;
    
/* Drop Table Process */
drop table iklan_produk_direkomendasi_platform_a;
/* ------------- */

describe iklan_produk_direkomendasi_platform_a;

/* 3.1.3 - Iklan Produk di Pencarian Platform A */
create table iklan_produk_pencarian_platform_a (
    idIklanPencarian int(10) primary key auto_increment,
    tanggalInput timestamp not null default current_timestamp,
    idTipeIklanPlatformA_fk int(10),
    namaGrup varchar(100),
    namaProduk varchar(100),
    idStatusPlatformA_fk int(10),
    pengeluaran bigint(20),
    pendapatan bigint(20),
    totalEfektivitasIklan decimal(10,2),
    efektivitasIklan decimal(10,2),
    performaTampil decimal(10,2),
    tampilTeratas int(10),
    tampil int(10),
    klik int(10),
    persentaseKlik decimal(10,2),
    terjual int(10),
    totTerjual int(10),
    persentaseTerjual decimal(10,2),
    rataRata int(10)
);

alter table iklan_produk_pencarian_platform_a
	add foreign key (idTipeIklanPlatformA_fk) references tipe_iklan_platform_a(idTipeIklanPlatformA),
	add foreign key (idStatusPlatformA_fk) references status_platform_a(idStatusPlatformA);

/* Drop Constraint FK Process */
show create table iklan_produk_pencarian_platform_a;

alter table iklan_produk_pencarian_platform_a
	drop foreign key iklan_produk_pencarian_platform_a_ibfk_1,
    drop foreign key iklan_produk_pencarian_platform_a_ibfk_2;

/* Drop Table Process */
drop table iklan_produk_pencarian_platform_a;
/* ----------------- */
describe iklan_produk_pencarian_platform_a;

/* 3.1.4 - Iklan Toko di Platform A */
create table iklan_toko_platform_a (
    idIklanTokoPlatformA int(10) primary key auto_increment,
    tanggalInput timestamp not null default current_timestamp,
    idTipeIklanPlatformA_fk int(10),
    namaGrup varchar(100),
    idStatusPlatformA_fk int(10),
    pengeluaran bigint(20),
    pendapatan bigint(20),
    performaTampil decimal(10,2),
    tampilTeratas int(10),
    tampil int(10),
    klik int(10),
    persentaseKlik decimal(10,2),
    totalTerjual int(10),
    persentaseTerjual decimal(10,2),
    rataRata int(10)
);

alter table iklan_toko_platform_a
	add foreign key (idTipeIklanPlatformA_fk) references tipe_iklan_platform_a(idTipeIklanPlatformA),
	add foreign key (idStatusPlatformA_fk) references status_platform_a(idStatusPlatformA);

/* Drop Constraint FK Process */
show create table iklan_toko_platform_a;

alter table iklan_toko_platform_a
	drop foreign key iklan_toko_platform_a_ibfk_1,
    drop foreign key iklan_toko_platform_a_ibfk_2;
    
/* Drop Table Process */
drop table iklan_toko_platform_a;
/* ------------------- */

describe iklan_toko_platform_a;

/* 3.1.5 - Laporan Pencarian di Platform A */
create table laporan_pencarian_platform_a (
	idLaporanPencarian int(10) primary key auto_increment,
    tanggalInput timestamp not null default current_timestamp,
    idTipeIklanPlatformA_fk int(10),
    namaGrup varchar(100),
    kataKunci varchar(100),
    pengeluaran bigint(20),
    pendapatan bigint(20),
    totalEfektivitasIklan decimal(10,2),
    efektivitasIklan decimal(10,2),
    tampil int(10),
    klik int(10),
    persentaseKlik decimal(10,2),
    terjual int(10),
    rataRata int(10),
    tampilTeratas int(10)
);

alter table laporan_pencarian_platform_a
	add foreign key (idTipeIklanPlatformA_fk) references tipe_iklan_platform_a(idTipeIklanPlatformA);

/* Drop Constraint FK Process */
show create table laporan_pencarian_platform_a;

alter table laporan_pencarian_platform_a
	drop foreign key laporan_pencarian_platform_a_ibfk_1;

/* Drop Table Process */
drop table laporan_pencarian_platform_a;
/* ----------------------- */

describe laporan_pencarian_platform_a;

/* 3.1.6 - Kata Kunci di Platform A */
create table kata_kunci_platform_a (
	idKataKunci int(10) primary key auto_increment,
    tanggalInput timestamp not null default current_timestamp,
    idTipeIklanPlatformA_fk int(10),
    namaGrup varchar(100),
    idStatusPlatformA_fk int(10),
    idTipePencarianPlatformA_fk int(10),
    idTipeKataKunciPlatformA_fk int(10),
    pengeluaran bigint(20),
    pendapatan bigint(20),
    totalEfektivitasIklan decimal(10,2),
    efektivitasIklan decimal(10,2),
    tampil int(10),
    klik int(10),
    persentaseKlik decimal(10,2),
    terjual int(10),
    totTerjual decimal(10,2),
    rataRata int(10),
    tampilTeratas int(10)
);

alter table kata_kunci_platform_a
add foreign key (idTipeIklanPlatformA_fk) references tipe_iklan_platform_a(idTipeIklanPlatformA),
add foreign key (idStatusPlatformA_fk) references status_platform_a(idStatusPlatformA),
add foreign key (idTipePencarianPlatformA_fk) references tipe_pencarian_platform_a(idTipePencarianPlatformA),
add foreign key (idTipeKataKunciPlatformA_fk) references tipe_kata_kunci_platform_a(idTipeKataKunciPlatformA);

/* Drop Constraint FK Process */
show create table kata_kunci_platform_a;

alter table kata_kunci_platform_a
	drop foreign key kata_kunci_platform_a_ibfk_1,
    drop foreign key kata_kunci_platform_a_ibfk_2,
    drop foreign key kata_kunci_platform_a_ibfk_3,
    drop foreign key kata_kunci_platform_a_ibfk_4;
    
/* Drop Table Process */
drop table kata_kunci_platform_a;
/* --------------- */

describe kata_kunci_platform_a;

/* 3.1.7 - Membuat table untuk menampung Pilihan FK bagi Table ke 3.1.1 - 3.1.6. */
create table tipe_iklan_platform_a (
    idTipeIklanPlatformA int(10) primary key,
    tanggalInput timestamp not null default current_timestamp,
    tipeIklanPlatformA varchar(100)
);

/* Drop Constraint FK Process */
show create table tipe_iklan_platform_a;

/* Drop table process */
drop table tipe_iklan_platform_a;
/* -------------------------- */

describe tipe_iklan_platform_a;

create table status_platform_a (
    idStatusPlatformA int(10) primary key,
    tanggalInput timestamp not null default current_timestamp,
    statusPlatformA varchar(100)
);

/* Drop Constraint FK Process */
show create table status_platform_a;

/* Drop table process */
drop table status_platform_a;
/* -------------------------- */

describe status_platform_a;

create table tipe_pencarian_platform_a (
    idTipePencarianPlatformA int(10) primary key,
    tanggalInput timestamp not null default current_timestamp,
    tipePencarianPlatformA varchar(100)
);

/* Drop Constraint FK Process */
show create table tipe_pencarian_platform_a;

/* Drop table process */
drop table tipe_pencarian_platform_a;
/* -------------------------- */

describe tipe_pencarian_platform_a;

create table tipe_kata_kunci_platform_a (
    idTipeKataKunciPlatformA int(10) primary key,
    tanggalInput timestamp not null default current_timestamp,
    tipeKataKunciPlatformA varchar(100)
);

/* Drop Constraint FK Process */
show create table tipe_kata_kunci_platform_a;

/* Drop table process */
drop table tipe_kata_kunci_platform_a;
/* -------------------------- */

describe tipe_kata_kunci_platform_a;

use keyword_db_mp_experiment;
