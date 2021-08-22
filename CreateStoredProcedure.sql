create procedure spSummariseEpisode
as
begin
 select top(3) tblCompanion.CompanionName
  from tblEpisodCompanion 
  join tblCompanion 
  on tblEpisodCompanion.CompanionId=tblCompanion.CompanionId
  group by tblCompanion.CompanionId , tblCompanion.CompanionName
 
  select top(3) tblEnemy.EnemyName
  from tblEpisodEnemy 
  join tblEnemy 
  on tblEpisodEnemy.EnemyId=tblEnemy.EnemyId
  group by tblEnemy.EnemyId , tblEnemy.EnemyName

END;