SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[view1] 
WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS SELECT c.city_id
      ,c.city
      ,c.country_id
      ,c.last_update
      ,c.а
      ,c.с_1
      ,c.column1 FROM dbo.city c
WITH CHECK OPTION
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE UNIQUE CLUSTERED INDEX [IDX_view1]
  ON [dbo].[view1] ([city_id])
  ON [PRIMARY]
GO