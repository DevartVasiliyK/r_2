CREATE TABLE [dbo].[table3_f] (
  [column1] [varchar](50) NOT NULL,
  [column2] [varchar](50) NULL,
  CONSTRAINT [PK_table3_f_column1] PRIMARY KEY CLUSTERED ([column1])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KEY_table3_f_column2]
  ON [dbo].[table3_f] ([column2])
  ON [PRIMARY]
GO