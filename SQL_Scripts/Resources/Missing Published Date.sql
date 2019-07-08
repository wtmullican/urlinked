--	--------------------------------------------------------------------------
--	Rules for finding Published Date.  
--	We look for the Published date to be in standard format:  July 4, 2019
--	We check for all different formats of this.  
--	The date can be any where in the string, we ignore Obituary 
--	and any description with a '-' in the string
--	--------------------------------------------------------------------------

SELECT
	RS_SysID
	, RS_RST_SysID
	, RST_Desc
	, RS_PublishedDT
	, RS_Author
	, RS_Source
	, RS_LongDesc2
	, RS_LongDesc
FROM dbo.Resources
LEFT OUTER JOIN dbo.ResourceTypes (NOLOCK) ON RST_SysID = RS_RST_SysID
WHERE 1=1 AND ISNULL(RS_LongDesc2,'') <> ''
	AND RST_Desc NOT LIKE 'Obituary'
	AND RS_PublishedDT IS NULL
ORDER BY RS_SysID
