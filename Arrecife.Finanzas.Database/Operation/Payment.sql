CREATE TABLE [Operation].[Payment]
(
	[IdPayment] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CitizenshipCard] INT NOT NULL, 
    [Receipt] INT NOT NULL, 
    [ValueReceipt] DECIMAL(10) NOT NULL, 
    [Notes] VARCHAR(4000) NOT NULL, 
    [InputSystemDate] DATETIME NOT NULL, 
    [ModifiedDate] DATETIME NOT NULL, 
    [UserId] INT NOT NULL
)

GO

CREATE INDEX [Payment_CitizenshipCard] ON [Operation].[Payment] ([CitizenshipCard])

GO

CREATE INDEX [Payment_Id] ON [Operation].[Payment] ([IdPayment])

GO

CREATE INDEX [Payment_Receipt] ON [Operation].[Payment] ([Receipt])

GO

CREATE INDEX [Payment_UserId] ON [Operation].[Payment] ([UserId])

GO

CREATE INDEX [Payment_InputSystemDate] ON [Operation].[Payment] ([InputSystemDate])

GO

CREATE INDEX [Payment_ModifiedDate] ON [Operation].[Payment] ([ModifiedDate])
