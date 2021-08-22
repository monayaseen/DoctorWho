alter table tblEpisode alter COLUMN Title varchar(50); --modify column to accept more than 20 character

insert into tblEpisode(EpisodeId,SeriesNumber,EpisodeNumber,EpisodeType,Title,EpisodeDate,AuthorId,DoctorId,Notes)
values ('6','4321','25','Imagination','blue elephant','20210707','1',null,'Not Ral');
select * from tblEpisode; 

update tblEpisode 
set Title=(tblEpisode.Title+'_CANCELLED')
where DoctorId is null;
select * from tblEpisode;
