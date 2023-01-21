CREATE DATABASE Stokbarang

use Stokbarang;

CREATE TABLE Barang
(
	Id int not null,
	Namebarang varchar(30) not null,
	Statusbarang VARCHAR(30) not null,
	constraint pk_Barang primary key(Id)
);

INSERT INTO Barang(Id,Namebarang,Statusbarang) VALUES
(1,'rinso','ada'),
(2,'coklat','ada'),
(3,'ikan','ada'),
(4,'bakso','kosong'),
(5,'es','ada'),
(6,'cewek','kosong');
UPDATE Barang SET Namebarang = 'Susu' WHERE Id=6
UPDATE Barang SET Namebarang = 'Pasta Gigi' WHERE Id=4
UPDATE Barang SET Namebarang = 'Es Krim ' WHERE Id=5
select * FROM Barang

Drop table Supplier
CREATE TABLE Supplier
(
	Id_supplier CHAR(2) primary key,
	Nama_supplier VARCHAR (30),
	Alamat_supplier VARCHAR(30),
	Id int CONSTRAINT fk_Id FOREIGN KEY REFERENCES Barang(Id)
);
INSERT INTO Supplier VALUES
('1','Anto','Medan',1),
('2','Iwan','Jakarta',2),
('3','Boy','Yogya',3);
select * from Supplier;


CREATE TABLE Konsumen
(
	Id_konsumen CHAR(2) PRiMARY KEY not null,
	Nama_konsumen VARCHAR(10) not null,
	Alamat_konsumen varchar(30)
);
DROP TABLE Konsumen
INSERT INTO Konsumen VALUES
('1','yoga','Solo'),
('2','wahyu','medan'),
('3','Ozi','toba'),
('4','sitorus','siantar'),
('5','ida','aceh'),
('6','marinus','papua'),
('7','dodi','bandung');
select * from Konsumen INNER JOIN Transaksi on Transaksi.Id_transaksi = Transaksi.Id
DROP TABLE Transaksi
CREATE TABLE Transaksi
(
	Id_transaksi char(2) primary key,
	Id int CONSTRAINT fk_Id1 FOREIGN KEY REFERENCES Barang(Id),
	Id_konsumen char(2) CONSTRAINT fk_Id_konsumen FOREIGN KEY REFERENCES Konsumen(Id_konsumen),
	tanggal datetime,
	keterangan VARCHAR(30)
);
insert into Transaksi VALUES
('1',1,'1','2023/01/20','lunas'),
('2',2,'2','2023/01/20','lunas'),
('3',3,'3','2023/01/20','Belum'),
('4',4,'4','2023/01/20','Belum'),
('5',5,'5','2023/01/20','Belum'),
('6',6,'6','2023/01/20','lunas'),
('7',7,'7','2023/01/20','lunas');
select * from Transaksi
Drop Table Harga
CREATE TABLE Harga
(
	Id_harga char(2) primary key,
	Id int CONSTRAINT fk_Id2 FOREIGN KEY REFERENCES Barang(Id),
	hargabarang Varchar(30)
);

INSERT INTO Harga VALUES
('1',1,'1000'),
('2',2,'40000'),
('3',3,'21000'),
('4',4,'49000'),
('5',5,'10000'),
('6',6,'76000'),
('7',7,'40000');
select * from Harga
select * from Barang JOIN Supplier on Supplier.Id = Barang.Id join Transaksi ON Transaksi.Id = Barang.Id;
select * from Supplier JOIN Barang on Barang.Namebarang = Barang.Namebarang;
SELECT * FROM Transaksi INNER JOIN Barang ON Barang.Id = Transaksi.Id Inner JOIN Supplier ON Supplier.Id = Barang.Id
SELECT * FROM Barang INNER JOIN Harga ON Harga.Id_harga = Barang.Id 


create procedure SelectAllBarang as
SELECT * FROM Barang INNER JOIN Harga ON Harga.Id_harga = Barang.Id 

create procedure SelectBarangById
(
	@Id int
)
as
 select * from Barang Where Id=@Id

 create procedure InsertBarang
(
	@Id int,
	@Namebarang varchar(30),
	@Statusbarang varchar(30)
)
as
 Insert into Barang values (@Id,@Namebarang,@Statusbarang)

  create procedure UpdateBarang
(
	@Id int,
	@Namebarang varchar(30),
	@Statusbarang varchar(30)
)
as update Barang set Namebarang=@Namebarang, Statusbarang=@Statusbarang WHERE Id=@Id

create procedure DeleteBarang
(
	@Id int
)
as
	delete from Barang Where Id=@Id

CREATE procedure selecttransaksi
as
select * from Konsumen INNER JOIN Transaksi on Transaksi.Id_transaksi = Transaksi.Id
DROP PROCEDURE selectkonsumen

CREATE procedure selectKonsumen
as
select * from Konsumen 


create procedure InsertKonsumen
(
	@Id_konsumen char(2),
	@Nama_konsumen varchar(10),
	@Alamat_konsumen varchar(30)
)
as
 Insert into Konsumen values (@Id_konsumen,@Nama_konsumen,@Alamat_konsumen)

  create procedure UpdateKonsumen
(
	@Id_konsumen char(2),
	@Nama_konsumen varchar(10),
	@Alamat_konsumen varchar(30)
)
as update Konsumen set Nama_konsumen=@Nama_konsumen, Alamat_konsumen=@Alamat_konsumen WHERE Id_konsumen=@Id_konsumen

create procedure DeleteKonsumen
(
	@Id_konsumen char(2)
)
as
	delete from Konsumen Where Id_konsumen=@Id_konsumen

create procedure SelectKonsumenById
(
	@Id_konsumen char(2)
)
as
 select * from Konsumen Where Id_konsumen=@Id_konsumen

 DROP PROCEDURE SelectKonsumenById