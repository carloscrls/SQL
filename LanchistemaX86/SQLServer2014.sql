USE [Lanchistema]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NULL,
	[Ingrediente] [char](1) NULL,
	[Status] [char](1) NULL,
	[Data_inc] [datetime] NULL,
	[Data_alt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cupom]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cupom](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Num] [int] NULL,
	[Dt_inc] [datetime] NULL,
	[Usado] [char](1) NULL,
	[flag] [char](1) NULL,
 CONSTRAINT [PK__Cupom__3214EC27928A82BC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entrada]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entrada](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dt_entrada] [datetime] NULL,
	[Custo_total] [real] NULL,
	[Qtde_itens] [int] NULL,
	[ID_usuario] [int] NULL,
	[Data_inc] [datetime] NULL,
	[Data_alt] [datetime] NULL,
	[STATUS] [char](1) NULL,
	[Sit] [varchar](15) NULL,
 CONSTRAINT [PK__Entrada__3214EC27436A5C65] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EntradaItens]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EntradaItens](
	[ID_entrada] [int] NOT NULL,
	[Pr_custo] [real] NULL,
	[Qtde] [real] NULL,
	[Unidade] [char](2) NULL,
	[Pr_total] [decimal](18, 2) NULL,
	[id_prod] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estoque]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estoque](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Qtde_real] [real] NOT NULL,
	[Validade] [datetime] NOT NULL,
	[Pr_custo] [real] NULL,
	[Pr_venda] [real] NULL,
	[Data_inc] [datetime] NULL,
	[Data_Alt] [datetime] NULL,
	[Status] [char](1) NULL,
	[Unidade] [char](2) NULL,
	[ID_categoria] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CPF] [varchar](14) NOT NULL,
	[RG] [varchar](13) NOT NULL,
	[Endereco] [varchar](80) NULL,
	[Bairro] [varchar](50) NULL,
	[Num] [int] NULL,
	[CEP] [varchar](9) NULL,
	[Complemento] [varchar](10) NULL,
	[Dt_admissao] [datetime] NULL,
	[Dt_demissao] [datetime] NULL,
	[Status] [char](1) NULL,
	[Telefone] [varchar](13) NULL,
	[Celular] [varchar](14) NULL,
	[Data_inc] [datetime] NULL,
	[Data_alt] [datetime] NULL,
	[Situacao] [varchar](15) NULL,
	[Telefone2] [varchar](14) NULL,
	[Contato] [varchar](40) NULL,
 CONSTRAINT [PK__Funciona__3214EC275B75FD80] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pedido](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Data_inc] [datetime] NULL,
	[Data_alt] [datetime] NULL,
	[Status] [char](1) NULL,
	[Hora] [time](7) NULL,
	[Sit] [varchar](15) NULL,
	[Valor_total] [decimal](4, 2) NULL,
	[Cupom] [int] NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PedItem]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedItem](
	[ID_pedido] [int] NULL,
	[ID_produto] [int] NULL,
	[Qtde] [int] NULL,
	[Pr_unit] [decimal](4, 2) NULL,
	[Pr_total] [decimal](4, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[Data_inc] [datetime] NULL,
	[Data_alt] [datetime] NULL,
	[Status] [char](1) NULL,
	[Ocultar] [char](1) NULL,
	[Usuario] [char](1) NULL,
	[Usuario_I] [char](1) NULL,
	[Usuario_A] [char](1) NULL,
	[Usuario_E] [char](1) NULL,
	[Categoria] [char](1) NULL,
	[Categoria_I] [char](1) NULL,
	[Categoria_A] [char](1) NULL,
	[Categoria_E] [char](1) NULL,
	[Entrada] [char](1) NULL,
	[Entrada_I] [char](1) NULL,
	[Entrada_A] [char](1) NULL,
	[Entrada_E] [char](1) NULL,
	[Estoque] [char](1) NULL,
	[Estoque_I] [char](1) NULL,
	[Estoque_A] [char](1) NULL,
	[Estoque_E] [char](1) NULL,
	[Funcionario] [char](1) NULL,
	[Funcionario_I] [char](1) NULL,
	[Funcionario_A] [char](1) NULL,
	[Funcionario_E] [char](1) NULL,
	[Pedido] [char](1) NULL,
	[Pedido_I] [char](1) NULL,
	[Pedido_A] [char](1) NULL,
	[Pedido_E] [char](1) NULL,
	[Produto] [char](1) NULL,
	[Produto_I] [char](1) NULL,
	[Produto_A] [char](1) NULL,
	[Produto_E] [char](1) NULL,
	[Perfil] [char](1) NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Descricao] [varchar](max) NULL,
	[Pr_venda] [decimal](4, 2) NULL,
	[Pr_custo] [decimal](4, 2) NULL,
	[Data_inc] [datetime] NULL,
	[Data_alt] [datetime] NULL,
	[Qtde_real] [decimal](4, 2) NULL,
	[Unidade] [char](2) NULL,
	[Status] [char](1) NULL,
	[Id_categoria] [int] NULL,
	[Comp] [char](1) NULL,
	[Qtde_minima] [int] NULL,
 CONSTRAINT [PK__Produto__3214EC272AD5BD9C] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecItem]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecItem](
	[ID_Produto] [int] NULL,
	[ID_Estoque] [int] NULL,
	[Unidade] [char](2) NULL,
	[Qtde] [real] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 09/06/2016 09:44:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](30) NOT NULL,
	[Senha] [varchar](50) NOT NULL,
	[Status] [char](1) NULL,
	[Data_alt] [datetime] NULL,
	[Data_inc] [datetime] NULL,
	[ID_Perfil] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

GO
INSERT [dbo].[Categoria] ([ID], [Nome], [Ingrediente], [Status], [Data_inc], [Data_alt]) VALUES (3, N'Bebidas', N'N', N'S', CAST(N'2016-04-10 00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Categoria] ([ID], [Nome], [Ingrediente], [Status], [Data_inc], [Data_alt]) VALUES (4, N'Salgados', N'N', N'S', CAST(N'2016-04-10 00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Categoria] ([ID], [Nome], [Ingrediente], [Status], [Data_inc], [Data_alt]) VALUES (5, N'Lanches', N'N', N'S', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Cupom] ON 

GO
INSERT [dbo].[Cupom] ([ID], [Num], [Dt_inc], [Usado], [flag]) VALUES (1, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Cupom] ([ID], [Num], [Dt_inc], [Usado], [flag]) VALUES (2, 581856, CAST(N'2016-06-06 15:16:51.903' AS DateTime), N'N', NULL)
GO
INSERT [dbo].[Cupom] ([ID], [Num], [Dt_inc], [Usado], [flag]) VALUES (3, 906329, CAST(N'2016-06-07 10:00:21.167' AS DateTime), N'N', NULL)
GO
INSERT [dbo].[Cupom] ([ID], [Num], [Dt_inc], [Usado], [flag]) VALUES (4, 224591, CAST(N'2016-06-07 10:00:30.967' AS DateTime), N'N', NULL)
GO
INSERT [dbo].[Cupom] ([ID], [Num], [Dt_inc], [Usado], [flag]) VALUES (5, 808770, CAST(N'2016-06-07 14:15:36.947' AS DateTime), N'N', NULL)
GO
INSERT [dbo].[Cupom] ([ID], [Num], [Dt_inc], [Usado], [flag]) VALUES (6, 534664, CAST(N'2016-06-08 09:22:14.993' AS DateTime), N'N', NULL)
GO
SET IDENTITY_INSERT [dbo].[Cupom] OFF
GO
SET IDENTITY_INSERT [dbo].[Entrada] ON 

GO
INSERT [dbo].[Entrada] ([ID], [Dt_entrada], [Custo_total], [Qtde_itens], [ID_usuario], [Data_inc], [Data_alt], [STATUS], [Sit]) VALUES (1, CAST(N'2016-05-16 15:10:42.060' AS DateTime), 20, 5, NULL, CAST(N'2016-05-16 00:00:00.000' AS DateTime), CAST(N'2016-06-08 00:00:00.000' AS DateTime), N'S', N'D')
GO
SET IDENTITY_INSERT [dbo].[Entrada] OFF
GO
INSERT [dbo].[EntradaItens] ([ID_entrada], [Pr_custo], [Qtde], [Unidade], [Pr_total], [id_prod]) VALUES (1, 0, 1, N'  ', CAST(0.00 AS Decimal(18, 2)), 6)
GO
INSERT [dbo].[EntradaItens] ([ID_entrada], [Pr_custo], [Qtde], [Unidade], [Pr_total], [id_prod]) VALUES (1, 1.75, 2, N'PC', CAST(3.50 AS Decimal(18, 2)), 4)
GO
INSERT [dbo].[EntradaItens] ([ID_entrada], [Pr_custo], [Qtde], [Unidade], [Pr_total], [id_prod]) VALUES (1, 7.5, 1, N'  ', CAST(7.50 AS Decimal(18, 2)), 10)
GO
INSERT [dbo].[EntradaItens] ([ID_entrada], [Pr_custo], [Qtde], [Unidade], [Pr_total], [id_prod]) VALUES (1, 3.5, 2, N'  ', CAST(7.00 AS Decimal(18, 2)), 16)
GO
INSERT [dbo].[EntradaItens] ([ID_entrada], [Pr_custo], [Qtde], [Unidade], [Pr_total], [id_prod]) VALUES (1, 0, 2, N'  ', CAST(2.00 AS Decimal(18, 2)), 14)
GO
SET IDENTITY_INSERT [dbo].[Pedido] ON 

GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (3, CAST(N'2016-05-16 00:00:00.000' AS DateTime), CAST(N'2016-06-03 00:00:00.000' AS DateTime), N'S', CAST(N'12:07:48.8470000' AS Time), N'Cozinha', CAST(14.50 AS Decimal(4, 2)), NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (4, CAST(N'2016-05-16 00:00:00.000' AS DateTime), CAST(N'2016-06-02 00:00:00.000' AS DateTime), N'S', CAST(N'15:41:52.2250000' AS Time), N'Cozinha', CAST(0.00 AS Decimal(4, 2)), NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (5, CAST(N'2016-06-06 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'15:15:29.4640000' AS Time), N'Cozinha', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (6, CAST(N'2016-06-06 00:00:00.000' AS DateTime), CAST(N'2016-06-07 00:00:00.000' AS DateTime), N'S', CAST(N'15:16:58.0110000' AS Time), N'Digitacao', CAST(7.00 AS Decimal(4, 2)), 581856)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (7, CAST(N'2016-06-06 00:00:00.000' AS DateTime), CAST(N'2016-06-07 00:00:00.000' AS DateTime), N'S', CAST(N'15:38:02.1510000' AS Time), N'Digitacao', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (8, CAST(N'2016-06-06 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'15:38:40.2070000' AS Time), N'Digitacao', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (9, CAST(N'2016-06-06 00:00:00.000' AS DateTime), CAST(N'2016-06-06 00:00:00.000' AS DateTime), N'S', CAST(N'15:40:03.3440000' AS Time), N'Digitacao', CAST(3.50 AS Decimal(4, 2)), NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (10, CAST(N'2016-06-06 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'15:42:00.0650000' AS Time), N'Digitacao', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (11, CAST(N'2016-06-06 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'15:43:07.9780000' AS Time), N'Digitacao', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (12, CAST(N'2016-06-06 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'15:45:41.0740000' AS Time), N'Digitacao', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (13, CAST(N'2016-06-06 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'15:45:49.8570000' AS Time), N'Digitacao', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (14, CAST(N'2016-06-07 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'09:26:37.1670000' AS Time), N'Digitacao', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (15, CAST(N'2016-06-07 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'09:27:17.7190000' AS Time), N'Digitacao', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (16, CAST(N'2016-06-07 00:00:00.000' AS DateTime), CAST(N'2016-06-07 00:00:00.000' AS DateTime), N'S', CAST(N'09:29:17.2550000' AS Time), N'Digitacao', CAST(3.50 AS Decimal(4, 2)), NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (17, CAST(N'2016-06-07 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'10:02:37.5780000' AS Time), N'Digitacao', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (18, CAST(N'2016-06-07 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'12:01:02.3610000' AS Time), N'Digitacao', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (19, CAST(N'2016-06-07 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'14:10:10.7090000' AS Time), N'Digitacao', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (20, CAST(N'2016-06-07 00:00:00.000' AS DateTime), NULL, N'S', CAST(N'14:11:13.7810000' AS Time), N'Digitacao', CAST(3.50 AS Decimal(4, 2)), NULL)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (21, CAST(N'2016-06-07 00:00:00.000' AS DateTime), CAST(N'2016-06-07 00:00:00.000' AS DateTime), N'S', CAST(N'14:15:11.3240000' AS Time), N'Finalizado', CAST(12.00 AS Decimal(4, 2)), 808770)
GO
INSERT [dbo].[Pedido] ([ID], [Data_inc], [Data_alt], [Status], [Hora], [Sit], [Valor_total], [Cupom]) VALUES (22, CAST(N'2016-06-08 00:00:00.000' AS DateTime), CAST(N'2016-06-08 00:00:00.000' AS DateTime), N'S', CAST(N'09:20:53.6860000' AS Time), N'Finalizado', CAST(6.00 AS Decimal(4, 2)), 534664)
GO
SET IDENTITY_INSERT [dbo].[Pedido] OFF
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (3, 4, 1, CAST(3.50 AS Decimal(4, 2)), CAST(3.50 AS Decimal(4, 2)))
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (3, 4, 2, CAST(3.50 AS Decimal(4, 2)), CAST(11.00 AS Decimal(4, 2)))
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (6, 6, 1, NULL, CAST(0.00 AS Decimal(4, 2)))
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (4, 12, 2, CAST(0.00 AS Decimal(4, 2)), CAST(0.00 AS Decimal(4, 2)))
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (4, 5, 1, NULL, NULL)
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (3, 6, NULL, NULL, NULL)
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (6, 4, 2, CAST(3.50 AS Decimal(4, 2)), CAST(7.00 AS Decimal(4, 2)))
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (9, 4, 1, CAST(3.50 AS Decimal(4, 2)), CAST(3.50 AS Decimal(4, 2)))
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (16, 4, 1, CAST(3.50 AS Decimal(4, 2)), CAST(3.50 AS Decimal(4, 2)))
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (16, 4, NULL, CAST(3.50 AS Decimal(4, 2)), NULL)
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (20, 4, 1, CAST(3.50 AS Decimal(4, 2)), CAST(3.50 AS Decimal(4, 2)))
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (21, 13, 2, CAST(6.00 AS Decimal(4, 2)), CAST(12.00 AS Decimal(4, 2)))
GO
INSERT [dbo].[PedItem] ([ID_pedido], [ID_produto], [Qtde], [Pr_unit], [Pr_total]) VALUES (22, 13, 1, CAST(6.00 AS Decimal(4, 2)), CAST(6.00 AS Decimal(4, 2)))
GO
SET IDENTITY_INSERT [dbo].[Perfil] ON 

GO
INSERT [dbo].[Perfil] ([ID], [Descricao], [Data_inc], [Data_alt], [Status], [Ocultar], [Usuario], [Usuario_I], [Usuario_A], [Usuario_E], [Categoria], [Categoria_I], [Categoria_A], [Categoria_E], [Entrada], [Entrada_I], [Entrada_A], [Entrada_E], [Estoque], [Estoque_I], [Estoque_A], [Estoque_E], [Funcionario], [Funcionario_I], [Funcionario_A], [Funcionario_E], [Pedido], [Pedido_I], [Pedido_A], [Pedido_E], [Produto], [Produto_I], [Produto_A], [Produto_E], [Perfil]) VALUES (1, N'Root', CAST(N'2016-05-09 00:00:00.000' AS DateTime), NULL, N'S', N'N', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S', N'S')
GO
INSERT [dbo].[Perfil] ([ID], [Descricao], [Data_inc], [Data_alt], [Status], [Ocultar], [Usuario], [Usuario_I], [Usuario_A], [Usuario_E], [Categoria], [Categoria_I], [Categoria_A], [Categoria_E], [Entrada], [Entrada_I], [Entrada_A], [Entrada_E], [Estoque], [Estoque_I], [Estoque_A], [Estoque_E], [Funcionario], [Funcionario_I], [Funcionario_A], [Funcionario_E], [Pedido], [Pedido_I], [Pedido_A], [Pedido_E], [Produto], [Produto_I], [Produto_A], [Produto_E], [Perfil]) VALUES (2, N'Balcão', CAST(N'2016-06-08 00:00:00.000' AS DateTime), NULL, N'S', N'S', N'N', N'N', N'N', N'N', N'S', N'S', N'S', N'N', N'N', N'N', N'N', N'N', N'S', N'S', N'S', N'N', N'N', N'N', N'N', N'N', N'S', N'S', N'N', N'N', N'S', N'S', N'S', N'N', N'N')
GO
INSERT [dbo].[Perfil] ([ID], [Descricao], [Data_inc], [Data_alt], [Status], [Ocultar], [Usuario], [Usuario_I], [Usuario_A], [Usuario_E], [Categoria], [Categoria_I], [Categoria_A], [Categoria_E], [Entrada], [Entrada_I], [Entrada_A], [Entrada_E], [Estoque], [Estoque_I], [Estoque_A], [Estoque_E], [Funcionario], [Funcionario_I], [Funcionario_A], [Funcionario_E], [Pedido], [Pedido_I], [Pedido_A], [Pedido_E], [Produto], [Produto_I], [Produto_A], [Produto_E], [Perfil]) VALUES (3, N'Nop', NULL, NULL, N'S', N'S', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N', N'N')
GO
SET IDENTITY_INSERT [dbo].[Perfil] OFF
GO
SET IDENTITY_INSERT [dbo].[Produto] ON 

GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (4, N'Coca Lata 300ml', N'Teste', CAST(3.50 AS Decimal(4, 2)), CAST(1.50 AS Decimal(4, 2)), CAST(N'2016-05-16 00:00:00.000' AS DateTime), NULL, CAST(12.00 AS Decimal(4, 2)), N'PC', N'S', 3, N'N', 25)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (5, N'Guaraná Antártica Pet 2L', N'Teste2', CAST(5.50 AS Decimal(4, 2)), CAST(3.25 AS Decimal(4, 2)), CAST(N'2016-05-16 00:00:00.000' AS DateTime), NULL, CAST(0.00 AS Decimal(4, 2)), N'PC', N'S', 3, N'N', 10)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (6, N'X-bacon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S', 5, NULL, NULL)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (7, N'X-Burguer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S', 5, N'S', NULL)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (8, N'X-Egg', NULL, NULL, NULL, NULL, CAST(N'2016-06-08 00:00:00.000' AS DateTime), NULL, NULL, N'S', 5, N'S', NULL)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (9, N'Hot-Dog Bacon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S', 5, N'S', NULL)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (10, N'Bauru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S', 5, N'S', NULL)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (11, N'X-Salada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S', 5, N'S', NULL)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (12, N'Fanta Uva Lata', NULL, NULL, CAST(1.00 AS Decimal(4, 2)), NULL, CAST(N'2016-06-07 00:00:00.000' AS DateTime), CAST(4.00 AS Decimal(4, 2)), NULL, N'S', 3, N'N', 12)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (13, N'Coca-Cola 600ml PET', NULL, CAST(6.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(4, 2)), NULL, NULL, CAST(0.00 AS Decimal(4, 2)), NULL, N'S', 3, N'N', 5)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (14, N'Esfiha Carne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S', 4, N'S', NULL)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (15, N'Coxiha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S', 4, N'S', NULL)
GO
INSERT [dbo].[Produto] ([ID], [Nome], [Descricao], [Pr_venda], [Pr_custo], [Data_inc], [Data_alt], [Qtde_real], [Unidade], [Status], [Id_categoria], [Comp], [Qtde_minima]) VALUES (16, N'Risolis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S', 4, N'S', NULL)
GO
SET IDENTITY_INSERT [dbo].[Produto] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

GO
INSERT [dbo].[Usuario] ([ID], [Nome], [Senha], [Status], [Data_alt], [Data_inc], [ID_Perfil]) VALUES (1, N'root', N'toor', N'S', CAST(N'2016-05-09 00:00:00.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[Usuario] ([ID], [Nome], [Senha], [Status], [Data_alt], [Data_inc], [ID_Perfil]) VALUES (2, N'Karina', N'123', N'S', NULL, CAST(N'2016-06-08 00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Usuario] ([ID], [Nome], [Senha], [Status], [Data_alt], [Data_inc], [ID_Perfil]) VALUES (3, N'TESTE', N'123', N'S', NULL, NULL, 3)
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Funciona__321537C81F4C5F62]    Script Date: 09/06/2016 09:44:03 ******/
ALTER TABLE [dbo].[Funcionario] ADD  CONSTRAINT [UQ__Funciona__321537C81F4C5F62] UNIQUE NONCLUSTERED 
(
	[RG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Funciona__321537C8A42FC40A]    Script Date: 09/06/2016 09:44:03 ******/
ALTER TABLE [dbo].[Funcionario] ADD  CONSTRAINT [UQ__Funciona__321537C8A42FC40A] UNIQUE NONCLUSTERED 
(
	[RG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Funciona__C1F89731AE03965B]    Script Date: 09/06/2016 09:44:03 ******/
ALTER TABLE [dbo].[Funcionario] ADD  CONSTRAINT [UQ__Funciona__C1F89731AE03965B] UNIQUE NONCLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Funciona__C1F89731EF8EE479]    Script Date: 09/06/2016 09:44:03 ******/
ALTER TABLE [dbo].[Funcionario] ADD  CONSTRAINT [UQ__Funciona__C1F89731EF8EE479] UNIQUE NONCLUSTERED 
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EntradaItens]  WITH CHECK ADD  CONSTRAINT [FK_EntradaItens_Entrada] FOREIGN KEY([ID_entrada])
REFERENCES [dbo].[Entrada] ([ID])
GO
ALTER TABLE [dbo].[EntradaItens] CHECK CONSTRAINT [FK_EntradaItens_Entrada]
GO
ALTER TABLE [dbo].[EntradaItens]  WITH CHECK ADD  CONSTRAINT [FK_EntradaItens_Produto1] FOREIGN KEY([id_prod])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[EntradaItens] CHECK CONSTRAINT [FK_EntradaItens_Produto1]
GO
ALTER TABLE [dbo].[PedItem]  WITH CHECK ADD  CONSTRAINT [FK_PedItem_Pedido1] FOREIGN KEY([ID_pedido])
REFERENCES [dbo].[Pedido] ([ID])
GO
ALTER TABLE [dbo].[PedItem] CHECK CONSTRAINT [FK_PedItem_Pedido1]
GO
ALTER TABLE [dbo].[PedItem]  WITH CHECK ADD  CONSTRAINT [FK_PedItem_Produto] FOREIGN KEY([ID_produto])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[PedItem] CHECK CONSTRAINT [FK_PedItem_Produto]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FK_Produto_Categoria] FOREIGN KEY([Id_categoria])
REFERENCES [dbo].[Categoria] ([ID])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FK_Produto_Categoria]
GO
ALTER TABLE [dbo].[RecItem]  WITH CHECK ADD  CONSTRAINT [FK_RecItem_Estoque1] FOREIGN KEY([ID_Estoque])
REFERENCES [dbo].[Estoque] ([ID])
GO
ALTER TABLE [dbo].[RecItem] CHECK CONSTRAINT [FK_RecItem_Estoque1]
GO
ALTER TABLE [dbo].[RecItem]  WITH CHECK ADD  CONSTRAINT [FK_RecItem_Produto1] FOREIGN KEY([ID_Produto])
REFERENCES [dbo].[Produto] ([ID])
GO
ALTER TABLE [dbo].[RecItem] CHECK CONSTRAINT [FK_RecItem_Produto1]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Perfil] FOREIGN KEY([ID_Perfil])
REFERENCES [dbo].[Perfil] ([ID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Perfil]
GO
