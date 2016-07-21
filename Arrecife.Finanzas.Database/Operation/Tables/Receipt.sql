CREATE TABLE [Operation].[Receipt]
(
	[IdReceipt] INT NOT NULL PRIMARY KEY, 
    [IdPerson] INT NOT NULL, 
    [IdUser] INT NOT NULL, 
    [IdPayment] INT NOT NULL,
    [Total] DECIMAL NOT NULL, 
    [Discount] DECIMAL NOT NULL, 
    [PaymentType] BIT NOT NULL, 
    [State] BIT NOT NULL, 
)

GO

CREATE INDEX [Receipt_IdReceipt] ON [Operation].[Receipt] ([IdReceipt])

GO

CREATE INDEX [Receipt_IdPerson] ON [Operation].[Receipt] ([IdPerson])

GO

CREATE INDEX [Receipt_IdUser] ON [Operation].[Receipt] ([IdUser])

GO

CREATE INDEX [Receipt_IdPayment] ON [Operation].[Receipt] ([IdPayment])

GO

CREATE INDEX [Receipt_State] ON [Operation].[Receipt] ([State])
