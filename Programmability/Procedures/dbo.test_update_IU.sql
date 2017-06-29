SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[test_update_IU]
  @column1 varchar(50) AS
BEGIN
  IF EXISTS
  (SELECT * FROM dbo.test_update WHERE column1 = @column1)
    UPDATE dbo.test_update SET
      column1 = @column1
    WHERE column1 = @column1
  ELSE
    INSERT INTO dbo.test_update (
      column1)
    VALUES(
      @column1)
END
GO