--SELECT COUNT(*) FROM dbo.Resources
--SELECT * FROM dbo.Resources WHERE RS_SysID = 14751
Select 
	RS_SysID
	, SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8) AS M_DD_YY
	, patindex('%[0-9][0-9]/[0-9][0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8))
	, patindex('%[0-9]/[0-9][0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8))
--	, SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-9,11) AS M_D_YY
--	, patindex('%[0-9]/[0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-6,5))
--	, patindex('%[0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-9,11))
--	, patindex('%[0-9]/[0-9]/[0-9][0-9][0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-9,11))
	--, convert(date,substring(RS_LongDesc,patindex('%[0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',RS_LongDesc),10),101)
	, RS_LongDesc
FROM dbo.Resources (NOLOCK) 
WHERE 1=1
	AND patindex('%[0-9][0-9]/[0-9][0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8)) > 0
	--OR patindex('%[0-9]/[0-9]/[0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-7,8)) > 0
	--OR patindex('%[0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-9,11)) > 0
	--OR patindex('%[0-9]/[0-9]/[0-9][0-9][0-9][0-9]%',SUBSTRING(RS_LongDesc,LEN(RS_LongDesc)-9,11)) > 0 )
	--AND RS_SysID = 20594
--WHERE patindex('%[:b|0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',RS_LongDesc) > 0
--WHERE patindex('%[^a-z][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',RS_LongDesc) > 0


--select 
--convert(date,
--substring(UserAddedInfo,patindex('%[0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',UserAddedInfo),10)
--      ,103)
--from table_name
--where patindex('%[0-9][0-9]/[0-9][0-9]/[0-9][0-9][0-9][0-9]%',UserAddedInfo) > 0
