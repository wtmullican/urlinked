
EXEC dbo.RS_ParseLongDesc_Fav_SP

--  Review Bad Entries

SELECT
	RS_SysID
	, RS_FavoriteFlag
	, RS_LongDesc2
	, LEN(RS_LongDesc2) as LD_Length
	, RS_LongDesc
FROM dbo.Resources
LEFT OUTER JOIN dbo.ResourceTypes (NOLOCK) ON RST_SysID = RS_RST_SysID
WHERE 1=1 AND ISNULL(RS_LongDesc2,'') <> ''
	AND RS_LongDesc LIKE '%*UR*%' AND RS_FavoriteFlag = 0
