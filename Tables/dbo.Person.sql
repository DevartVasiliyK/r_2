CREATE TABLE [dbo].[Person] (
  [Id] [int] IDENTITY,
  [FirstName] [nvarchar](100) NOT NULL,
  [LastName] [nvarchar](100) NOT NULL,
  [InfoJson] [nvarchar](max) NULL,
  PRIMARY KEY NONCLUSTERED ([Id])
)
WITH (MEMORY_OPTIMIZED = ON)
GO