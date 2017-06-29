CREATE TABLE [dbo].[Person_t] (
  [Id] [int] IDENTITY,
  [FirstName] [nvarchar](100) NOT NULL,
  [LastName] [nvarchar](100) NOT NULL,
  [InfoJson] [nvarchar](max) NULL,
  PRIMARY KEY NONCLUSTERED ([Id]),
  CONSTRAINT [Content should be formatted as JSON] CHECK (isjson([InfoJSON])>(0))
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO