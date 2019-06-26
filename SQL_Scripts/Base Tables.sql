SELECT COUNT(*) FROM dbo.Resources (NOLOCK) 
SELECT COUNT(*) FROM dbo.ResourceLinks (NOLOCK) 

SELECT * FROM dbo.ResourceTypes (NOLOCK)
SELECT * FROM dbo.Tags (NOLOCK) 
SELECT * FROM dbo.Categories (NOLOCK) 
SELECT * FROM dbo.SubCategories (NOLOCK) 
SELECT * FROM dbo.Sections (NOLOCK) 

SELECT RS_DupCount, * FROM dbo.Resources (NOLOCK) 
SELECT * FROM dbo.ResourceLinks (NOLOCK) 
