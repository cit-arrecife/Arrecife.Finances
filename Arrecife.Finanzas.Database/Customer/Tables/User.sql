CREATE TABLE [Customer].[User]
(
	[IdUser] INT NOT NULL , 
    [IdPerson] INT NOT NULL, 
    [Nick] VARCHAR(15) NOT NULL, 
    [Pass] VARCHAR(50) NOT NULL, 
    [InputSystemDate] DATETIME NOT NULL, 
    [LastModificationDate] DATETIME NOT NULL, 
    [IdSecretQuestion] INT NOT NULL, 
    [AnswerQuestion] VARCHAR(50) NOT NULL, 
    [Permission] INT NOT NULL, 
    [Licence] DATETIME NOT NULL, 
    CONSTRAINT [PK_User] PRIMARY KEY ([IdUser]), 
    CONSTRAINT [FK_User_Person] FOREIGN KEY ([IdPerson]) REFERENCES [Customer].[Person]([IdPerson]), 
    CONSTRAINT [FK_User_SecretQuestion] FOREIGN KEY ([IdSecretQuestion]) REFERENCES [Customer].[SecretQuestion]([IdSecretQuestion])
)

GO

CREATE INDEX [User_IdUser] ON [Customer].[User] ([IdUser])

GO

CREATE INDEX [User_Nick] ON [Customer].[User] ([Nick])

GO

CREATE INDEX [User_Person] ON [Customer].[User] ([IdPerson])

GO

CREATE INDEX [User_Licence] ON [Customer].[User] ([Licence])
