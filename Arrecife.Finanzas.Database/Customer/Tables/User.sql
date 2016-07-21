CREATE TABLE [Customer].[User]
(
	[IdUser] INT NOT NULL PRIMARY KEY, 
    [IdPerson] INT NOT NULL, 
    [Nick] VARCHAR(15) NOT NULL, 
    [Pass] VARCHAR(50) NOT NULL, 
    [InputSystemDate] DATETIME NOT NULL, 
    [LastModificationDate] DATETIME NOT NULL, 
    [SecretQuestionId] INT NOT NULL, 
    [AnswerQuestion] VARCHAR(50) NOT NULL, 
    [Permission] INT NOT NULL, 
    [Licence] DATETIME NOT NULL
)

GO

CREATE INDEX [User_IdUser] ON [Customer].[User] ([IdUser])

GO

CREATE INDEX [User_Nick] ON [Customer].[User] ([Nick])

GO

CREATE INDEX [User_Person] ON [Customer].[User] ([IdPerson])

GO

CREATE INDEX [User_Licence] ON [Customer].[User] ([Licence])
