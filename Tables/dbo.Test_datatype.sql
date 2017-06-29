CREATE TABLE [dbo].[Test_datatype] (
  [varchar(max)] [varchar](max) NULL,
  [nvarchar(max)] [nvarchar](max) NULL,
  [image] [image] NULL,
  [xml] [xml] NULL,
  [text] [text] NULL,
  [ntext] [ntext] NULL,
  [binary] [binary](1) NULL,
  [binary(1234)] [binary](1234) NULL,
  [varbinary] [varbinary](1) NULL,
  [varbinary(max)] [varbinary](max) NULL,
  [sql_variant] [sql_variant] NULL,
  [binary varying] [varbinary](1) NULL,
  [national text] [ntext] NULL,
  [datetime2] [datetime2] NULL,
  [smalldatetime] [smalldatetime] NULL,
  [datetimeoffset] [datetimeoffset] NULL,
  [date] [date] NULL,
  [time] [time] NULL,
  [rowversion] [timestamp] NULL,
  [bit] [bit] NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO