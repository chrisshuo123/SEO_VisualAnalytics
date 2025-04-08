use keyword_db_mp_experiment;

/* 1 - Group Profile */
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

