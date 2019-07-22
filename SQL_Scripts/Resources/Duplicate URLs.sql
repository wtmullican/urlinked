SELECT RS_URL, COUNT(*)
FROM dbo.Resources (NOLOCK) 
GROUP BY RS_URL
HAVING COUNT(*) > 1

--	To Review each one, to the RS_URL in the LIKE statement
SELECT * FROM dbo.Resources where rs_url like 'hhttp://www.drug-addiction-help-now.org/blog/2013/07/an-addicted-child-and-a-mothers-journey-peeling-the-onion/%'

