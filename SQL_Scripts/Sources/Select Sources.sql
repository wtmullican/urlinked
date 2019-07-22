SELECT
	SRC_SysID, SRC_Desc, COUNT(*) AS Resource_Count
FROM dbo.Sources (NOLOCK) 
JOIN dbo.Resources ON RS_SCR_SysID = SRC_SysID
GROUP BY SRC_SysID, SRC_Desc
ORDER BY SRC_Desc

--Select RS_LongDesc from dbo.Resources WHERE RS_LongDesc LIKE '%.salon.com%'
