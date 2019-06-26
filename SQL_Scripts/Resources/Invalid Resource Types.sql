SELECT RS_RST_SysID, *
FROM dbo.Resources (NOLOCK) 
WHERE RS_LongDesc LIKE '%[)]%'
	AND RS_LongDesc NOT LIKE '%[(]%'
