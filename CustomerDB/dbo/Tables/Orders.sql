CREATE TABLE [dbo].[Orders] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [CustomerId] INT            NULL,
    [CreatedBy]  NVARCHAR (250) NULL,
    [CreatedOn]  DATETIME       CONSTRAINT [DF_Orders_CreatedOn] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OrderDetails_Customers] FOREIGN KEY ([CustomerId]) REFERENCES [Customers]([Id])
);

