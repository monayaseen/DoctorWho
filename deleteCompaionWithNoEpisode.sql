
select * from  tblCompanion left join tblEpisodCompanion
on tblEpisodCompanion.CompanionId=tblCompanion.CompanionId;

delete tblCompanion from  tblCompanion left join tblEpisodCompanion
on tblEpisodCompanion.CompanionId=tblCompanion.CompanionId
where tblEpisodCompanion.EpisodCompanionId is null;

SELECT * FROM tblCompanion
