CREATE TABLE [Customer].[Person]
(
	[IdPerson] INT NOT NULL  IDENTITY, 
    [DocumentNumber] INT NOT NULL, 
    [Names] VARCHAR(50) NOT NULL, 
    [LastNames] VARCHAR(50) NOT NULL, 
    [PhoneNumber] INT NOT NULL, 
    [Email] VARCHAR(50) NOT NULL, 
    [Type] BIT NOT NULL, 
    [InputSystemDate] DATETIME NOT NULL, 
    [IdUser] INT NOT NULL, 
    CONSTRAINT [PK_Person] PRIMARY KEY ([IdPerson])
)

GO

CREATE INDEX [Person_IdPerson] ON [Customer].[Person] ([IdPerson])

GO

CREATE INDEX [Person_IdUser] ON [Customer].[Person] ([IdUser])

GO

CREATE INDEX [Person_DocumentNumber] ON [Customer].[Person] ([DocumentNumber])

GO

CREATE INDEX [Person_PhoneNumber] ON [Customer].[Person] ([PhoneNumber])

GO

CREATE INDEX [Person_Type] ON [Customer].[Person] ([Type])

GO
