CREATE TABLE [Operation].[Payment]
(
	[IdPayment] INT NOT NULL  IDENTITY, 
    [IdReceipt] INT NOT NULL, 
    [PaymentValue] DECIMAL(18) NOT NULL, 
    [Notes] VARCHAR(4000) NOT NULL, 
    [InputSystemDate] DATETIME NOT NULL, 
    [UserId] INT NOT NULL, 
    CONSTRAINT [PK_Payment] PRIMARY KEY ([IdPayment]), 
    CONSTRAINT [FK_Payment_Receipt] FOREIGN KEY ([IdReceipt]) REFERENCES [Operation].[Receipt]([IdReceipt])
)

GO

CREATE INDEX [Payment_Id] ON [Operation].[Payment] ([IdPayment])

GO

CREATE INDEX [Payment_Receipt] ON [Operation].[Payment] ([IdReceipt])

GO

CREATE INDEX [Payment_UserId] ON [Operation].[Payment] ([UserId])

GO

CREATE INDEX [Payment_InputSystemDate] ON [Operation].[Payment] ([InputSystemDate])