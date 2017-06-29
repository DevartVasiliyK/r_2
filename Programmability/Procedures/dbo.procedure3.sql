SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[procedure3]
AS 
SELECT c.city_id
      ,c.city
      ,c.country_id
      ,c.last_update
      ,c.а
      ,c.с_1
      ,c.column1 FROM dbo.city c
GO