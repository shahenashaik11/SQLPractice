create database practice;
SELECT * FROM master.sys.databases ;
use practice;
create table team(id bigint,name varchar(20),primary key(id));
select * from team;
drop table team;
create table teams(id bigint primary key,name varchar(20));
select * from teams;
insert into teams(id,name) values(1,'India');
insert into teams(id,name) values(2,'Pakistan');
insert into teams(id,name) values(3,'Australia');
create table players(playerid bigint primary key,name varchar(20),score bigint,id bigint foreign key references teams(id));
insert into players(playerid,name,score,id) values(1,'sachin',100,1);
insert into players(playerid,name,score,id) values(2,'shoaib',85,2);
insert into players(playerid,name,score,id) values(3,'Ricky',90,3);
select * from players;



