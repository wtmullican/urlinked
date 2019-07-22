SELECT
	RS_SysID
	, RS_RST_SysID
	, RST_Desc
	, RS_City
	, RS_State
	, RS_LongDesc2
	, RS_LongDesc
FROM dbo.Resources
JOIN dbo.ResourceTypes (NOLOCK) ON RST_SysID = RS_RST_SysID
WHERE 1=1 AND ISNULL(RS_LongDesc2,'') <> ''
	AND RST_Desc LIKE '%Event%'
	AND RS_State IS NULL
ORDER BY RS_SysID
