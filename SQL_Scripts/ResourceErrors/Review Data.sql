DECLARE @RS_SysID	int = 1662

SELECT * FROM dbo.Resources WHERE RS_SysID = @RS_SysID

SELECT * 
FROM dbo.ResourceErrors 
WHERE RSE_ErrorType = 'Entry Date'
	AND RSE_RS_SysID = @RS_SysID
