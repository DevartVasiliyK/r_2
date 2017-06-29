CREATE TABLE [dbo].[P_table3] (
  [column1] [varchar](50) NOT NULL,
  [column2] [int] NOT NULL,
  CONSTRAINT [PK_P_table3] PRIMARY KEY CLUSTERED ([column1], [column2])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KEY_P_table3_column1]
  ON [dbo].[P_table3] ([column1])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KEY_P_table3_column2]
  ON [dbo].[P_table3] ([column2])
  ON [PRIMARY]
GO