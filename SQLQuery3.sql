use practice;
select * from players;
select * from teams;
select players.id,players.name from players join teams on players.id=teams.id;
select players.id,players.name from players left join teams on players.id=teams.id;
select players.id,players.name from players left outer join teams on players.id=teams.id;
select players.id,players.name from players right join teams on players.id=teams.id;
select * from players join teams on players.id=teams.id;
select * from players left join teams on players.id=teams.id;
select players.id,players.name from players full outer join teams on players.id=teams.id;
select players.id,players.name from players full  join teams on players.id=teams.id;
select * from players order by name;
select * from players order by id;
select * from players order by id desc;
select count(teams.id),teams.name from teams group by teams.name;
select count(id),name from teams group by teams.name having count(id)=1;
insert into teams(id,name) values(90,'Australia');
select count(teams.name) from teams group by id having count(teams.name)=1;
select teams.name,players.name from teams join players on teams.id=players.id group by teams.name,players.name;
select * from teams join players on teams.id=players.id order by teams.id;
select teams.name,players.score,players.name from teams join players on teams.id=players.id order by teams.id;
select teams.name,players.name,players.score from teams join players on teams.id=players.id group by teams.name,players.name,players.score;
select count(teams.id),players.name,teams.name from players join teams on teams.id=players.id group by players.name,teams.name having count(teams.id)=1;
CREATE PROCEDURE SelectAll
AS
BEGIN
select * from players;
END
GO

create table Student1(id int primary key identity(2,1), Name nvarchar(50))

create procedure InStudent @name nvarchar(50) as
begin
insert into Student1 values(@name)
Select SCOPE_IDENTITY()
end 


exec InStudent 'Shahena'
