
EXEC dbo.RS_ParseLongDesc_RSType_SP

--  Review Bad Entries

SELECT
	RS_SysID
	, RS_RST_SysID
	, RST_Desc
	, RS_LongDesc2
	, LEN(RS_LongDesc2) as LD_Length
	, RS_LongDesc
FROM dbo.Resources
LEFT OUTER JOIN dbo.ResourceTypes (NOLOCK) ON RST_SysID = RS_RST_SysID
WHERE 1=1 AND ISNULL(RS_LongDesc2,'') <> ''
	AND RS_LongDesc LIKE '%[(]%[)]%'
	AND RS_RST_SysID IS NULL
