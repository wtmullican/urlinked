--	--------------------------------------------------------------------------
--	Rules for finding Entry Date.  
--	We look for the word Entry date to be in slashed format like this ##/##/##
--	We check for all different formats of this.  
--	But the date must be at the END of the description.
--	--------------------------------------------------------------------------

SELECT
	RS_SysID
	, RS_RST_SysID
	, RST_Desc
	, RS_EntryDT
	, RS_Author
	, RS_Source
	, RS_LongDesc2
	, RS_LongDesc
FROM dbo.Resources
LEFT OUTER JOIN dbo.ResourceTypes (NOLOCK) ON RST_SysID = RS_RST_SysID
WHERE 1=1 AND ISNULL(RS_LongDesc2,'') <> ''
	AND RS_EntryDT IS NULL 
ORDER BY RS_SysID
