insert into tblEnemy(EnemyId,EnemyName,Description) 
values ('1','Moeen','One eye'),('2','Taher','Red eyes'),('3','Mansour','Three eyes'),('4','Khalil','Blue body'),('5','Yaseen','Pink hands');
select * from tblEnemy;


insert into tblAuthor(AuthorId,AuthorName) 
values ('1','Muna'),('2','Awsii'),('3','Taher'),('4','Ola'),('5','Diya');
select * from tblAuthor;

insert into tblCompanion(CompanionId,CompanionName,WhoPlayed) 
values ('1','Omar','Ola'),('2','Maysra','Sameer'),('3','Nabeela','Kamal'),('4','Jameel','Hanaa'),('5','Ali','Fatima');
select * from tblCompanion;

insert into tblDoctor(DoctorId,DoctorNumber,DoctorName,BirthDate,FirtEpisodeDate,LastEpisodeDate)
values ('1','1234567','Omar','19980707','20190101','20190202'),('2','7123456','Abdallah','19960707','19980601','19990101'),
('3','7612345','Lana','19940714','19910702','19980715'),('4','7651234','Ali','20030101','19890731','19910704'),
('5','7654123','Mais','20010715','20000917','20030917');
select * from tblDoctor;

insert into tblEpisode(EpisodeId,SeriesNumber,EpisodeNumber,EpisodeType,Title,EpisodeDate,AuthorId,DoctorId,Notes)
values ('1','9876','30','Drama','The Game','20161107','3','1','you cant close your eyes'),
('2','8765','29','Action','Fast and Farious','20171107','2','2','not for weak hearts'),
('3','7654','28','Drama','Lost in Vagueness','20181207','5','4','Too Vagueness'),
('4','6543','27','Romantic','The Seven Samurai','20190707','4','3','Dont watch it alone'),
('5','5432','26','Family','Wonder','20201107','1','5','family is everything');
select * from tblEpisode;

insert into tblEpisodCompanion(EpisodCompanionId,EpisodId,CompanionId)
values ('1','5','4'),('2','4','5'),('3','3','1'),('4','2','2'),('5','1','3');
select * from tblEpisodCompanion;

insert into tblEpisodEnemy(EpisodEnemyId,EpisodId,EnemyId)
values ('1','1','4'),('2','2','5'),('3','3','1'),('4','4','2'),('5','5','3');
select * from tblEpisodEnemy;



