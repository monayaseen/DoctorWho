create view viewEpisodes as
select tblAuthor.AuthorName,tblDoctor.DoctorName, 
dbo.fnEnemies(tblEpisode.EpisodeId) as CompanionName,dbo.fnEnemies(tblEpisode.EpisodeId) EnemyName
from tblEpisode
join tblAuthor on tblEpisode.AuthorId=tblAuthor.AuthorId
join tblDoctor on tblDoctor.DoctorId=tblEpisode.DoctorId;

select * from viewEpisodes;