CREATE TABLE [dbo].[CustomerMO] (
  [accountnum] [varchar](17) NOT NULL,
  [companyname] [varchar](50) NULL,
  [Fname] [varchar](20) NULL,
  [lname] [varchar](20) NULL,
  [SSN] [char](9) NULL,
  [Homephone] [varchar](15) NULL,
  [Businessphone] [varchar](15) NULL,
  [Mobilephone] [varchar](15) NULL,
  [EmailAddress] [varchar](100) NULL,
  PRIMARY KEY NONCLUSTERED ([accountnum])
)
WITH (MEMORY_OPTIMIZED = ON)
GO

ALTER TABLE [dbo].[CustomerMO]
  ADD INDEX [ix_moh_CustomerMo] HASH ([accountnum]) WITH (BUCKET_COUNT = 8388608)
GO