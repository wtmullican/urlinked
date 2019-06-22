SELECT *
FROM dbo.SubCategories
JOIN dbo.Categories ON CAT_SysID = SCAT_CAT_SysID
JOIN dbo.Sections ON SCT_SCAT_SysID = SCAT_SysID
ORDER BY CAT_Desc, SCAT_Desc, SCT_Desc
