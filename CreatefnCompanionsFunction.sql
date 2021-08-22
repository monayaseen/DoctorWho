create function fnCompanions(@EpisodId VARCHAR(20))
returns varchar(40)
AS 
BEGIN
	declare @message varchar(50);
	select @message=COALESCE(@message + ', '+ tblCompanion.CompanionName,tblCompanion.CompanionName)
	from tblCompanion join tblEpisodCompanion
	on tblCompanion.CompanionId=tblEpisodCompanion.CompanionId
	and tblEpisodCompanion.EpisodId=@EpisodId;
	return @message;
END

select dbo.fnCompanions(2) as regards;