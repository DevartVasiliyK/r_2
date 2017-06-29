SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   VIEW [db_owner].[visesssw3_copy__copy] 
WITH SCHEMABINDING, VIEW_METADATA
AS SELECT
  c.country_id
 ,c.country
 ,c.last_update
FROM dbo.country c
INNER JOIN dbo.view1
  ON c.country = view1.city_id
WITH CHECK OPTION
GO