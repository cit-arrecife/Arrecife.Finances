CREATE TABLE [dbo].[Person]
(
	[IdPerson] INT NOT NULL PRIMARY KEY IDENTITY, 
    [DocumentNumber] INT NOT NULL, 
    [Names] VARCHAR(50) NOT NULL, 
    [LastNames] VARCHAR(50) NOT NULL, 
    [PhoneNumber] INT NOT NULL, 
    [Email] VARCHAR(50) NOT NULL, 
    [Type] BIT NOT NULL, 
    [InputSystemDate] DATETIME NOT NULL, 
    [IdUser] INT NOT NULL
)

GO

CREATE INDEX [Person_IdPerson] ON [dbo].[Person] ([IdPerson])

GO

CREATE INDEX [Person_IdUser] ON [dbo].[Person] ([IdUser])

GO

CREATE INDEX [Person_DocumentNumber] ON [dbo].[Person] ([DocumentNumber])

GO

CREATE INDEX [Person_PhoneNumber] ON [dbo].[Person] ([PhoneNumber])

GO

CREATE INDEX [Person_Type] ON [dbo].[Person] ([Type])

GO
