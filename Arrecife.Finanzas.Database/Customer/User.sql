CREATE TABLE [Customer].[User]
(
	[IdUser] INT NOT NULL PRIMARY KEY, 
    [CitizenshipCardNumber] INT NOT NULL, 
    [Nick] VARCHAR(15) NOT NULL, 
    [Pass] VARCHAR(70) NOT NULL, 
    [CreationDate] DATETIME NOT NULL, 
    [ModificationDate] DATETIME NOT NULL, 
    [SecretQuestionId] INT NOT NULL, 
    [AnswerQuestion] VARCHAR(50) NOT NULL, 
    [Licence] DATETIME NOT NULL, 
    CONSTRAINT [FK_User_SecretQuestion] FOREIGN KEY ([SecretQuestionId]) REFERENCES [SecretQuestion]([IdSecretQuestion])
)

GO

CREATE INDEX [User_IdUser] ON [Customer].[User] ([IdUser])

GO

CREATE INDEX [User_CitizenshipCardNumber] ON [Customer].[User] ([CitizenshipCardNumber])

GO

CREATE INDEX [User_Nick] ON [Customer].[User] ([Nick])
