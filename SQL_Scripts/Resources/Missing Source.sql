--	--------------------------------------------------------------------------
--	Rules for finding Source.  
--	We look for the all the common TLD or top level domain: .com, .edu .etc
--	The last character after the TLD must be a space, no .com/news
--	The string can ONLY have 1 instance of the TLD.
--	The source can be anywhere in the string. 
--	We are excluding 'Obituary'
--	--------------------------------------------------------------------------

SELECT
	RS_SysID
	, RS_RST_SysID
	, RST_Desc
	, RS_Source
	, RS_Author
	, RS_LongDesc2
	, RS_LongDesc
FROM dbo.Resources
LEFT OUTER JOIN dbo.ResourceTypes (NOLOCK) ON RST_SysID = RS_RST_SysID
WHERE 1=1 AND ISNULL(RS_LongDesc2,'') <> ''
	AND RST_Desc NOT LIKE 'Obituary'
	AND RST_Desc NOT LIKE 'Facebook - Event'
	AND RS_Source IS NULL
ORDER BY RS_SysID

