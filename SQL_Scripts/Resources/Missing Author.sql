--	--------------------------------------------------------------------------
--	Rules for finding Authur.  
--	Must be formatted like this: 'By Author Name, ...'
--	We look for the word 'By ' and a comma to end the string.
--	--------------------------------------------------------------------------

SELECT
	RS_SysID
	, RS_RST_SysID
	, RST_Desc
	, RS_Author
	, RS_Source
	, RS_LongDesc2
	, RS_LongDesc
FROM dbo.Resources
LEFT OUTER JOIN dbo.ResourceTypes (NOLOCK) ON RST_SysID = RS_RST_SysID
WHERE 1=1 AND ISNULL(RS_LongDesc2,'') <> ''
	AND RST_Desc NOT LIKE 'Obituary'
	AND RS_Author IS NULL 
