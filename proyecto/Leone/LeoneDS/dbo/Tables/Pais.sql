CREATE TABLE [dbo].[Pais] (
    [IdPais]    UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [Nombre]    NVARCHAR (MAX)   NULL,
    [Activo]    BIT              CONSTRAINT [DF_Pais_Activo] DEFAULT ((1)) NULL,
    [Actualiza] DATETIME         DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED ([IdPais] ASC)
);


