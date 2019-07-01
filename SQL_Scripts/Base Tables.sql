/*
SELECT 'Categories', COUNT(*) FROM dbo.Categories (NOLOCK) 
SELECT 'ResourceErrors', COUNT(*) FROM dbo.ResourceErrors (NOLOCK) 
SELECT 'ResourceLinks', COUNT(*) FROM dbo.ResourceLinks (NOLOCK) 
SELECT 'Resources', COUNT(*) FROM dbo.Resources (NOLOCK) 
SELECT 'ResourceTypes', COUNT(*) FROM dbo.ResourceTypes (NOLOCK) 
SELECT 'SearchTerms', COUNT(*) FROM dbo.SearchTerms (NOLOCK) 
SELECT 'Sections', COUNT(*) FROM dbo.Sections (NOLOCK) 
SELECT 'SubCategories', COUNT(*) FROM dbo.SubCategories (NOLOCK) 
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
