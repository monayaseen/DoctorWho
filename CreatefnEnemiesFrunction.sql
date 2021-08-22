create Function fnEnemies(@EpisodeId varchar(20))
returns varchar(40)
as
begin
declare @message varchar(50);
select @message=COALESCE(@message + ', '+ tblEnemy.EnemyName,tblEnemy.EnemyName)
from tblEnemy join tblEpisodEnemy
on tblEnemy.EnemyId=tblEpisodEnemy.EnemyId 
and tblEpisodEnemy.EnemyId=@EpisodeId
return @message;
end;

select dbo.fnEnemies(3) as regards;