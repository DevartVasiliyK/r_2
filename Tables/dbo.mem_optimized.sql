CREATE TABLE [dbo].[mem_optimized] (
  [column1] [varchar](50) NOT NULL,
  [column2] [varchar](50) NULL,
  [column3] [int] NULL,
  CONSTRAINT [PK_table2_column12] PRIMARY KEY NONCLUSTERED ([column1])
)
WITH (MEMORY_OPTIMIZED = ON)
GO