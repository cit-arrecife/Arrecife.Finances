CREATE TABLE [Customer].[SecretQuestion]
(
	[IdSecretQuestion] INT NOT NULL , 
    [Question] VARCHAR(150) NOT NULL, 
    CONSTRAINT [PK_SecretQuestion] PRIMARY KEY ([IdSecretQuestion])
)

GO

CREATE INDEX [SecretQuestion_Id] ON [Customer].[SecretQuestion] ([IdSecretQuestion])
