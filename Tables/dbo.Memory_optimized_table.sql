CREATE TABLE [dbo].[Memory_optimized_table] (
  [column1] [int] NOT NULL,
  [column2] [int] IDENTITY,
  [column3] [bigint] NULL,
  [column4] [varchar](50) NULL,
  CONSTRAINT [PK_Memory_optimized_table_column1] PRIMARY KEY NONCLUSTERED ([column1]),
  CONSTRAINT [KEY_Memory_optimized_table_column3] UNIQUE ([column3])
)
WITH (MEMORY_OPTIMIZED = ON)
GO

ALTER TABLE [dbo].[Memory_optimized_table]
  ADD INDEX [IDX_Memory_optimized_table_column2] ([column2])
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [trigger_MOT_t]
ON [dbo].[Memory_optimized_table]
WITH NATIVE_COMPILATION, SCHEMABINDING
AFTER INSERT
AS BEGIN ATOMIC WITH
(
TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'us_english'
)
UPDATE dbo.Memory_optimized_table SET dbo.Memory_optimized_table.column3=2
END
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE   TRIGGER [trigger_MOT1]
ON [dbo].[Memory_optimized_table]
WITH NATIVE_COMPILATION, SCHEMABINDING
AFTER INSERT
AS BEGIN ATOMIC WITH
(
TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'us_english'
)
UPDATE dbo.Memory_optimized_table SET dbo.Memory_optimized_table.column3=1
END
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [trigger_MOT2]
ON [dbo].[Memory_optimized_table]
WITH NATIVE_COMPILATION, SCHEMABINDING
AFTER INSERT
AS BEGIN ATOMIC WITH
(
TRANSACTION ISOLATION LEVEL = SNAPSHOT, LANGUAGE = N'us_english'
)
UPDATE dbo.Memory_optimized_table SET dbo.Memory_optimized_table.column3=1
END
GO