CREATE TABLE [dbo].[table_trigger] (
  [column1] [varchar](50) NULL,
  [id] [int] NULL
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [trigger1]
ON [dbo].[table_trigger]
AFTER INSERT
AS 
  BEGIN
  	UPDATE dbo.trigger1 SET id=2
      WHERE id=1
  END

GO