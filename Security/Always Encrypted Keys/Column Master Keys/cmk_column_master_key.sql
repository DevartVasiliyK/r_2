CREATE COLUMN MASTER KEY [cmk_column_master_key]
WITH(
KEY_STORE_PROVIDER_NAME = N'MSSQL_CNG_STORE',
KEY_PATH = N'My HSM CNG Provider/AlwaysEncryptedKey'
)
GO