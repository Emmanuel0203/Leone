CREATE TABLE [dbo].[Departamento] (
    [IdDepartamento] UNIQUEIDENTIFIER CONSTRAINT [DF_Departamento_IdDepartamento] DEFAULT (newid()) NOT NULL,
    [fkIdPais]       UNIQUEIDENTIFIER NULL,
    [Nombre]         NVARCHAR (MAX)   NULL,
    [Activo]         BIT              CONSTRAINT [DF_Departamento_Activo] DEFAULT ((1)) NULL,
    [Actualiza]      DATETIME         CONSTRAINT [DF_Departamento_Actualiza] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED ([IdDepartamento] ASC),
    CONSTRAINT [fkIdPais] FOREIGN KEY ([fkIdPais]) REFERENCES [dbo].[Pais] ([IdPais])
);

