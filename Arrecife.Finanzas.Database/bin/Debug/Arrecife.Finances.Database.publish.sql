/*
Script de implementación para Finances

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "Finances"
:setvar DefaultFilePrefix "Finances"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detectar el modo SQLCMD y deshabilitar la ejecución del script si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET PAGE_VERIFY NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave c042eb1b-833a-4edb-a871-abaf18935e53 se ha omitido; no se cambiará el nombre del elemento [Operation].[Receipt].[Total] (SqlSimpleColumn) a IdUser';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 717c1c32-289b-4e67-8657-cd9e6f407c67 se ha omitido; no se cambiará el nombre del elemento [Operation].[Payment].[IX_Payment_Column] (SqlIndex) a [Payment_CitizenshipCard]';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave f43eb986-6b4a-4079-91c8-3d449b75e1ed se ha omitido; no se cambiará el nombre del elemento [Operation].[Payment].[User] (SqlSimpleColumn) a UserId';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave ede82749-3ff6-4e06-af9d-f70394a95200, 6712df66-e1a3-4f10-b18b-25302f36651b se ha omitido; no se cambiará el nombre del elemento [Operation].[Payment].[ValureReceipt] (SqlSimpleColumn) a PaymentValue';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave c54489c8-223f-43a5-93cd-ce15fae6973e se ha omitido; no se cambiará el nombre del elemento [Operation].[Payment].[Id] (SqlSimpleColumn) a IdPayment';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 26dada45-6635-44fe-93f8-644ecb9df94b se ha omitido; no se cambiará el nombre del elemento [Operation].[Sales].[Id] (SqlSimpleColumn) a IdSales';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave a7909f6d-3bd6-4496-bbc3-cde13e132634 se ha omitido; no se cambiará el nombre del elemento [Operation].[Receipt].[IdSales] (SqlSimpleColumn) a IdReceipt';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave fd560053-8eee-4119-886d-412bab3adbc9 se ha omitido; no se cambiará el nombre del elemento [Operation].[Product].[Id] (SqlSimpleColumn) a IdProduct';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 4db8a4ce-de15-4319-aac2-1bc2f47f3986 se ha omitido; no se cambiará el nombre del elemento [Operation].[Product].[Quantity] (SqlSimpleColumn) a Stock';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave bed16e54-682d-473b-9861-9d720dd69ece se ha omitido; no se cambiará el nombre del elemento [Customer].[User].[Id] (SqlSimpleColumn) a IdUser';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 6e37bde0-ea6e-45c5-b198-a7a52aadc873, 7a429240-f91c-45da-ab89-6f274442feed se ha omitido; no se cambiará el nombre del elemento [Customer].[User].[Creation] (SqlSimpleColumn) a InputSystemDate';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 769fd86b-e3af-47d8-9bd0-d040069ccdaa, 154161dd-af00-469d-9885-c173d4502fb9 se ha omitido; no se cambiará el nombre del elemento [Customer].[User].[SecretQuestion] (SqlSimpleColumn) a IdSecretQuestion';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 92cc410e-2460-4af2-bf72-40a7a3763b53 se ha omitido; no se cambiará el nombre del elemento [Customer].[SecretQuestion].[Id] (SqlSimpleColumn) a IdSecretQuestion';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 6adc7a3e-e952-45f4-9300-1fc2015b1259 se ha omitido; no se cambiará el nombre del elemento [dbo].[Person].[Id] (SqlSimpleColumn) a IdPerson';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 9cf36e56-9f58-486c-835c-7b7bc1ce3803 se ha omitido; no se cambiará el nombre del elemento [Customer].[User].[CitizenshipCardNumber] (SqlSimpleColumn) a DocumentNumber';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 99a398a6-5deb-41f1-aa79-777c1c82afe2 se ha omitido; no se cambiará el nombre del elemento [Customer].[User].[ModificationDate] (SqlSimpleColumn) a LastModificationDate';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave b0f1a094-d07f-4722-a50a-0ef2a151b2da se ha omitido; no se cambiará el nombre del elemento [dbo].[ReceiptProduct].[Id] (SqlSimpleColumn) a IdReceiptProduct';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 3e9df0f8-669b-4c55-bc38-6b245ab41bb6 se ha omitido; no se cambiará el nombre del elemento [Operation].[Receipt].[IdClient] (SqlSimpleColumn) a IdPerson';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 1e6a4523-fa33-4219-a6aa-d6e96f5e6146, 353311c6-6140-4d61-9fd6-bc9bb5105f1f se ha omitido; no se cambiará el nombre del elemento [Operation].[Receipt].[Products] (SqlSimpleColumn) a Total';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave a80f95f3-458f-4c5d-a48f-288e78cfa9df se ha omitido; no se cambiará el nombre del elemento [Operation].[Product].[ModificationDate] (SqlSimpleColumn) a LastModificationDate';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave b46f7d97-9311-4c46-b35f-d8acf941ea63 se ha omitido; no se cambiará el nombre del elemento [Operation].[Product].[Product_] (SqlIndex) a [Product_MinimalAmountStock]';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave fab53053-d8e7-4303-b887-023b179659be se ha omitido; no se cambiará el nombre del elemento [Operation].[Payment].[Receipt] (SqlSimpleColumn) a IdReceipt';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 09fcca2b-c414-4ec0-8b6f-b6c41b0f98cd se ha omitido; no se cambiará el nombre del elemento [Operation].[FK_Payment_Payment] (SqlForeignKeyConstraint) a [FK_Payment_Receipt]';


GO
PRINT N'Creando [Customer]...';


GO
CREATE SCHEMA [Customer]
    AUTHORIZATION [dbo];


GO
PRINT N'Creando [Operation]...';


GO
CREATE SCHEMA [Operation]
    AUTHORIZATION [dbo];


GO
PRINT N'Creando [Customer].[User]...';


GO
CREATE TABLE [Customer].[User] (
    [IdUser]               INT          NOT NULL,
    [IdPerson]             INT          NOT NULL,
    [Nick]                 VARCHAR (15) NOT NULL,
    [Pass]                 VARCHAR (50) NOT NULL,
    [InputSystemDate]      DATETIME     NOT NULL,
    [LastModificationDate] DATETIME     NOT NULL,
    [IdSecretQuestion]     INT          NOT NULL,
    [AnswerQuestion]       VARCHAR (50) NOT NULL,
    [Permission]           INT          NOT NULL,
    [Licence]              DATETIME     NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([IdUser] ASC)
);


GO
PRINT N'Creando [Customer].[User].[User_IdUser]...';


GO
CREATE NONCLUSTERED INDEX [User_IdUser]
    ON [Customer].[User]([IdUser] ASC);


GO
PRINT N'Creando [Customer].[User].[User_Nick]...';


GO
CREATE NONCLUSTERED INDEX [User_Nick]
    ON [Customer].[User]([Nick] ASC);


GO
PRINT N'Creando [Customer].[User].[User_Person]...';


GO
CREATE NONCLUSTERED INDEX [User_Person]
    ON [Customer].[User]([IdPerson] ASC);


GO
PRINT N'Creando [Customer].[User].[User_Licence]...';


GO
CREATE NONCLUSTERED INDEX [User_Licence]
    ON [Customer].[User]([Licence] ASC);


GO
PRINT N'Creando [Customer].[SecretQuestion]...';


GO
CREATE TABLE [Customer].[SecretQuestion] (
    [IdSecretQuestion] INT           NOT NULL,
    [Question]         VARCHAR (150) NOT NULL,
    CONSTRAINT [PK_SecretQuestion] PRIMARY KEY CLUSTERED ([IdSecretQuestion] ASC)
);


GO
PRINT N'Creando [Customer].[SecretQuestion].[SecretQuestion_Id]...';


GO
CREATE NONCLUSTERED INDEX [SecretQuestion_Id]
    ON [Customer].[SecretQuestion]([IdSecretQuestion] ASC);


GO
PRINT N'Creando [Customer].[Person]...';


GO
CREATE TABLE [Customer].[Person] (
    [IdPerson]        INT          IDENTITY (1, 1) NOT NULL,
    [DocumentNumber]  INT          NOT NULL,
    [Names]           VARCHAR (50) NOT NULL,
    [LastNames]       VARCHAR (50) NOT NULL,
    [PhoneNumber]     INT          NOT NULL,
    [Email]           VARCHAR (50) NOT NULL,
    [Type]            BIT          NOT NULL,
    [InputSystemDate] DATETIME     NOT NULL,
    [IdUser]          INT          NOT NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([IdPerson] ASC)
);


GO
PRINT N'Creando [Customer].[Person].[Person_IdPerson]...';


GO
CREATE NONCLUSTERED INDEX [Person_IdPerson]
    ON [Customer].[Person]([IdPerson] ASC);


GO
PRINT N'Creando [Customer].[Person].[Person_IdUser]...';


GO
CREATE NONCLUSTERED INDEX [Person_IdUser]
    ON [Customer].[Person]([IdUser] ASC);


GO
PRINT N'Creando [Customer].[Person].[Person_DocumentNumber]...';


GO
CREATE NONCLUSTERED INDEX [Person_DocumentNumber]
    ON [Customer].[Person]([DocumentNumber] ASC);


GO
PRINT N'Creando [Customer].[Person].[Person_PhoneNumber]...';


GO
CREATE NONCLUSTERED INDEX [Person_PhoneNumber]
    ON [Customer].[Person]([PhoneNumber] ASC);


GO
PRINT N'Creando [Customer].[Person].[Person_Type]...';


GO
CREATE NONCLUSTERED INDEX [Person_Type]
    ON [Customer].[Person]([Type] ASC);


GO
PRINT N'Creando [Operation].[ReceiptProduct]...';


GO
CREATE TABLE [Operation].[ReceiptProduct] (
    [IdReceipt] INT NOT NULL,
    [IdProduct] INT NOT NULL,
    [Quantity]  INT NOT NULL
);


GO
PRINT N'Creando [Operation].[ReceiptProduct].[ReceiptProduct_IdProduct]...';


GO
CREATE NONCLUSTERED INDEX [ReceiptProduct_IdProduct]
    ON [Operation].[ReceiptProduct]([IdProduct] ASC);


GO
PRINT N'Creando [Operation].[ReceiptProduct].[ReceiptProduct_IdReceipt]...';


GO
CREATE NONCLUSTERED INDEX [ReceiptProduct_IdReceipt]
    ON [Operation].[ReceiptProduct]([IdReceipt] ASC);


GO
PRINT N'Creando [Operation].[ReceiptProduct].[ReceiptProduct_Quantity]...';


GO
CREATE NONCLUSTERED INDEX [ReceiptProduct_Quantity]
    ON [Operation].[ReceiptProduct]([Quantity] ASC);


GO
PRINT N'Creando [Operation].[Receipt]...';


GO
CREATE TABLE [Operation].[Receipt] (
    [IdReceipt]   INT          NOT NULL,
    [IdPerson]    INT          NOT NULL,
    [IdUser]      INT          NOT NULL,
    [Total]       DECIMAL (18) NOT NULL,
    [Discount]    DECIMAL (18) NOT NULL,
    [PaymentType] BIT          NOT NULL,
    [State]       BIT          NOT NULL,
    CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED ([IdReceipt] ASC)
);


GO
PRINT N'Creando [Operation].[Receipt].[Receipt_IdReceipt]...';


GO
CREATE NONCLUSTERED INDEX [Receipt_IdReceipt]
    ON [Operation].[Receipt]([IdReceipt] ASC);


GO
PRINT N'Creando [Operation].[Receipt].[Receipt_IdPerson]...';


GO
CREATE NONCLUSTERED INDEX [Receipt_IdPerson]
    ON [Operation].[Receipt]([IdPerson] ASC);


GO
PRINT N'Creando [Operation].[Receipt].[Receipt_IdUser]...';


GO
CREATE NONCLUSTERED INDEX [Receipt_IdUser]
    ON [Operation].[Receipt]([IdUser] ASC);


GO
PRINT N'Creando [Operation].[Receipt].[Receipt_State]...';


GO
CREATE NONCLUSTERED INDEX [Receipt_State]
    ON [Operation].[Receipt]([State] ASC);


GO
PRINT N'Creando [Operation].[Product]...';


GO
CREATE TABLE [Operation].[Product] (
    [IdProduct]            INT           NOT NULL,
    [Code]                 INT           NOT NULL,
    [UserId]               INT           NOT NULL,
    [Name]                 VARCHAR (50)  NOT NULL,
    [Stock]                INT           NOT NULL,
    [MinimalAmountStock]   INT           NOT NULL,
    [Price]                DECIMAL (18)  NOT NULL,
    [Description]          VARCHAR (150) NOT NULL,
    [InputSystemDate]      DATETIME      NOT NULL,
    [LastModificationDate] DATETIME      NOT NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([IdProduct] ASC)
);


GO
PRINT N'Creando [Operation].[Product].[Product_IdProduct]...';


GO
CREATE NONCLUSTERED INDEX [Product_IdProduct]
    ON [Operation].[Product]([IdProduct] ASC);


GO
PRINT N'Creando [Operation].[Product].[Product_Name]...';


GO
CREATE NONCLUSTERED INDEX [Product_Name]
    ON [Operation].[Product]([Name] ASC);


GO
PRINT N'Creando [Operation].[Product].[Product_Code]...';


GO
CREATE NONCLUSTERED INDEX [Product_Code]
    ON [Operation].[Product]([Code] ASC);


GO
PRINT N'Creando [Operation].[Product].[Product_Stock]...';


GO
CREATE NONCLUSTERED INDEX [Product_Stock]
    ON [Operation].[Product]([Stock] ASC);


GO
PRINT N'Creando [Operation].[Product].[Product_MinimalAmountStock]...';


GO
CREATE NONCLUSTERED INDEX [Product_MinimalAmountStock]
    ON [Operation].[Product]([MinimalAmountStock] ASC);


GO
PRINT N'Creando [Operation].[Product].[Product_Price]...';


GO
CREATE NONCLUSTERED INDEX [Product_Price]
    ON [Operation].[Product]([Price] ASC);


GO
PRINT N'Creando [Operation].[Product].[Product_UserId]...';


GO
CREATE NONCLUSTERED INDEX [Product_UserId]
    ON [Operation].[Product]([UserId] ASC);


GO
PRINT N'Creando [Operation].[Payment]...';


GO
CREATE TABLE [Operation].[Payment] (
    [IdPayment]       INT            IDENTITY (1, 1) NOT NULL,
    [IdReceipt]       INT            NOT NULL,
    [PaymentValue]    DECIMAL (18)   NOT NULL,
    [Notes]           VARCHAR (4000) NOT NULL,
    [InputSystemDate] DATETIME       NOT NULL,
    [UserId]          INT            NOT NULL,
    CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED ([IdPayment] ASC)
);


GO
PRINT N'Creando [Operation].[Payment].[Payment_Id]...';


GO
CREATE NONCLUSTERED INDEX [Payment_Id]
    ON [Operation].[Payment]([IdPayment] ASC);


GO
PRINT N'Creando [Operation].[Payment].[Payment_Receipt]...';


GO
CREATE NONCLUSTERED INDEX [Payment_Receipt]
    ON [Operation].[Payment]([IdReceipt] ASC);


GO
PRINT N'Creando [Operation].[Payment].[Payment_UserId]...';


GO
CREATE NONCLUSTERED INDEX [Payment_UserId]
    ON [Operation].[Payment]([UserId] ASC);


GO
PRINT N'Creando [Operation].[Payment].[Payment_InputSystemDate]...';


GO
CREATE NONCLUSTERED INDEX [Payment_InputSystemDate]
    ON [Operation].[Payment]([InputSystemDate] ASC);


GO
PRINT N'Creando [Customer].[FK_User_Person]...';


GO
ALTER TABLE [Customer].[User] WITH NOCHECK
    ADD CONSTRAINT [FK_User_Person] FOREIGN KEY ([IdPerson]) REFERENCES [Customer].[Person] ([IdPerson]);


GO
PRINT N'Creando [Customer].[FK_User_SecretQuestion]...';


GO
ALTER TABLE [Customer].[User] WITH NOCHECK
    ADD CONSTRAINT [FK_User_SecretQuestion] FOREIGN KEY ([IdSecretQuestion]) REFERENCES [Customer].[SecretQuestion] ([IdSecretQuestion]);


GO
PRINT N'Creando [Operation].[FK_ReceiptProduct_Product]...';


GO
ALTER TABLE [Operation].[ReceiptProduct] WITH NOCHECK
    ADD CONSTRAINT [FK_ReceiptProduct_Product] FOREIGN KEY ([IdProduct]) REFERENCES [Operation].[Product] ([IdProduct]);


GO
PRINT N'Creando [Operation].[FK_ReceiptProduct_Receipt]...';


GO
ALTER TABLE [Operation].[ReceiptProduct] WITH NOCHECK
    ADD CONSTRAINT [FK_ReceiptProduct_Receipt] FOREIGN KEY ([IdReceipt]) REFERENCES [Operation].[Receipt] ([IdReceipt]);


GO
PRINT N'Creando [Operation].[FK_Receipt_Person]...';


GO
ALTER TABLE [Operation].[Receipt] WITH NOCHECK
    ADD CONSTRAINT [FK_Receipt_Person] FOREIGN KEY ([IdPerson]) REFERENCES [Customer].[Person] ([IdPerson]);


GO
PRINT N'Creando [Operation].[FK_Receipt_User]...';


GO
ALTER TABLE [Operation].[Receipt] WITH NOCHECK
    ADD CONSTRAINT [FK_Receipt_User] FOREIGN KEY ([IdUser]) REFERENCES [Customer].[User] ([IdUser]);


GO
PRINT N'Creando [Operation].[FK_Product_User]...';


GO
ALTER TABLE [Operation].[Product] WITH NOCHECK
    ADD CONSTRAINT [FK_Product_User] FOREIGN KEY ([UserId]) REFERENCES [Customer].[User] ([IdUser]);


GO
PRINT N'Creando [Operation].[FK_Payment_Receipt]...';


GO
ALTER TABLE [Operation].[Payment] WITH NOCHECK
    ADD CONSTRAINT [FK_Payment_Receipt] FOREIGN KEY ([IdReceipt]) REFERENCES [Operation].[Receipt] ([IdReceipt]);


GO
-- Paso de refactorización para actualizar el servidor de destino con los registros de transacciones implementadas

IF OBJECT_ID(N'dbo.__RefactorLog') IS NULL
BEGIN
    CREATE TABLE [dbo].[__RefactorLog] (OperationKey UNIQUEIDENTIFIER NOT NULL PRIMARY KEY)
    EXEC sp_addextendedproperty N'microsoft_database_tools_support', N'refactoring log', N'schema', N'dbo', N'table', N'__RefactorLog'
END
GO
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '717c1c32-289b-4e67-8657-cd9e6f407c67')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('717c1c32-289b-4e67-8657-cd9e6f407c67')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'f43eb986-6b4a-4079-91c8-3d449b75e1ed')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('f43eb986-6b4a-4079-91c8-3d449b75e1ed')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ede82749-3ff6-4e06-af9d-f70394a95200')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ede82749-3ff6-4e06-af9d-f70394a95200')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'c54489c8-223f-43a5-93cd-ce15fae6973e')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('c54489c8-223f-43a5-93cd-ce15fae6973e')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '26dada45-6635-44fe-93f8-644ecb9df94b')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('26dada45-6635-44fe-93f8-644ecb9df94b')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'a7909f6d-3bd6-4496-bbc3-cde13e132634')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('a7909f6d-3bd6-4496-bbc3-cde13e132634')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'fd560053-8eee-4119-886d-412bab3adbc9')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('fd560053-8eee-4119-886d-412bab3adbc9')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '4db8a4ce-de15-4319-aac2-1bc2f47f3986')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('4db8a4ce-de15-4319-aac2-1bc2f47f3986')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'bed16e54-682d-473b-9861-9d720dd69ece')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('bed16e54-682d-473b-9861-9d720dd69ece')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '6e37bde0-ea6e-45c5-b198-a7a52aadc873')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('6e37bde0-ea6e-45c5-b198-a7a52aadc873')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '769fd86b-e3af-47d8-9bd0-d040069ccdaa')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('769fd86b-e3af-47d8-9bd0-d040069ccdaa')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '92cc410e-2460-4af2-bf72-40a7a3763b53')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('92cc410e-2460-4af2-bf72-40a7a3763b53')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '6adc7a3e-e952-45f4-9300-1fc2015b1259')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('6adc7a3e-e952-45f4-9300-1fc2015b1259')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '9cf36e56-9f58-486c-835c-7b7bc1ce3803')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('9cf36e56-9f58-486c-835c-7b7bc1ce3803')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '7a429240-f91c-45da-ab89-6f274442feed')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('7a429240-f91c-45da-ab89-6f274442feed')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '99a398a6-5deb-41f1-aa79-777c1c82afe2')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('99a398a6-5deb-41f1-aa79-777c1c82afe2')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'b0f1a094-d07f-4722-a50a-0ef2a151b2da')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('b0f1a094-d07f-4722-a50a-0ef2a151b2da')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '3e9df0f8-669b-4c55-bc38-6b245ab41bb6')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('3e9df0f8-669b-4c55-bc38-6b245ab41bb6')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'c042eb1b-833a-4edb-a871-abaf18935e53')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('c042eb1b-833a-4edb-a871-abaf18935e53')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '1e6a4523-fa33-4219-a6aa-d6e96f5e6146')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('1e6a4523-fa33-4219-a6aa-d6e96f5e6146')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '353311c6-6140-4d61-9fd6-bc9bb5105f1f')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('353311c6-6140-4d61-9fd6-bc9bb5105f1f')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'a80f95f3-458f-4c5d-a48f-288e78cfa9df')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('a80f95f3-458f-4c5d-a48f-288e78cfa9df')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'b46f7d97-9311-4c46-b35f-d8acf941ea63')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('b46f7d97-9311-4c46-b35f-d8acf941ea63')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'fab53053-d8e7-4303-b887-023b179659be')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('fab53053-d8e7-4303-b887-023b179659be')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '6712df66-e1a3-4f10-b18b-25302f36651b')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('6712df66-e1a3-4f10-b18b-25302f36651b')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '154161dd-af00-469d-9885-c173d4502fb9')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('154161dd-af00-469d-9885-c173d4502fb9')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '09fcca2b-c414-4ec0-8b6f-b6c41b0f98cd')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('09fcca2b-c414-4ec0-8b6f-b6c41b0f98cd')

GO

GO
PRINT N'Comprobando los datos existentes con las restricciones recién creadas';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [Customer].[User] WITH CHECK CHECK CONSTRAINT [FK_User_Person];

ALTER TABLE [Customer].[User] WITH CHECK CHECK CONSTRAINT [FK_User_SecretQuestion];

ALTER TABLE [Operation].[ReceiptProduct] WITH CHECK CHECK CONSTRAINT [FK_ReceiptProduct_Product];

ALTER TABLE [Operation].[ReceiptProduct] WITH CHECK CHECK CONSTRAINT [FK_ReceiptProduct_Receipt];

ALTER TABLE [Operation].[Receipt] WITH CHECK CHECK CONSTRAINT [FK_Receipt_Person];

ALTER TABLE [Operation].[Receipt] WITH CHECK CHECK CONSTRAINT [FK_Receipt_User];

ALTER TABLE [Operation].[Product] WITH CHECK CHECK CONSTRAINT [FK_Product_User];

ALTER TABLE [Operation].[Payment] WITH CHECK CHECK CONSTRAINT [FK_Payment_Receipt];


GO
PRINT N'Actualización completada.';


GO
