DECLARE 
	@Pos1	int = 6,
	@Pos2	int = 7,
	@DateFormat	int = 10,
	@RegExp	varchar(120)

SET @RegExp = '%[0-9]/[0-9]/[0-9][0-9]%'

Select 
	RS_SysID
	, patindex(@RegExp,SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-@Pos1,@Pos2)) T_PatIndex
	, SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-@Pos1,@Pos2) AS Txt_SubString
--	, CONVERT(date,SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-@Pos1,@Pos2),@DateFormat) AS New_Date
	, RS_LongDesc
FROM dbo.Resources (NOLOCK) 
WHERE RS_EntryDT IS NULL 
--	AND patindex(@RegExp,SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-@Pos1,@Pos2)) > 0
ORDER BY RS_SysID





--	M/D/YY
Select 
	RS_SysID
	, SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-6,7) AS M_DD_YY
	, CONVERT(date,SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-6,7),10) AS NewDT
	, patindex('%[^0-9][0-9]/[0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8))
	, RS_LongDesc
FROM dbo.Resources (NOLOCK) 
WHERE patindex('%[^0-9][0-9]/[0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8)) > 0

--	MM/DD/YY
Select 
	RS_SysID
	, CONVERT(date,SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8),10) AS M_DD_YY
	, patindex('%[0-9][0-9]/[0-9][0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8))
	, RS_LongDesc
FROM dbo.Resources (NOLOCK) 
WHERE patindex('%[0-9][0-9]/[0-9][0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8)) > 0


--	M/D/YY

UPDATE dbo.Resources SET RS_InsertDT = CONVERT(date,SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-6,7),10)
WHERE --RS_InsertDT IS NULL
	patindex('%[^0-9][0-9]/[0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8)) > 0

SELECT RS_InsertDT, * FROM dbo.Resources (NOLOCK) WHERE RS_InsertDT IS NOT NULL 
							  
							    
							    
--	M/D/YY
Select 
	RS_SysID
	, SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-6,7) AS M_DD_YY
	, CONVERT(date,SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-6,7),10) AS NewDT
	, patindex('%[^0-9][0-9]/[0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8))
	, RS_LongDesc
FROM dbo.Resources (NOLOCK) 
WHERE patindex('%[^0-9][0-9]/[0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8)) > 0

--	M/D/YY
Select 
	RS_SysID
	, SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-6,7) AS M_DD_YY
	, CONVERT(date,SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-6,7),10) AS NewDT
	, patindex('%[^0-9][0-9]/[0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8))
--	, SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-9,11) AS M_D_YY
--	, patindex('%[0-9]/[0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-6,5))
--	, patindex('%[0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-9,11))
--	, patindex('%[0-9]/[0-9]/[0-9][0-9][0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-9,11))
	--, convert(date,substring(RS_LongDesc,patindex('%[0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',RS_LongDesc),10),101)
	, RS_LongDesc
FROM dbo.Resources (NOLOCK) 
WHERE patindex('%[^0-9][0-9]/[0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8)) > 0
	--OR patindex('%[0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-9,11)) > 0
	--OR patindex('%[0-9]/[0-9]/[0-9][0-9][0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-9,11)) > 0 )
	--AND RS_SysID = 20594
--WHERE patindex('%[:b|0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',RS_LongDesc) > 0
--WHERE patindex('%[^a-z][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',RS_LongDesc) > 0

							    
