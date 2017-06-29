CREATE TABLE [dbo].[txt_table] (
  [column1] [varchar](50) NOT NULL DEFAULT (1),
  [column2] [varchar](50) NULL,
  [column3] [varchar](50) NULL,
  [column4] [varchar](50) NULL,
  [column5] [varchar](50) NULL
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'test', 'SCHEMA', N'dbo', 'TABLE', N'txt_table', 'COLUMN', N'column1'
GO