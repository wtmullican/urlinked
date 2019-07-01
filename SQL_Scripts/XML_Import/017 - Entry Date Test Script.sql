DECLARE
	@UserID				int = 1,
	@RS_SysID			int,
	@RS_LongDesc2		varchar(400),
	@Pos_Beg			int,
	@Text_Len			int,
	@RegExp				varchar(120),
	@DateFormat			int,
	@UpdateFlag			tinyint

SET @RS_LongDesc2 = ' 1/13/2018'

SET @RegExp = '[^0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]'
SET @Pos_Beg = LEN(@RS_LongDesc2) - 10
SET @Text_Len = 11
SET @DateFormat = 110
SET @RS_SysID = 1662

EXEC dbo.RS_ValEntryDT_SP @RS_SysID, @RegExp, @RS_LongDesc2, @Pos_Beg, @Text_Len, @DateFormat, @oUpdatedFlag = @UpdateFlag OUTPUT

SELECT * 
FROM dbo.ResourceErrors 
WHERE RSE_ErrorType = 'Entry Date'
	AND RSE_RS_SysID = @RS_SysID
