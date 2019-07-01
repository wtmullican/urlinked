
--EXEC dbo.XML_ParsePrep_LongDesc_SP
--EXEC dbo.RS_ParseLongDesc_RSType_SP
--EXEC dbo.RS_ParseLongDesc_Fav_SP
--EXEC dbo.RS_ParseLongDesc_Author_SP
EXEC dbo.RS_ParseLongDesc_EntryDate_SP

--EXEC dbo.RS_ParseLongDesc_PubDT_SP 

SELECT
	RS_SysID
	, RS_RST_SysID
	, RST_Desc
	, RS_Author
	, RS_EntryDT
	, RS_FavoriteFlag
	, RS_PublishedDT
	, RS_LongDesc2
	, LEN(RS_LongDesc2) as LD_Length
	, RS_LongDesc
FROM dbo.Resources
LEFT OUTER JOIN dbo.ResourceTypes (NOLOCK) ON RST_SysID = RS_RST_SysID
WHERE 1=1 AND ISNULL(RS_LongDesc2,'') <> ''
--	AND RS_LongDesc LIKE '%[(]%[)]%' AND RS_RST_SysID IS NULL
--	AND RS_LongDesc LIKE '%*UR*%' AND RS_FavoriteFlag = 0
--	AND RS_PublishedDT IS NULL
	AND RS_EntryDT IS NOT NULL --AND patindex('%[0-9][0-9]',SUBSTRING(RS_LongDesc2,LEN(RS_LongDesc2) - 2,3)) > 0
--	AND RS_LongDesc2 LIKE '%[0-9]//[0-9]%'
--	AND RS_LongDesc LIKE '%by %' AND RS_Author IS NULL 

