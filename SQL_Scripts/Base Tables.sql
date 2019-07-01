/*
SELECT COUNT(*) FROM dbo.Categories (NOLOCK) 
SELECT COUNT(*) FROM dbo.ResourceErrors (NOLOCK) 
SELECT COUNT(*) FROM dbo.ResourceLinks (NOLOCK) 
SELECT COUNT(*) FROM dbo.Resources (NOLOCK) 
SELECT COUNT(*) FROM dbo.ResourceTypes (NOLOCK) 
SELECT COUNT(*) FROM dbo.SearchTerms (NOLOCK) 
SELECT COUNT(*) FROM dbo.Sections (NOLOCK) 
SELECT COUNT(*) FROM dbo.SubCategories (NOLOCK) 
SELECT COUNT(*) FROM dbo.Tags (NOLOCK) 
SELECT COUNT(*) FROM dbo.XML_Import (NOLOCK) 
SELECT COUNT(*) FROM dbo.XMLAPI_Log (NOLOCK) 
*/

SELECT * FROM dbo.ResourceTypes (NOLOCK)
SELECT * FROM dbo.Tags (NOLOCK) 
SELECT * FROM dbo.Categories (NOLOCK) 
SELECT * FROM dbo.SubCategories (NOLOCK) 
SELECT * FROM dbo.Sections (NOLOCK) 

SELECT RS_DupCount, * FROM dbo.Resources (NOLOCK) 
SELECT * FROM dbo.ResourceLinks (NOLOCK) 
