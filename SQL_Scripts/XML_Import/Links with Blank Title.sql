SELECT *
FROM dbo.Resources 
JOIN dbo.ResourceLinks ON RSL_RS_SysID = RS_SysID
JOIN dbo.Sections ON SCT_SysID = RSL_SCT_SysID
JOIN dbo.SubCategories ON SCAT_SysID = SCT_SCAT_SysID
JOIN dbo.Categories ON CAT_SysID = SCAT_CAT_SysID
--WHERE RS_SysID = 2
WHERE RS_Desc LIKE 'Blank%'
