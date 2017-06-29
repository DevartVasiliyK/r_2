CREATE TABLE [dbo].[table1] (
  [column1] [varchar](50) NOT NULL,
  [column2] [varchar](50) NULL,
  [column3] [varchar](50) NULL
)
ON [PRIMARY]
GO

CREATE UNIQUE CLUSTERED INDEX [UK_table1_column2]
  ON [dbo].[table1] ([column2])
  ON [PRIMARY]
GO