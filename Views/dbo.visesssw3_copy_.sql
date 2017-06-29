SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[visesssw3_copy_] 
WITH SCHEMABINDING
AS select c.country_id
      ,c.country
      ,c.last_update FROM dbo.country c
GO