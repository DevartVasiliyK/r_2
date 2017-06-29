CREATE TABLE [dbo].[rService] (
  [ID] [int] IDENTITY,
  [Service] [varchar](100) NULL,
  CONSTRAINT [PK_rService] PRIMARY KEY NONCLUSTERED ([ID])
)
ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [Service]
  ON [dbo].[rService] ([Service])
  ON [PRIMARY]
GO