SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[table2_IU]
@column1 varchar(50),
  @column3 varchar(50),
@column2 varchar(50) AS
BEGIN
IF EXISTS (SELECT * FROM dbo.table2 WHERE column1 = @column1)
UPDATE dbo.table2 SET
column2 = @column2
WHERE
column1 = @column1
ELSE
INSERT INTO dbo.table2 (
column1,
column2)
VALUES(
@column1,
@column2)
END

GO