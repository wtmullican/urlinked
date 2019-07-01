
/*
TRUNCATE TABLE [dbo].[Categories]
TRUNCATE TABLE [dbo].[ResourceErrors]
TRUNCATE TABLE [dbo].[ResourceLinks]
TRUNCATE TABLE [dbo].[Resources]
TRUNCATE TABLE [dbo].[ResourceTypes]
TRUNCATE TABLE [dbo].[Sections]
TRUNCATE TABLE [dbo].[SubCategories]
TRUNCATE TABLE [dbo].[Tags]
TRUNCATE TABLE [dbo].[XMLAPI_Log]
*/
--SELECT * FROM dbo.XML_Import


EXEC dbo.XML_Parse_Links_SP 3
