SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[view3] 
WITH SCHEMABINDING, VIEW_METADATA
AS SELECT
  c.country_id
 ,c.country
 ,c.last_update
FROM dbo.country c
WITH CHECK OPTION
GO