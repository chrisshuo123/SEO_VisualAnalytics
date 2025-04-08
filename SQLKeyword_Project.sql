use keyword_db_mp_experiment;

/* === 1 - GROUP PROFILE === */
create table profile (
	idProfile int(10) primary key auto_increment,
    tanggalInput timestamp not null default current_timestamp,
    jenisMP varchar(10)
);
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

use keyword_db_mp_experiment;
