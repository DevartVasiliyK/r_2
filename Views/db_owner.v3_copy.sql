SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   VIEW [db_owner].[v3_copy] 
WITH SCHEMABINDING
AS select c.country_id
      ,c.country, c.last_update FROM dbo.country c
WITH CHECK OPTION
GO