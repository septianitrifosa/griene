CREATE TABLE Film(
	Kode_film char(3),
	jenis varchar2(10),
	judul_film varchar2(25),
    jumlah number(1)
);

CREATE TABLE Penyewa(
	Id_penyewa char(6),
	jenis_identitas varchar2(15),
    nama varchar2(30),
    alamat varchar2(50)
);

CREATE TABLE Penyewaan(
    kode_sewa char(4),
    tgl_sewa date,
    id_penyewa char(6),
    tgl_kembali date
);

CREATE TABLE Detail_sewa(
    kode_sewa char(4),
    kode_film char(3)
);


ALTER TABLE Film ADD CONSTRAINT film_kode_pk
PRIMARY KEY (kode_film);

ALTER TABLE Penyewa ADD CONSTRAINT penyewa_id_pk
PRIMARY KEY (id_penyewa);

ALTER TABLE Penyewaan ADD CONSTRAINT sewa_kode_pk
PRIMARY KEY (kode_sewa);

ALTER TABLE detail_sewa ADD CONSTRAINT detil_kode_sewa_pk
PRIMARY KEY (kode_sewa,kode_film);

ALTER TABLE Detail_sewa add constraint detail_film_fk
foreign key(kode_film) references film(kode_film);

ALTER TABLE Detail_sewa add constraint detail_penyewaan_fk
foreign key(kode_sewa) references penyewaan(kode_sewa);

ALTER TABLE Penyewaan add constraint penyewaan_penyewa_fk
foreign key(id_penyewa) references penyewa(id_penyewa);


INSERT INTO film (kode_film,jenis,judul_film,jumlah) values ('A01','Action','Spiderman','3');
INSERT INTO film (kode_film,jenis,judul_film,jumlah) values ('A02','Action','Spiderman 2','5');
INSERT INTO film (kode_film,jenis,judul_film,jumlah) values ('A03','Action','Juctice League','4');
INSERT INTO film (kode_film,jenis,judul_film,jumlah) values ('D01','Drama','Love Story','3');
INSERT INTO film (kode_film,jenis,judul_film,jumlah) values ('D02','Drama','Beauty and The Beast','5');
INSERT INTO film (kode_film,jenis,judul_film,jumlah) values ('D03','Drama','Remember Me','3');
INSERT INTO film (kode_film,jenis,judul_film,jumlah) values ('H01','Horror','Evil Death','2');
INSERT INTO film (kode_film,jenis,judul_film,jumlah) values ('H02','Horror','Conjuring','3');
INSERT INTO film (kode_film,jenis,judul_film,jumlah) values ('H03','Horror','Insidious','5');
