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

							    
