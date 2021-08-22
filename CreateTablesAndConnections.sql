CREATE TABLE tblEnemy(
EnemyId VARCHAR(20) NOT NULL primary key,
EnemyName VARCHAR(20) not null ,
Description text 
);

CREATE TABLE tblAuthor(
AuthorId VARCHAR(20) NOT NULL primary key,
AuthorName VARCHAR(20) not null ,

);

CREATE TABLE tblCompanion(
CompanionId VARCHAR(20) NOT NULL primary key,
CompanionName VARCHAR(20) not null ,
WhoPlayed VARCHAR(20) not null

);

CREATE TABLE tblDoctor(
DoctorId VARCHAR(20) NOT NULL primary key,
DoctorNumber VARCHAR(20) not null,
DoctorName VARCHAR(30) not null ,
BirthDate date not null,
FirtEpisodeDate date,
LastEpisodeDate date

);

CREATE TABLE tblEpisode(
EpisodeId VARCHAR(20) NOT NULL primary key,
SeriesNumber VARCHAR(20) not null,
EpisodeNumber VARCHAR(20) not null,
EpisodeType VARCHAR(20) not null,
Title VARCHAR(20) not null,
EpisodeDate date not null,
AuthorId VARCHAR(20) FOREIGN KEY REFERENCES tblAuthor(AuthorId) ,
DoctorId VARCHAR(20) FOREIGN KEY REFERENCES tblDoctor(DoctorId),
Notes VARCHAR(50),
 

);


CREATE TABLE tblEpisodEnemy(
EpisodEnemyId VARCHAR(20) NOT NULL primary key,
EpisodId VARCHAR(20) FOREIGN KEY REFERENCES tblEpisode(EpisodeId) ,
EnemyId VARCHAR(20) FOREIGN KEY REFERENCES tblEnemy(EnemyId)

);

CREATE TABLE tblEpisodCompanion(
EpisodCompanionId VARCHAR(20) NOT NULL primary key,
EpisodId VARCHAR(20) FOREIGN KEY REFERENCES tblEpisode(EpisodeId) ,
CompanionId VARCHAR(20) FOREIGN KEY REFERENCES tblCompanion(CompanionId)

);

