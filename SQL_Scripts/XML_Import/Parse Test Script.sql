	DECLARE
		@pXMLSysID			int,
		@Debug				tinyint,
		@DbugTitle			varchar(256),
		@Cursor_OpenStatus	int,
		@XMLHandle			int,
		@XMLMode			int,
		@msg				varchar(max),
		@XMLInput			XML

	SET @pXMLSysID = 1

	DECLARE 
		@UpdDateTime			datetime,
	--	Security
		@SEC_ProdID				int,
		@SEC_ProdDesc			varchar(255),			
		@SEC_TCS_Serial_TO		int,
		@SEC_TCS_Serial_FROM	int,
		@SEC_XPath				varchar(1024),
		@SEC_ErrorFlag			int,
		@SEC_ErrorText			varchar(256),
	--	SearchTerms
		@ST_XPath				varchar(1024),
		@ST_InUPDFlag			tinyint,
		@ST_total				int,
		@ST_iteration			int,
		@ST_id					int,
		@ST_SysID				int,
		@ST_Name				varchar(500),
		@ST_Tag					varchar(50),		
	--	Temp
		@Temp_int				int
		
	--	--------------------------------------------------------------------------
	--	Search Terms
	--	Search Terms node is parent to other nodes.
	--	--------------------------------------------------------------------------
	--	Get the XML Data
	SELECT 
		@XMLInput = XMLI_XMLData
	FROM dbo.XML_Import WITH (NOLOCK) 
	WHERE XMLI_SysID = @pXMLSysID

	exec sp_xml_preparedocument @XMLHandle output, @XMLInput

	set @XMLMode = 2
	set @ST_XPath = '/root/categories/category'
	set @ST_iteration = 0
	-- Determine number of Transactions nodes.
	set @ST_total = (	select count(*)
						from openxml(@XMLHandle, @ST_XPath, @XMLMode)
						with (	title		varchar(500),
								[name]		varchar(500)
							)
					)
	
	Select @ST_total

	select *
	from openxml(@XMLHandle, @ST_XPath, @XMLMode)
	with (	title		varchar(500),
			[name]		varchar(500),
			[tag]			varchar(50)
		)


	exec sp_xml_removedocument @XMLHandle


