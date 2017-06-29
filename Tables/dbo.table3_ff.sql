CREATE TABLE [dbo].[table3_ff] (
  [column1] [varchar](50) NULL,
  [column2] [varchar](50) NULL
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[table3_ff]
  ADD CONSTRAINT [FK_table3_ff_column1] FOREIGN KEY ([column1]) REFERENCES [dbo].[table3_f] ([column2])
GO

EXEC sys.sp_addextendedproperty N'MS_Description', 'ee', 'SCHEMA', N'dbo', 'TABLE', N'table3_ff'
GO