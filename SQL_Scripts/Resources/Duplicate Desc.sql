SELECT RS_Desc, COUNT(*)
FROM dbo.Resources (NOLOCK) 
WHERE RS_Desc NOT IN ('Website')
GROUP BY RS_Desc
HAVING COUNT(*) > 1

--	To Review each one, to the RS_Desc in the LIKE statement
SELECT * FROM dbo.Resources where rs_desc like '$1.4 Million an Hour: That’s How Much This Problem Costs Missouri%'

