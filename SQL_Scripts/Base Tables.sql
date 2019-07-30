/*
SELECT 'Resources', COUNT(*) FROM dbo.Resources (NOLOCK) 
SELECT 'ResourceLinks', COUNT(*) FROM dbo.ResourceLinks (NOLOCK) 
SELECT 'ResourceErrors', COUNT(*) FROM dbo.ResourceErrors (NOLOCK) 
SELECT 'ResourceTypes', COUNT(*) FROM dbo.ResourceTypes (NOLOCK) 
SELECT 'Categories', COUNT(*) FROM dbo.Categories (NOLOCK) 
SELECT 'SubCategories', COUNT(*) FROM dbo.SubCategories (NOLOCK) 
--SELECT 'SearchTerms', COUNT(*) FROM dbo.SearchTerms (NOLOCK) 
SELECT 'Sections', COUNT(*) FROM dbo.Sections (NOLOCK) 
SELECT 'Authors', COUNT(*) FROM dbo.Authors (NOLOCK) 
SELECT 'Sources', COUNT(*) FROM dbo.Sources (NOLOCK) 
SELECT 'Tags', COUNT(*) FROM dbo.Tags (NOLOCK) 
SELECT 'XML_Import', COUNT(*) FROM dbo.XML_Import (NOLOCK) 
SELECT 'XMLAPI_Log', COUNT(*) FROM dbo.XMLAPI_Log (NOLOCK) 
*/

SELECT * FROM dbo.ResourceTypes (NOLOCK)
SELECT * FROM dbo.Tags (NOLOCK) 
SELECT * FROM dbo.Categories (NOLOCK) 
SELECT * FROM dbo.SubCategories (NOLOCK) 
SELECT * FROM dbo.Sections (NOLOCK) 

SELECT RS_DupCount, * FROM dbo.Resources (NOLOCK) 
SELECT * FROM dbo.ResourceLinks (NOLOCK) 
