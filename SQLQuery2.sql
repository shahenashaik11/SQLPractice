use practice;
select * from players;
select * from teams;
select players.name from players join teams on teams.id=players.id;
insert into teams(id,name) values(5,'England');
insert into players(playerid,name,score) values(6,'rohith',89);