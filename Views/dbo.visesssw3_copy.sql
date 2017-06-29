SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[visesssw3_copy] 
WITH SCHEMABINDING
AS SELECT
  c.country_id
 ,c.country
 ,c.last_update
FROM dbo.country c
WITH CHECK OPTION
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE UNIQUE CLUSTERED INDEX [UK_visesssw3_copy_country_id]
  ON [dbo].[visesssw3_copy] ([country_id])
  ON [PRIMARY]
GO

CREATE STATISTICS [statistics1]
  ON [dbo].[visesssw3_copy] ([last_update])
GO