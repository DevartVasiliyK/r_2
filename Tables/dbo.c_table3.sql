CREATE TABLE [dbo].[c_table3] (
  [column1] [varchar](50) NULL,
  [column2] [int] NULL
)
ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IDX_c_table3_column1]
  ON [dbo].[c_table3] ([column1])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[c_table3] WITH NOCHECK
  ADD CONSTRAINT [FK_c_table3_column1] FOREIGN KEY ([column1]) REFERENCES [dbo].[P_table3] ([column1])
GO

ALTER TABLE [dbo].[c_table3] WITH NOCHECK
  ADD CONSTRAINT [FK_c_table3_column2] FOREIGN KEY ([column2]) REFERENCES [dbo].[P_table3] ([column2])
GO