SELECT [RST_SysID], [RST_Desc], COUNT(*) as Resource_Count
FROM dbo.ResourceTypes
JOIN dbo.Resources (NOLOCK)  ON RS_RST_SysID = RST_SysID
GROUP BY [RST_SysID], [RST_Desc]
ORDER BY RST_Desc
