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
describe semua_Iklan_Produk_Platform_a;

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
describe kata_kunci_platform_a;

use keyword_db_mp_experiment;
