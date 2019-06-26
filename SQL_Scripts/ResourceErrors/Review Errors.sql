SELECT RS_SysID, RSE_ErrorType, RSE_ErrorText, RS_LongDesc
FROM dbo.ResourceErrors
JOIN dbo.Resources ON RS_SysID = RSE_RS_SysID
