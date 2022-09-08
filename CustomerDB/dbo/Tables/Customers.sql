CREATE TABLE [dbo].[Customers] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (700) NOT NULL,
    [CreatedBy] NVARCHAR (250) NULL,
    [CreatedOn] DATETIME       CONSTRAINT [DF_Customer_CreatedOn] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([Id] ASC)
);

