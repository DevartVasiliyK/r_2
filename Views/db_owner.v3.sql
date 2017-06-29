SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   VIEW [db_owner].[v3] 
WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS select cc.country_id
      ,cc.country, cc.last_update FROM dbo.country cc
WITH CHECK OPTION
GO