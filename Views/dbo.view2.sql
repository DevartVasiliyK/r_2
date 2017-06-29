SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[view2] 
WITH ENCRYPTION, SCHEMABINDING
AS SELECT c.city_id
      ,c.city
      ,c.country_id
      ,c.last_update
      ,c.а
      ,c.с_1 FROM dbo.city c
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE UNIQUE CLUSTERED INDEX [IDX_view2]
  ON [dbo].[view2] ([city_id])
  ON [PRIMARY]
GO

CREATE STATISTICS [statistics1]
  ON [dbo].[view2] ([country_id])
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'wrtretet', 'SCHEMA', N'dbo', 'VIEW', N'view2'
GO