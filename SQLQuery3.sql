create database ExcerciseDb
use ExcerciseDb
create table CompanyInfo
(CId int Primary key,
CName nvarchar(50)
)

insert into CompanyInfo values(1,'SamSung'),(2,'HP'),(3,'Apple'),(4,'Dell'),(5,'Toshiba'),(6,'Redmi')

select * from CompanyInfo

create table ProductInfo
(PId int primary key identity(101,1),
PName nvarchar(50) not null,
PPrice Float not null,
PMDate date,
CId int Foreign key(CId) references CompanyInfo(CId)
)

insert into ProductInfo values('Laptop',55000.90,'12/12/2023',1)
insert into ProductInfo values('Laptop',35000.90,'12/12/2012',2)
insert into ProductInfo values('Mobile',15000.90,'12/03/2012',2)
insert into ProductInfo values('Laptop',135000.90,'12/12/2012',3)
insert into ProductInfo values('mobile',65000.90,'12/12/2012',3)
insert into ProductInfo values('Laptop',35000.90,'12/12/2012',5)
insert into ProductInfo values('Mobile',35000.90,'12/01/2012',5)
insert into ProductInfo values('Earpod',1000.90,'12/01/2022',3)
insert into ProductInfo values('Laptop',85000.90,'12/12/2021',6)
insert into ProductInfo values('Mobile',55000.90,'12/12/2020',1)

select * from ProductInfo

--1.Question
SELECT CompanyInfo.CName, ProductInfo.*
FROM CompanyInfo
full outer JOIN ProductInfo ON CompanyInfo.CId = ProductInfo.CId;
--2.Question
select p.PName,c.CName from ProductInfo p  left outer join CompanyInfo c on c.CId=p.CId

--3.Question

select CName,PName from CompanyInfo cross join ProductInfo