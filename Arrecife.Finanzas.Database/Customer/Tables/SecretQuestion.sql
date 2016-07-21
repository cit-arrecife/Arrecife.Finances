CREATE TABLE [Customer].[SecretQuestion]
(
	[IdSecretQuestion] INT NOT NULL PRIMARY KEY, 
    [Question] VARCHAR(150) NOT NULL
)

GO

CREATE INDEX [SecretQuestion_Id] ON [Customer].[SecretQuestion] ([IdSecretQuestion])
