CREATE TABLE [Operation].[Receipt]
(
	[IdReceipt] INT NOT NULL , 
    [IdPerson] INT NOT NULL, 
    [IdUser] INT NOT NULL, 
    [Total] DECIMAL NOT NULL, 
    [Discount] DECIMAL NOT NULL, 
    [PaymentType] BIT NOT NULL, 
    [State] BIT NOT NULL, 
    CONSTRAINT [PK_Receipt] PRIMARY KEY ([IdReceipt]), 
    CONSTRAINT [FK_Receipt_Person] FOREIGN KEY ([IdPerson]) REFERENCES [Customer].[Person]([IdPerson]), 
    CONSTRAINT [FK_Receipt_User] FOREIGN KEY ([IdUser]) REFERENCES [Customer].[User]([IdUser]) 
)

GO

CREATE INDEX [Receipt_IdReceipt] ON [Operation].[Receipt] ([IdReceipt])

GO

CREATE INDEX [Receipt_IdPerson] ON [Operation].[Receipt] ([IdPerson])

GO

CREATE INDEX [Receipt_IdUser] ON [Operation].[Receipt] ([IdUser])

GO

CREATE INDEX [Receipt_State] ON [Operation].[Receipt] ([State])
