USE [LBISGE_DATA]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Areas](
	[ID_area] [varchar](10) NOT NULL,
	[NombreDeArea] [varchar](500) NOT NULL,
	[TipoArea] [varchar](800) NOT NULL,
	[Largo] [varchar](10) NULL,
	[Ancho] [varchar](10) NULL,
	[CalcArea] [varchar](10) NULL,
	[CantidadPersonas] [varchar](10) NULL,
	[Nivel] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Edificios]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Edificios](
	[ID_edificio] [varchar](10) NOT NULL,
	[NombreDeEdificio] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_edificio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InformacionArea]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InformacionArea](
	[Item] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](1000) NOT NULL,
	[CantidadEquipos] [varchar](10) NOT NULL,
	[Capacidad] [varchar](15) NOT NULL,
	[HorasDeUso] [varchar](5) NOT NULL,
	[Dias] [varchar](10) NOT NULL,
	[Consumo] [varchar](15) NOT NULL,
	[Imagen] [image] NULL,
	[ID_edificio] [varchar](10) NOT NULL,
	[ID_area] [varchar](10) NOT NULL,
	[ID_subsistema] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subsistema]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subsistema](
	[ID_subsistema] [varchar](10) NOT NULL,
	[NombreDeSubsistema] [varchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_subsistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'AdminiAcad', N'CDIUN1 Administracion Academica ', N'Office (General)', N'9.1', N'9.59', N'939.355696', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'AsistEstu1', N'CDIUN1 Asistencia Estudiantil  1', N'Office (General)', N'3.72', N'3.54', N'141.747783', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'AsistEstu2', N'CDIUN1 Asistencia Estudiantil  2', N'Office (General)', N'3.54', N'2.77', N'105.548752', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Aud ', N'E4N1 Salon audiovisual ', N'Conference Room', N'9.6', N'6.3', N'651.001300', N'14', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'AudEmba', N'E4N2 Auditorium Embajada Americana', N'Auditorium', N'8.8', N'9.5', N'899.862909', N'15', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Autom', N'E3N1 Automatizacion', N'Computer Room (Instructional/PC Lab)', N'9.74', N'6.3', N'660.495069', N'11', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'bañdaproN1', N'OWCCN1 Baño Profesores damas', N'Restrooms', N'2', N'1.67', N'35.9514607', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BañdiscaN1', N'OWCCN1 Baño discapacitado', N'Restrooms', N'2.3', N'2', N'49.5139878', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BañoCab_N1', N'OWCCN1 Baño caballeros', N'Restrooms', N'4', N'3.77', N'162.319768', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BañoDam_N1', N'OWCCN1 Baño Dama', N'Restrooms', N'4', N'3.8', N'163.611438', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BañosHomDa', N'CDIUN1 Baños Damas y Hombres del  Departamento de Comunicacion Institucional ', N'Restrooms', N'2.1', N'1.44', N'32.5500650', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BañProfeN1', N'OWCCN1 Baño Profesor', N'Restrooms', N'2', N'1.67', N'35.9514607', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblBañDam', N'EBiblN1Baño de Damas', N'Restrooms', N'3.56', N'2.22', N'85.0693366', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblBañHom', N'EBiblN1Baño de Hombres', N'Restrooms', N'3.56', N'2.3', N'88.1348983', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblBodEsc', N'EBiblN1Bodega de bajo de escalera', N'Storage (Unconditioned)', N'4.68', N'2.2', N'110.825221', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblCubNu1', N'EBiblN2 Cubículo N° 1', N'Vocational Areas', N'4.72', N'3.3', N'167.658668', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblCubNu2', N'EBiblN2 Cubículo N° 2', N'Vocational Areas', N'3.78', N'3.3', N'134.269018', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblCubNu3', N'EBiblN2 Cubículo N° 3', N'Vocational Areas', N'4.65', N'3.3', N'165.172205', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblCubNu4', N'EBiblN2 Cubículo N° 4', N'Vocational Areas', N'4.42', N'4.26', N'202.675821', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblCubNu5', N'EBiblN2 Cubículo N° 5', N'Vocational Areas', N'4.65', N'3.66', N'183.190991', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblCubNu6', N'EBiblN2 Cubículo N° 6', N'Vocational Areas', N'5.15', N'4.65', N'257.768744', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblEscN2', N'EBiblN2 Escalera Segundo Nivel', N'Corridor', N'8.39', N'4.67', N'421.744002', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblN1ZoEx', N'EBiblN1 zona exterior', N'Vocational Areas', N'26.68', N'23.1', N'6633.88409', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblN2ZoEx', N'EBiblN2 Zona exterior', N'Vocational Areas', N'26.68', N'23.1', N'6633.88409', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblSaReun', N'EBiblN2 Sala de Reuniones', N'Conference Room', N'4.84', N'4.66', N'242.773540', N'5', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BiblSEstEx', N'EBiblN2 Sala de Estudio y Exposiciones', N'Vocational Areas', N'23.37', N'23.1', N'5810.86473', N'81', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BibPasBaEs', N'EBiblN1 Pasillo de baño, escalera y bodega', N'Corridor', N'7.34', N'5.71', N'451.130554', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BoArtCult', N'CDIUN3 Bodega de Arte Y Cultura ', N'Storage (Unconditioned)', N'4.8', N'4.8', N'248.000495', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Bod', N'E4N1 Bodega', N'Storage (Unconditioned)', N'5', N'5', N'269.09776', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BodeAdmAca', N'CDIUN1 Bodega de Administracion Academica ', N'Storage (Unconditioned)', N'9.6', N'4.37', N'451.567569', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BodeDepCom', N'CDIUN1Bodega Departamento de Comunicacion Institucional ', N'Storage (Unconditioned)', N'4.70', N'2', N'101.180757', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BodegaFisi', N'OWCCN3 Bodega de Fisica 3C', N'Storage (Unconditioned)', N'8.5', N'3.2', N'292.778362', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'bodegaN1', N'OWCCN1 Bodega nivel 1', N'Storage (Unconditioned)', N'3', N'2.5', N'80.729328', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BodFis_2A', N'OWCCN2 Bodega de Fisica 2A', N'Storage (Unconditioned)', N'8.5', N'3.2', N'292.778362', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BodFis_3B', N'OWCCN3 Bodega Fisica 3B', N'Storage (Unconditioned)', N'7.1', N'3', N'229.271291', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BodQuim_2A', N'OWCCN2 Bodega de Quimica 2A', N'Storage (Unconditioned)', N'8.5', N'4.31', N'394.335857', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'BodQuim_2B', N'OWCCN2 Bodega de Quimica 2B', N'Storage (Unconditioned)', N'8.5', N'3.46', N'316.566604', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'boglabOyP1', N'E8N1 Bodega sala de laminacion', N'Storage (Unconditioned)', N'2.5', N'1.75', N'47.092108', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'cafetin_N1', N'OWCCN1 Cafetín', N'Dining Area', N'7.44', N'5.6', N'448.467562', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIU_BD_N3', N'CDIUN3 Baño Damas ', N'Restrooms', N'5.7', N'2', N'122.708578', N'2', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIU_BH_N3', N'CDIUN3 Baño Hombre', N'Restrooms', N'2.44', N'2.31', N'60.6697045', N'2', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIU1BoesE', N'CDIUN1 Bodega escalera de emergencia', N'Storage (Unconditioned)', N'4', N'2', N'86.1112832', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIUN1BañH', N'CDIUN1 Baño Hombre  para personal autorizado ', N'Restrooms', N'2', N'2', N'43.0556416', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIUN1BañM', N'CDIUN1 Baño Damas Para Personal Autorizado ', N'Restrooms', N'2', N'1.4', N'30.1389491', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIUN1EscE', N'CDIUN1 Escaleras de emergecia', N'Corridor', N'8.5', N'4', N'365.972953', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIUN1Pasi', N'CDIUN1 Pasillo Nivel 1 ', N'Corridor', N'6.98', N'19', N'1427.50979', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIUN1SReu', N'CDIUN1 Sala de Reuniones Pastoral Universitaria y Asistencia Estudiantil   ', N'Office (Executive/Private)', N'4.44', N'4.22', N'201.681236', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIUN2Baño', N'CDIUN2 Baños para Personal Autorizado', N'Restrooms', N'2.37', N'1.79', N'45.6637370', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'cdiuN2escE', N'CDIUN2 Escaleras de emergecia', N'Corridor', N'8.5', N'4', N'365.972953', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIUN2Pasi', N'CDIUN2 Pasillo', N'Corridor', N'11.94', N'8.95', N'1150.26375', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIU-pasN3', N'CDIUN3 Pasillo N3', N'Corridor', N'6.95', N'4', N'299.236709', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CDIUPastPa', N'CDIUN1 Pasillo De Pastoral Universitaria y Asistencia Estudiantil', N'Corridor', N'6.86', N'1.31', N'96.7309572', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Christa_N1', N'OWCCN1 Salon Christa Güntermann', N'Auditorium', N'12', N'10.1', N'1304.58594', N'12', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Confe_N1', N'OWCCN1 Salon de Conferencia Profesores', N'Conference Room', N'5.44', N'4.1', N'240.078257', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'CubProN1', N'OWCCN1 Cubiculos de Profesores', N'Vocational Areas', N'13.1', N'8.1', N'1142.15853', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'DepAtePsic', N'CDIUN2 Departamento de Atencion Psicopedagogica', N'Office (Open Plan)', N'4.58', N'3.64', N'179.447303', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'DepComInst', N'CDIUN1 Departamento de Comunicacion Institucional ', N'Office (General)', N'16.31', N'9.41', N'1652.01375', N'15', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'DepEmprIn', N'CDIUN2 Dirrecion de Emprendimiento e innovacion ', N'Office (General)', N'7.67', N'4', N'330.236771', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'DepInvDesa', N'CDIUN2 Departamento de Investigacion y Desarrollo', N'Office (General)', N'4.75', N'4', N'204.514297', N'4', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'DepProSoci', N'CDIUN2 Departamento de Proyecion Social ', N'Office (General)', N'18.5', N'9.56', N'1903.70519', N'19', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_ArqComp', N'E3N2 Arquitectura de Computadoras', N'Computer Room (Instructional/PC Lab)', N'8.47', N'6.6', N'601.724119', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_BiomExp', N'E3N1 Biomedica Experimental', N'Vocational Areas', N'11.2', N'9.75', N'1175.41901', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_BiomVir', N'E3N1 Biomedica Virtual', N'Classroom/Lecture', N'11.77', N'8.5', N'1076.87541', N'11', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_BodN2', N'E3N2 Bodega 2', N'Storage (Unconditioned)', N'8.81', N'4.73', N'448.546139', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_FundGen', N'E3N2 Fundamentos Generales', N'Computer Room (Instructional/PC Lab)', N'9.8', N'10', N'1054.86321', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_InstyCo', N'E3N2 Instrumentacion y Control', N'Computer Room (Instructional/PC Lab)', N'9.83', N'9.64', N'1020.00106', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_MecVirt', N'E3N1 Mecatronica Virtual', N'Classroom/Lecture', N'9.75', N'9.75', N'1023.24423', N'8', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_MicroP', N'E3N2 Microprocesadores', N'Computer Room (Instructional/PC Lab)', N'7.5', N'7', N'565.105296', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_OfiDire', N'E3N1 Oficina Director IIIE', N'Office (Executive/Private)', N'5', N'4.71', N'253.490089', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_Pasillo', N'E3N1 Pasillo', N'Corridor', N'9.71', N'3.5', N'365.811494', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_PCBLab', N'E3N1 Laboratorio de PCB', N'Vocational Areas', N'13.5', N'9.75', N'1416.79970', N'11', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_Redes1', N'E3N2 Redes de computadora 1', N'Computer Room (Instructional/PC Lab)', N'9.77', N'9.65', N'1014.82685', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_Redes2', N'E3N2 Redes de computadora 2', N'Computer Room (Instructional/PC Lab)', N'9.86', N'6.1', N'647.406154', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_Teleco', N'E3N2 Telecomunicaciones', N'Computer Room (Instructional/PC Lab)', N'9.7', N'9.68', N'1010.68813', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3N1AviIns', N'E3N1 Avionica e instrumentacion', N'Vocational Areas', N'9.8', N'5', N'527.431609', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3N1BañHom', N'E3N1 Baño hombres', N'Restrooms', N'4.7', N'4.7', N'237.774780', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3N1BañMuj', N'E3N1 Baño Mujeres', N'Restrooms', N'4.7', N'4.7', N'237.774780', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3N1Bode1', N'E3N1 Bodega 1', N'Storage (Unconditioned)', N'5', N'4.83', N'259.948436', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3N1Propul', N'E3N1 Propulsión', N'Vocational Areas', N'9.8', N'5', N'527.431609', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3N2PasREd', N'E3N2 Pasillo de  redes 2 y  Arquitectura de compudaroras', N'Corridor', N'6.6', N'1.3', N'92.3543512', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3N2PasTel', N'E3N2 Pasillo de Microprocesadores y Telecomunicaciones', N'Corridor', N'7', N'2.2', N'165.764220', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3N2S205AB', N'E3N2 Salones de 205A y 205B', N'Storage (Unconditioned)', N'9.8', N'14.8', N'1561.19756', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3PasBioPC', N'E3N1 Pasillo de laboratorio de biomedia y PCB', N'Corridor', N'8.5', N'1.83', N'167.432626', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3Pasillo_', N'E3N2 Pasillo', N'Corridor', N'9.84', N'1.6', N'169.467005', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E4', N'E4N1 Construcciones Electromecanicas ', N'Computer Room (Instructional/PC Lab)', N'9.80', N'6.7', N'706.758356', N'8', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E4N2 DirEm', N'E4N2 Direccion de emprendimiento e innovacion', N'Office (Open Plan)', N'30', N'9.6', N'3100.00619', N'30', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2 CapB', N'E5N2 capacitaciones B', N'Conference Room', N'9.7', N'8.5', N'887.484412', N'18', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2 OFP', N'E5N2 Oficina principal', N'Office (General)', N'6.6', N'5', N'355.209043', N'4', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2 OfSop', N'E5N2 Oficina soporte tecnico', N'Office (Executive/Private)', N'12', N'9.7', N'1252.91917', N'8', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2 SoPte', N'E5N2 Oficinas CTIC', N'Computer Room (Mainframe/Server)', N'12', N'10', N'1291.66924', N'18', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2LoCap', N'E5N2 Lobby capacitaciones', N'Lobby (Office Reception/Waiting)', N'8', N'6', N'516.667699', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2Sal1', N'E5N2 Salon 1 capacitaciones', N'Classroom/Lecture', N'6', N'5', N'322.917312', N'8', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2Salcap', N'E5N2 Salon 2 capacitaciones', N'Classroom/Lecture', N'6.2', N'4.8', N'320.333973', N'8', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E7_Bodega', N'E7N1 Bodega', N'Storage (Unconditioned)', N'4.9', N'9.87', N'520.574998', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E7_Bombas', N'E7N1 Cuarto Compresores', N'Mechanical/Electrical Room', N'4.9', N'3', N'158.229482', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E7_Taller', N'E7N1 Taller Mecanica', N'Vocational Areas', N'23.5', N'15.72', N'3976.40377', N'12', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E7_Vestibu', N'E7N1 Vestidores', N'Locker and Dressing Room', N'4.9', N'2.85', N'150.318008', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E8N1MioElc', N'E8N1 Mio Electrica', N'Storage (Conditioded)', N'7.5', N'5.12', N'413.334159', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E8N1Prue3', N'E8N1 Prueba 3', N'Medical and Clinical Care', N'2.4', N'3', N'77.5001548', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E8N2SAC2', N'E8N2 Salon de clases 2', N'Classroom/Lecture', N'7.6', N'10.15', N'830.328048', N'17', N'2')
GO
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EA_ofisegu', N'EAN1 Oficina de seguridad y vigilancia', N'Office (Executive/Private)', N'4.3', N'4.3', N'199.024703', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EA_pasiN1', N'EAN1 Pasillo N1', N'Corridor', N'32.5', N'2.33', N'815.097115', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EA_pasiN2', N'EAN2 Pasillo N2', N'Corridor', N'32.5', N'2.33', N'815.097115', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EA_pasiN3', N'EAN3 Pasillo N3', N'Corridor', N'32.5', N'2.33', N'815.097115', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EAbodega1', N'EAN1 Bodega de recursos audiovisuales N1', N'Storage (Unconditioned)', N'8', N'7.89', N'679.418024', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EAbodega2', N'EAN1 bodega 2', N'Storage (Unconditioned)', N'4', N'2.45', N'105.486321', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EAN1Bode1', N'EAN1 bodega 1', N'Storage (Unconditioned)', N'4', N'2.45', N'105.486321', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EB_pasiN1', N'EBN1 Pasillo N1', N'Corridor', N'32.5', N'2.33', N'815.097115', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EB_pasiN2', N'EBN2 Pasillo N2', N'Corridor', N'32', N'2.33', N'802.557159', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EB_pasiN3', N'EBN3 Pasillo N3', N'Corridor', N'32.5', N'2.33', N'815.097115', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EBiblOfiAd', N'EBiblN1 Oficina admninistrativa de biblioteca', N'Office (Open Plan)', N'6.98', N'3.6', N'270.475540', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EBiblSSal', N'EBiblN1 Sala Saladoreña', N'Office (Executive/Private)', N'5.16', N'3.36', N'186.620372', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EBN1Bode1', N'EBN1 Bodega de escalera 1', N'Storage (Unconditioned)', N'4', N'2.46', N'105.916878', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EBN1Bode2', N'EBN1 Bodega de escalera 2', N'Storage (Unconditioned)', N'4', N'2.46', N'105.916878', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EC_pasiN1', N'ECN1 Pasillo N1', N'Corridor', N'28.1', N'2.35', N'710.794823', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EC_pasiN2', N'ECN2 Pasillo N2', N'Corridor', N'32.34', N'2.33', N'811.084329', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EC_pasiN3', N'ECN3 Pasillo N3', N'Corridor', N'32.34', N'2.33', N'811.084329', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2', N'E2N1 Salon de Audiovisuales', N'Classroom/Lecture', N'10', N'7.3', N'785.765459', N'14', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2C', N'E2N1 Estudio de audio cabina ', N'Computer Room (Instructional/PC Lab)', N'5', N'2.4', N'129.166924', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2E', N'E2N1 Estudio de audio grabacion ', N'Conference Room', N'5', N'5', N'269.09776', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2IF', N'E2N1 Estudio de iluminacion fotografica ', N'Computer Room (Instructional/PC Lab)', N'7.4', N'5', N'398.264684', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2S2', N'E6N2 Sala 2', N'Computer Room (Instructional/PC Lab)', N'8', N'5.4', N'465.000929', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2T', N'E2N1 Estudio de television ', N'Conference Room', N'15', N'10', N'1614.58656', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2TV', N'E2N1 Isla de edicion de TV', N'Computer Room (Instructional/PC Lab)', N'5', N'3', N'161.458656', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf3S3', N'E6N2 Sala 3', N'Computer Room (Instructional/PC Lab)', N'8', N'5.4', N'465.000929', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf5SM', N'E5N2 Salon mosaic', N'Conference Room', N'10', N'8', N'861.112832', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf5TyM', N'E5N1 Termometria y mediciones electricas ', N'Comm/Ind Work (Precision)', N'7', N'6', N'452.084236', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6', N'E6N1 Diseño digital ', N'Computer Room (Instructional/PC Lab)', N'10', N'9.6', N'1033.33539', N'11', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6Hid', N'E6N1 Laboratorio de hidraulica ', N'Computer Room (Instructional/PC Lab)', N'7.8', N'8.6', N'722.043109', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6Lob', N'E6N1 Lobby', N'Lobby (Office Reception/Waiting)', N'10', N'10', N'1076.39104', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6Lobb', N'E6N1 Pasillo de entrada ', N'Corridor', N'10', N'4', N'430.556416', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6Neu ', N'E6N1 Laboratorio de neumatica ', N'Computer Room (Instructional/PC Lab)', N'6', N'9.6', N'620.001239', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6Ofc', N'E6N1 Officina', N'Office (General)', N'9.7', N'5', N'522.049654', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6PAS2', N'E6N2 Pasillo A', N'Corridor', N'18', N'1.6 ', N'310.000619', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6PAS2B', N'E6N2 Pasillo B', N'Corridor', N'20', N'1.7', N'365.972953', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6PNH', N'E6N1 Pasillo Neumatica-Hidraulica ', N'Corridor', N'8.6', N'1.7', N'157.368370', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6REC', N'E6N2 Recepcion', N'Convention and Meeting Center', N'12', N'5', N'645.834624', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S10', N'E6N2 Sala 10', N'Computer Room (Instructional/PC Lab)', N'9.5', N'5', N'511.285744', N'12', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S11', N'E6N2 Sala 11', N'Computer Room (Instructional/PC Lab)', N'9.6', N'6', N'620.001239', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S12', N'E6N2 Sala 12', N'Computer Room (Instructional/PC Lab)', N'9.5', N'4', N'409.028595', N'7', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S4', N'E6N2 Sala 4', N'Computer Room (Instructional/PC Lab)', N'5.4', N'8', N'465.000929', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S5', N'E6N2 Sala 5', N'Computer Room (Instructional/PC Lab)', N'5.3', N'8', N'456.389800', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S6', N'E6N2 Sala 6', N'Computer Room (Instructional/PC Lab)', N'7.8', N'5', N'419.792505', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S7', N'E6N2 Sala 7', N'Computer Room (Instructional/PC Lab)', N'7.8', N'5', N'419.792505', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S8', N'E6N2 Sala 8', N'Computer Room (Instructional/PC Lab)', N'7.8', N'5', N'419.792505', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S9', N'E6N2 Sala 9', N'Computer Room (Instructional/PC Lab)', N'7.8', N'5', N'419.792505', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6SE', N'E6N2 Sala de estudio ', N'Conference Room', N'12', N'4.4', N'568.334469', N'12', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6SERV', N'E6N2 Area de servidores ', N'Computer Room (Mainframe/Server)', N'10', N'2.1', N'226.042118', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6SM', N'E6N1 Simulacion de materiales ', N'Classroom/Lecture', N'10', N'4.6', N'495.139878', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edi8Ent', N'E8N2 Entrada principal', N'Lobby (Main Entry and Assembly)', N'10', N'4', N'430.556416', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2Aire', N'E2N1 Exteriores ', N'All Others', N'35', N'15', N'5651.05296', N'30', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2CD2', N'E2N2 Centro de diseño 2', N'Computer Room (Instructional/PC Lab)', N'7.3', N'5', N'392.882729', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2CD3', N'E2N2 Centro de diseño 3', N'Computer Room (Instructional/PC Lab)', N'7.3', N'10', N'785.765459', N'15', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2CD4', N'E2N2 Centro de diseño 4', N'Computer Room (Instructional/PC Lab)', N'5', N'5', N'269.09776', N'5', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2CDE', N'E2N2 Centro de diseño ', N'Computer Room (Instructional/PC Lab)', N'5', N'7.3', N'392.882729', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2FOT', N'E2N1 Estudio de fotografia A', N'Computer Room (Instructional/PC Lab)', N'3.6', N'3.3', N'127.875255', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2FOTB', N'E2N1 Estudio de fotografia B', N'Computer Room (Instructional/PC Lab)', N'4', N'5', N'215.278208', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2pasS', N'E2N2 Pasillo', N'Corridor', N'20', N'2.3', N'495.139878', N'5', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2Pass1', N'E2N1 Pasillo', N'Corridor', N'20', N'2.3', N'495.139878', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2Recp', N'E2N1 Recepcion', N'Office (General)', N'5', N'5', N'269.09776', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2VIC', N'E2N2 Vicerrectoria ', N'Office (General)', N'5', N'5', N'269.09776', N'2', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5CA', N'E5N2 Capacitaciones A', N'Conference Room', N'10', N'8.6', N'925.696294', N'18', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5Cor', N'E5N1 Pasillo laboratorio ensayo de materiales ', N'Corridor', N'18.5', N'2.3', N'458.004387', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5EFP', N'E5N1 Ensayos fisicos de plasticos ', N'Comm/Ind Work (Precision)', N'7', N'3.3', N'248.646330', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5ML', N'E5N1 Dimensional metrologia de longitud ', N'Comm/Ind Work (Precision)', N'9.5', N'5', N'511.285744', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5MYB', N'E5N1 Dimensional masas y balanzas ', N'Comm/Ind Work (Precision)', N'9.5', N'4.5', N'460.157169', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5Ofci', N'E5N2 Recepcion Oficina Ing.', N'Office (General)', N'3.4', N'4.7', N'172.007288', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5pasCm', N'E5N2 Pasillo salones cisco y mosaic', N'Corridor', N'9.8', N'3', N'316.458965', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5PE', N'E5N2 Proyectos educativos ', N'Office (General)', N'11.2', N'9', N'1085.00216', N'8', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5Pres', N'E5N1 Lab de Presion ', N'Comm/Ind Work (Precision)', N'7', N'5', N'376.736864', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5Recp', N'E5N1 Recepcion', N'Lobby (Office Reception/Waiting)', N'6', N'10', N'645.834624', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5RecpC', N'E5N1 Centro de documentacion ', N'Office (General)', N'4.7', N'3', N'151.771136', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5SC', N'E5N2 Salon cisco A', N'Computer Room (Instructional/PC Lab)', N'6.7', N'5', N'360.590998', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5SC5', N'E5N2 Salon cisco B', N'Computer Room (Instructional/PC Lab)', N'6.7', N'5', N'360.590998', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5SR', N'E5N2 Recepcion sala de reuniones', N'Conference Room', N'3.6', N'3.3', N'127.875255', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5Vol', N'E5N1 Volumetria ', N'Comm/Ind Work (Precision)', N'7', N'5', N'376.736864', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif6S1', N'E6N2 Sala 1', N'Computer Room (Instructional/PC Lab)', N'8', N'5.4', N'465.000929', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif6S13', N'E6N2 Sala13', N'Computer Room (Instructional/PC Lab)', N'4.6', N'9.6', N'475.334283', N'13', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8', N'E8N1 Sala de laminacion ', N'Comm/Ind Work (Precision)', N'15', N'9.7', N'1566.14896', N'20', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Almao', N'E8N1 Almacen O y P', N'Storage (Unconditioned)', N'7.8', N'7.6', N'638.084608', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8B', N'E8N2 Bodega ', N'Storage (Unconditioned)', N'7.7', N'4.9', N'406.122339', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8BOD', N'E8N2 Bodega principal', N'Storage (Conditioded)', N'7.7', N'5', N'414.410550', N'4', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8C1', N'E8N2 Salon de clases 1', N'Classroom/Lecture', N'7.7', N'9.9', N'820.532889', N'20', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8CC', N'E8N2 Comedor-Cocina ', N'Dining Area', N'5.7', N'2.8', N'171.792009', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Clinc', N'E8N1 Clinica ', N'Medical and Clinical Care', N'5', N'3', N'161.458656', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8DEOyP', N'E8N1 Direccion de escuela O. y P.', N'Office (General)', N'3', N'5', N'161.458656', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8N2Pas', N'E8N2 Pasillo-Recepcion ', N'Lobby (Main Entry and Assembly)', N'40', N'6.5', N'2798.61670', N'15', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8N2T', N'E8N2 Taller de rehabilitacion ', N'Laboratory, Medical', N'12', N'9.5', N'1227.08578', N'20', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8oc', N'E8N2 Salon de casilleros', N'Storage (Unconditioned)', N'7.7', N'5', N'414.410550', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Of', N'E8N2 Oficinas profesores ', N'Office (General)', N'8.6', N'5.8', N'536.903850', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8OS', N'E8N2 Oficina Secretaria', N'Office (General)', N'7.6', N'4.8', N'392.667451', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8P3y4', N'E8N1 Prueba 4 y 5', N'Medical and Clinical Care', N'4.7', N'3', N'151.771136', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8PasR', N'E8N1 Pasillo recepcion', N'Lobby (Main Entry and Assembly)', N'17.4', N'6', N'1123.75224', N'20', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Pr2', N'E8N1 Prueba 2', N'Medical and Clinical Care', N'2.4', N'3', N'77.5001548', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Prueb', N'E8N1 Prueba 1', N'Medical and Clinical Care', N'4.7', N'3', N'151.771136', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8SalaO', N'E8N1 Laboratorio O. y P. 2', N'Comm/Ind Work (Precision)', N'7.5', N'10.9', N'879.949675', N'16', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Salap', N'E8N1 Sala de pruebas y chequeo ', N'Medical and Clinical Care', N'7', N'6.7', N'504.827397', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8SE', N'E8N2 Salon de estudio 1', N'Library (Reading Areas)', N'7.7', N'4.9', N'406.122339', N'12', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8SM', N'E8N1 Sala de maquinas ', N'Comm/Ind Work (Precision)', N'9.7', N'6', N'626.459585', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8ST', N'E8N1 Sala de termoformado ', N'Comm/Ind Work (Precision)', N'6.7', N'3.1', N'223.566419', N'9', N'1')
GO
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8SY', N'E8N1 Sala de yeso ', N'Computer Room (Instructional/PC Lab)', N'10', N'9.7', N'1044.09930', N'12', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_11', N'EAN1 Salon A-11', N'Classroom/Lecture', N'8', N'7.89', N'679.418024', N'17', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_12A', N'EAN1 Salon A-12A', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_12B', N'EAN1 Salon A-12B', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_13A', N'EAN1 Salon A-13A', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_13B', N'EAN1 Salon A-13B', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_15A', N'EAN1 Salon A-15A', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_15B', N'EAN1 Salon A-15B', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_16A', N'EAN1 Salon A-16A', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_16B', N'EAN1 Salon A-16B', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_17A', N'EAN1 Salon A-17A', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_17B', N'EAN1 Salon A-17B', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_21', N'EAN2 Salon A-21', N'Classroom/Lecture', N'8', N'7.89', N'679.418024', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_22', N'EAN2 Salon A-22', N'Classroom/Lecture', N'8', N'7.89', N'679.418024', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_23', N'EAN2 Salon A-23', N'Classroom/Lecture', N'8', N'7.89', N'679.418024', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_24', N'EAN2 Salon A-24', N'Classroom/Lecture', N'8', N'7.89', N'679.418024', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_25', N'EAN2 Salon A-25', N'Classroom/Lecture', N'8', N'7.89', N'679.418024', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_26', N'EAN2 Salon A-26', N'Classroom/Lecture', N'8', N'7.89', N'679.418024', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_31', N'EAN3 Salon A-31', N'Classroom/Lecture', N'8', N'7.89', N'679.418024', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_32A', N'EAN3 Salon A-32A', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_32B', N'EAN3 Salon A-32B', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_33', N'EAN3 Salon A-33', N'Classroom/Lecture', N'8', N'7.89', N'679.418024', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_34A', N'EAN3 Salon A-34A', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_34B', N'EAN3 Salon A-34B', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_35A', N'EAN3 Salon A-35A', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_35B', N'EAN3 Salon A-35B', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_36A', N'EAN3 Salon A-36A', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_36B', N'EAN3 Salon A-36B', N'Classroom/Lecture', N'8', N'4', N'344.445132', N'9', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_37', N'EAN3 Salon A-37', N'Classroom/Lecture', N'8', N'7.89', N'679.418024', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifA_Scla', N'EAN2 Salon de clases', N'Classroom/Lecture', N'7.89', N'4', N'339.709012', N'9', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_11', N'EBN1 Salon B-11', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'17', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_12', N'EBN1 Salon B-12', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'17', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_13', N'EBN1 Salon B-13', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'17', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_14', N'EBN1 Salon B-14', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'17', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_15A', N'EBN1 Salon B-15A', N'Classroom/Lecture', N'7.83', N'3.8', N'320.269390', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_15B', N'EBN1 Salon B-15B', N'Classroom/Lecture', N'7.83', N'3.8', N'320.269390', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_16A', N'EBN1 Salon B-16A', N'Classroom/Lecture', N'7.83', N'3.8', N'320.269390', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_16B', N'EBN1 Salon B-16B', N'Classroom/Lecture', N'7.83', N'3.8', N'320.269390', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_17', N'EBN1 Salon B-17', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'17', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_21', N'EBN2 Salon B-21', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_22', N'EBN2 Salon B-22', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_24', N'EBN2 Salon B-24', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_25', N'EBN2 Salon B-25', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_26', N'EBN2 Salon B-26', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_31', N'EBN3 Salon B-31', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'16', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_32', N'EBN3 Salon B-32', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'16', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_33', N'EBN3 Salon B-33', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'16', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_34A', N'EBN3 Salon B-34A', N'Classroom/Lecture', N'7.83', N'3.94', N'332.068788', N'9', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_34B', N'EBN3 Salon B-34B', N'Classroom/Lecture', N'7.83', N'3.94', N'332.068788', N'9', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_35', N'EBN3 Salon B-35', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'16', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_36', N'EBN3 Salon B-36', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'16', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_37', N'EBN3 Salon B-37', N'Classroom/Lecture', N'7.83', N'7.82', N'659.080692', N'16', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_SCID', N'EBN2 Salon de clases de idiomas', N'Classroom/Lecture', N'4.88', N'3.84', N'201.707069', N'9', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifB_SLab', N'EBN2 Salon de laboratorio de Idiomas', N'Computer Room (Instructional/PC Lab)', N'7.83', N'7.82', N'659.080692', N'9', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_11', N'ECN1 Salon C-11', N'Mechanical/Electrical Room', N'11.3', N'7.84', N'953.596350', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_12', N'ECN1 Salon C-12', N'Mechanical/Electrical Room', N'11.93', N'7.9', N'1014.46626', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_13', N'ECN1 Salon C-13', N'Classroom/Lecture', N'4', N'7.9', N'340.139568', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_14', N'ECN1 Salon C-14', N'Classroom/Lecture', N'7.9', N'7.8', N'663.272158', N'17', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_15', N'ECN1 Salon C-15', N'Classroom/Lecture', N'7.9', N'7.8', N'663.272158', N'17', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_16', N'ECN1 Salon C-16', N'Classroom/Lecture', N'7.9', N'7.8', N'663.272158', N'17', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_21', N'ECN2 Salon C-21', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_22', N'ECN2 Salon C-22', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_23', N'ECN2 Salon C-23', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_24', N'ECN2 Salon C-24', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_25', N'ECN2 Salon C-25', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_26', N'ECN2 Salon C-26', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_27', N'ECN2 Salon C-27', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_31', N'ECN3 Salon C-31', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_32', N'ECN3 Salon C-32', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_33', N'ECN3 Salon C-33', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_34', N'ECN3 Salon C-34', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_35', N'ECN3 Salon C-35', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_36', N'ECN3 Salon C-36', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_37', N'ECN3 Salon C-37', N'Classroom/Lecture', N'7.94', N'7.82', N'668.339807', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifC_aseo', N'ECN1 Salon de Aseo', N'Dry Cleaning (Full Service Commercial)', N'2.76', N'2.44', N'72.4884781', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edife8PLAB', N'E8N1 Pasillo lab', N'Corridor', N'13.4', N'2', N'288.472798', N'8', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifPrfoEl', N'EPN1 Edificio de profesores Electronica e industrial, recepcion ,simulacion', N'Office (Executive/Private)', N'18.5', N'12', N'2389.58810', N'40', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifProf', N'EPN1 Edificio de Profesores Aeronáutica y Ciencias Basicas', N'Office (Open Plan)', N'19', N'32.1', N'6564.90895', N'60', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifProfAu', N'EPN3 edificio de profesores Audiovisuales A', N'Conference Room', N'8', N'11.6', N'998.890885', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifprofCo', N'EPN1 Edificio de Profesores Computacion , Electronica y Electrica', N'Office (Executive/Private)', N'18.5', N'12.1', N'2409.50134', N'40', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifProfeA', N'EPN3 Edificio de profesores Audiovisuales B', N'Conference Room', N'12', N'8', N'1033.33539', N'17', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifProfEc', N'EPN2 Edificio de profesores Economia y Tecnologico', N'Office (Open Plan)', N'19', N'32.1', N'6564.90895', N'60', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifProfHu', N'EPN2 Edificio de profesores Humanidades', N'Office (Open Plan)', N'18', N'24.2', N'4688.75937', N'60', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edifprofpa', N'EPN3 Edificio de profesores pasillo', N'Corridor', N'30', N'4', N'1291.66924', N'15', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifProfsa', N'EPN3 edificio de profesores salon principal', N'Conference Room', N'16', N'14.6', N'2514.44946', N'30', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edifprosac', N'EPN3 Edificio de profesores salon cocina', N'Dining Area', N'5', N'2.5', N'134.54888', N'3', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRAF', N'ERN1 Administracion y Finanzas', N'Office (General)', N'18.5', N'8', N'1593.05873', N'16', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRCalAc', N'ERN3 Calidad Academica', N'Office (Executive/Private)', N'5.1', N'6.5', N'356.823629', N'8', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRColec', N'ERN1colecturia', N'Bank/Financial Institution', N'5.9', N'3.8', N'241.326871', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRCompy', N'ERN3 Cooperacion y Desarrollo Porfecional', N'Office (Executive/Private)', N'2.7', N'4', N'116.250232', N'3', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRDecAe', N'ERN2 Decanato de Aeronautica ', N'Office (Executive/Private)', N'4.6', N'4', N'198.055951', N'4', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRDecE', N'ERN2 Decanato de Economia ', N'Office (Executive/Private)', N'3.7', N'4', N'159.305873', N'2', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRDecH', N'ERN2 Decanato de Humanidades ', N'Office (Executive/Private)', N'8', N'4', N'344.445132', N'2', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRDecIN', N'ERN2 Decanato de Ingenieria ', N'Office (Executive/Private)', N'8', N'4.6', N'396.111902', N'4', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRET', N'ERN2 Decanato de Tecnologico ', N'Office (Executive/Private)', N'3.7', N'4', N'159.305873', N'2', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifROfi', N'ERN3 oficina', N'Office (Executive/Private)', N'5.1', N'2.9', N'159.198234', N'4', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRplan', N'ERN3 Planificacion', N'Office (Executive/Private)', N'5', N'2.9', N'156.076700', N'3', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRrct', N'ERN3 Rectoria', N'Office (Executive/Private)', N'5.7', N'8', N'490.834314', N'3', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRRecep', N'ERN2 Recepcion .principal', N'Lobby (Office Reception/Waiting)', N'12', N'7.4', N'955.835243', N'15', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRRecHu', N'ERN1 Recursos Humanos', N'Office (General)', N'8.2', N'7.8', N'688.459709', N'10', N'1')
GO
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRRecp', N'ERN1 Recepcion Recursos Humanos', N'Lobby (Office Reception/Waiting)', N'5.1', N'3.9', N'214.094177', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRRecyS', N'ERN3 Rectoria y Secretaria General', N'Lobby (Office Reception/Waiting)', N'16', N'5', N'861.112832', N'20', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRsalco', N'ERN3 Salon comedor', N'Dining Area', N'3.5', N'2.6', N'97.9515846', N'3', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRSalRe', N'ERN3 Sala de Reuniones 2', N'Conference Room', N'3', N'3.4', N'109.791886', N'3', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRsaRe1', N'ERN1 Sala de Reuniones 1', N'Conference Room', N'8', N'16', N'1377.78053', N'8', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRSaRe3', N'ERN3 Sala de Reuniones 3', N'Conference Room', N'3', N'3.4', N'109.791886', N'3', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRSaRu1', N'ERN3 Sala de Reuniones 1', N'Conference Room', N'7.9', N'4', N'340.139568', N'8', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRSecG', N'ERN3 Secretaria General', N'Office (Executive/Private)', N'4', N'8', N'344.445132', N'3', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRUnCum', N'ERN3 Unidad de cumplimiento', N'Office (Executive/Private)', N'2.7', N'4', N'116.250232', N'3', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRVRA', N'ERN2 Vicerrectoria Academica ', N'Office (Executive/Private)', N'4', N'5.6', N'241.111592', N'2', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EdifRVyD', N'ERN2 Vicerrectoria Academica y Decanatos ', N'Lobby (Office Reception/Waiting)', N'8', N'12', N'1033.33539', N'12', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EnfermCDIU', N'CDIUN1 Area de  atencion de Enfermeria ', N'Medical and Clinical Care', N'4', N'3', N'129.166924', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EnfObsCDIU', N'CDIUN1 Area de observacion  de Enfermeria', N'Medical and Clinical Care', N'4', N'3', N'129.166924', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'EPCenRepro', N'EPN2 Centro de Reproducción', N'Copy Room (photocopying equipment)', N'20', N'15', N'3229.17312', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'ERN3recep', N'ERN3 Recepcion ', N'Lobby (Office Reception/Waiting)', N'15.94', N'4.97', N'852.736356', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'esclemergc', N'CDIUN3 Escaleras de emergecia', N'Corridor', N'4.1', N'6.34', N'279.797086', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'extowcc_N1', N'OWCCN1 luminaria exterior', N'Vocational Areas', N'30.3', N'23.3', N'7599.21310', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'extowcc_N2', N'OWCCN2 luminaria exterior', N'Vocational Areas', N'30.3', N'23.3', N'7599.21310', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'extowcc_N3', N'OWCCN3 luminaria exterior', N'Vocational Areas', N'30.3', N'23.3', N'7599.21310', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Icim', N'E3N1 Sistema de manufactura integrada por computadora', N'Computer Room (Instructional/PC Lab)', N'9.74', N'9.75', N'1022.19475', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'InstaElect', N'E4N1 Instalaciones Electricass', N'Computer Room (Instructional/PC Lab)', N'13', N'9.8', N'1371.32218', N'18', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabEMA_N2_', N'OWCCN2 Laboratorio de Electricidad y Magnetismo A cc-24', N'Vocational Areas', N'8.5', N'5', N'457.466192', N'7', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LABENSMAT', N'E6N1 Laboratorio de ensayo de materiales', N'Computer Room (Instructional/PC Lab)', N'15.7', N'4.6', N'777.369609', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabFis1_A', N'OWCCN3 Laboratorio Fisica 1 A cc-31', N'Vocational Areas', N'8.5', N'5', N'457.466192', N'7', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabFis1B', N'OWCCN3 Laboratorio de Fisica 1 B cc-32', N'Vocational Areas', N'8.5', N'5', N'457.466192', N'7', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabFis2cc3', N'OWCCN3 Laboratorio de Física 2 cc-35', N'Vocational Areas', N'8.5', N'5', N'457.466192', N'7', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabFisApl_', N'OWCCN3 Laboratorio de Fisica Aplicada cc-36', N'Vocational Areas', N'8.5', N'5', N'457.466192', N'7', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabFisMode', N'OWCCN2 Laboratorio de Física Moderna cc-26', N'Vocational Areas', N'8.5', N'5', N'457.466192', N'7', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabFisTMA_', N'OWCCN2 Laboratorio de Física TMA cc-27', N'Vocational Areas', N'8.5', N'5', N'457.466192', N'7', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Lableed', N'E4N2 Lab Leed', N'Computer Room (Instructional/PC Lab)', N'10.25', N'9.73', N'1073.51169', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabManEdif', N'E6N1 Laboratorio de Manufactura', N'Comm/Ind Work (Precision)', N'18.9', N'9.6', N'1953.00390', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LaboEMA_N2', N'OWCCN2 Laboratorio de Electricidad y Magnetismo B cc-25', N'Vocational Areas', N'8.5', N'5', N'457.466192', N'7', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LaboQuimGe', N'OWCCN2 Laboratorio de Química General B cc-22', N'Vocational Areas', N'8.52', N'6', N'550.251099', N'13', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LABPROT', N'E6N1 Laboratorio de Prototipado', N'Computer Room (Instructional/PC Lab)', N'10.9', N'4.9', N'574.900454', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabQuimGen', N'OWCCN2 Laboratorio de Química General C cc-23', N'Vocational Areas', N'8.52', N'6', N'550.251099', N'13', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabQuimiGe', N'OWCCN2 Laboratorio de Química General A cc-21', N'Vocational Areas', N'8.52', N'5.92', N'542.914418', N'13', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabRef ', N'E4N1 Laboratorio de Refrigeracion ', N'Computer Room (Instructional/PC Lab)', N'10', N'5', N'538.19552', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabTyF_N2', N'OWCCN2 Laboratorio de Termodinámica y Fluidos cc-28', N'Vocational Areas', N'8.5', N'5', N'457.466192', N'7', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LumEx1CDIU', N'CDIUN1 Luminaria Exterior ', N'All Others', N'27', N'19', N'5521.88603', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LumExtCDIU', N'CDIUN2 Luminaria Exterior ', N'All Others', N'27', N'19', N'5521.88603', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'MacElec', N'E4N1 Maquinas electricas ', N'Computer Room (Instructional/PC Lab)', N'10', N'10', N'1076.39104', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Magna A', N'MAN1 Magna A', N'Conference Room', N'18.6', N'12.8', N'2562.67178', N'58', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'MagnaB', N'MBN1 Magna B', N'Conference Room', N'18.6', N'12.8', N'2562.67178', N'58', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'MagnaC', N'MCN1 Salon principal', N'Conference Room', N'26.1', N'19.2', N'5394.01077', N'140', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'MagnaCEP', N'MCN1 Recepcion-Entrada', N'Lobby (Main Entry and Assembly)', N'16', N'5.6', N'964.446371', N'15', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'MagnaCSC', N'MCN1 Sala de control ', N'Computer Room (Instructional/PC Lab)', N'2.1', N'4.9', N'110.760638', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Maquicoser', N'E8N1 Maquina de Coser', N'Storage (Unconditioned)', N'4', N'2.5', N'107.639104', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'N3Lobby', N'CDIUN3 Recepcion', N'Lobby (Office Reception/Waiting)', N'15.25', N'7.13', N'1170.38688', N'9', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'OfArteCult', N'CDIUN3 Oficina de Arte y Cultura', N'Office (Executive/Private)', N'6', N'4.68', N'302.250604', N'3', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Ofc', N'E5N1 Oficina ', N'Office (General)', N'5', N'4.8', N'258.333849', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Ofic_N1', N'OWCCN1 oficina', N'Vocational Areas', N'4.46', N'2.54', N'121.937882', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'OfiDirect', N'CDIUN2 Oficina de Director  Departamento de Investigacion y Desarrollo', N'Office (Executive/Private)', N'4.75', N'4', N'204.514297', N'2', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'OfiGenAteP', N'CDIUN2 Oficina General de Atencion Psicopedagogica ', N'Office (Executive/Private)', N'4.1', N'4', N'176.528130', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'OfiNueIngr', N'CDIUN1 Oficina de Nuevo Ingreso ', N'Office (General)', N'6.33', N'3.4', N'231.660879', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'OWCCN1PasP', N'OWCCN1 Pasillo N1 profesores', N'Corridor', N'8.5', N'1.74', N'159.198234', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'owccservN2', N'OWCCN2 Cuarto de Servidores y Tableros Electricos', N'Computer Room (Mainframe/Server)', N'8.5', N'3.98', N'364.143088', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Pas_N3', N'OWCCN3 Pasillo N3', N'Corridor', N'23.1', N'5.9', N'1467.01334', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Pasi_N1', N'OWCCN1 Pasillo N1', N'Corridor', N'7.9', N'1.36', N'115.647453', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Pasi_N2', N'OWCCN2 Pasillo N2', N'Corridor', N'30.3', N'5.9', N'1924.26426', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Pastoral', N'CDIUN1 Pastoral ', N'Office (Executive/Private)', N'4.9', N'2.82', N'148.735713', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'PinacN4Bog', N'EPinacN4 Bodega de cuarto nivel', N'Storage (Unconditioned)', N'2.81', N'1.93', N'58.3759152', N'1', N'4')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'PinacN4Ofc', N'EPinacN4 Oficina de Direccion ', N'Office (Executive/Private)', N'4.1', N'2.84', N'125.334972', N'2', N'4')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'PinacN4Pas', N'EPinacN4 Pasillo de cuarto nivel para escalera y bodega', N'Corridor', N'7.24', N'5.95', N'463.687732', N'1', N'4')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'PinaN3BaDa', N'EPinacN3 Baño de Dama', N'Restrooms', N'5.49', N'4.13', N'244.057675', N'2', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'PinaN3BaHo', N'EPinacN3 Baño de Hombre', N'Restrooms', N'5.49', N'1.98', N'117.005858', N'2', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'PinaN3PaBa', N'EPinacN3 Pasillo para los baños del Tercer Nivel', N'Corridor', N'4.1', N'1.84', N'81.2029400', N'1', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'PinaN4SCof', N'EPinacN4 Sala de conferencia', N'Conference Room', N'8.12', N'8.12', N'709.711973', N'8', N'4')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'PinaN4ZoEs', N'EPinacN4 Centro de Cultura Rafael Meza Ayau', N'Vocational Areas', N'16.31', N'14', N'2457.83130', N'17', N'4')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'PinN3ZoEst', N'EPinacN3 Area de estudio Individual y Centro de Computo', N'Computer Room (Mainframe/Server)', N'16.31', N'14', N'2457.83130', N'13', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Recep_N1', N'OWCCN1 Recepcion ', N'Lobby (Office Reception/Waiting)', N'12.2', N'7.2', N'945.501889', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'ReceZonEst', N'EBiblN1 Recepcion, zona de estudio y libros', N'Lobby (Office Reception/Waiting)', N'26.68', N'23.1', N'6633.88409', N'20', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SalaCofCom', N'CDIUN1 Sala de Conferencia Departamento de Comunicacion Institucional ', N'Office (General)', N'3.6', N'3.6', N'139.500278', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'salamusica', N'CDIUN3 Salon de musica', N'Auditorium', N'6', N'9.66', N'623.876246', N'6', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'salon-arte', N'CDIUN3 Salon de artes escenicas', N'Auditorium', N'12.37', N'9.66', N'1286.22486', N'8', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'salonDRN1', N'OWCCN1 salon DR. Michael y Alina Tegtmeier', N'Vocational Areas', N'7.47', N'5.5', N'442.235258', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SalonRB', N'E8N2 Salon de Rehabilitacion ', N'Medical and Clinical Care', N'7.7', N'9.9', N'820.532889', N'8', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SAtenPsic1', N'CDIUN2 Sala de Atencion Psicopedagogica 1', N'Office (Executive/Private)', N'3.64', N'2.91', N'114.015644', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SAtenPsic2', N'CDIUN2 Sala de atencion Psicopedagogica 2', N'Office (Executive/Private)', N'3.48', N'2.9', N'108.629383', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SAtenPsic3', N'CDIUN2 Sala de Atencion Psicopedagogica 3', N'Office (Executive/Private)', N'3.69', N'3.36', N'133.455266', N'2', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'S-audtorio', N'CDIUN3 Mini auditorio Don Bosco', N'Auditorium', N'6.9', N'4.83', N'358.728841', N'6', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SC4', N'E4N2 Sala Cientifica', N'Office (General)', N'10.93', N'9.61', N'1130.61208', N'5', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SiMat_A', N'OWCCN3 Laboratorio SImulacion matemática A cc33', N'Computer Room (Instructional/PC Lab)', N'15.32', N'8.5', N'1401.67641', N'29', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SiMat_B', N'OWCCN3 Simulación Matemática B cc-34', N'Computer Room (Instructional/PC Lab)', N'15.32', N'8.5', N'1401.67641', N'29', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SisPote', N'E4N1 Sistema de Potencia', N'Computer Room (Instructional/PC Lab)', N'9.9', N'9.9', N'1054.97085', N'12', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SReuInvDes', N'CDIUN2 Sala de Reuniones Investigacion Y Desarrollo ', N'Office (Executive/Private)', N'4', N'3.53', N'151.986414', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Svoluntari', N'CDIUN3 Sala de voluntariado', N'Vocational Areas', N'5.83', N'4.64', N'291.176693', N'3', N'3')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'UDBVirt', N'E4N2 UDB Virtual ', N'Computer Room (Instructional/PC Lab)', N'12.80', N'9.76', N'1344.71379', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Ulrike_N1', N'OWCCN1Salon Ulrike y Horst Kruse', N'Auditorium', N'12', N'10.1', N'1304.58594', N'12', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'vidconf_N1', N'OWCCN1 Salon de Video Conferencia', N'Conference Room', N'7.47', N'5.5', N'442.235258', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Volu5', N'E5N1 Laboratorio de Volumetria', N'Comm/Ind Work (Precision)', N'4', N'7', N'301.389491', N'1', N'1')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E2', N'Edificio 2')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E3', N'Edificio 3')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E4', N'Edificio 4')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E5', N'Edificio 5')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E6', N'Edificio 6')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E7', N'Edificio 7')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E8', N'Edificio 8')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'EA', N'Edificio A')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'EB', N'Edificio B')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E-Bibl', N'Biblioteca')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'EC', N'Edificio C')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E-CDIU', N'Edificio CDIU')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E-OWCC', N'Edificio OWCC')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'EP', N'Edificio de profesores')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E-Pinac', N'Pinacoteca')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'ER', N'Edificio R')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'MA', N'Magna A')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'MB', N'Magna B')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'MC', N'Magna C')
SET IDENTITY_INSERT [dbo].[InformacionArea] ON 

INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1, N'Luminarias ojos de buey', N'12', N'8', N'4', N'8', N'3.072', NULL, N'E4', N'Lableed', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (2, N'Luminarias Flourecentes Colgantes', N'4', N'100', N'4', N'8', N'12.8', NULL, N'E4', N'Lableed', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (3, N'Televisor Hisense 50''''', N'1', N'160', N'2', N'8', N'2.56', NULL, N'E4', N'Lableed', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (4, N'Televisor Sony 60''''', N'1', N'160', N'2', N'8', N'2.56', NULL, N'E4', N'Lableed', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (5, N'Fuente trifasica mod. UAT/EV', N'5', N'1100', N'2', N'4', N'44', NULL, N'E4', N'Lableed', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (6, N'Aire Acondicionado', N'1', N'3300', N'4', N'8', N'105.6', NULL, N'E4', N'Lableed', N'AireAcond')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (7, N'Amplificador de sonido EUROPOWER PMP16805', N'1', N'1600', N'1', N'4', N'6.4', NULL, N'E4', N'Lableed', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (8, N'WebCam Logitec', N'1', N'10', N'2', N'8', N'0.16', NULL, N'E4', N'Lableed', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (9, N'Luminarias Flourecentes(2x32)', N'14', N'64', N'9', N'22', N'177.408', NULL, N'E4', N'UDBVirt', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (10, N'Luminarias Flourecentes(4x32)', N'5', N'128', N'2', N'10', N'12.8', NULL, N'E4', N'UDBVirt', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (11, N'Computadoras de escritorio ', N'11', N'100', N'9', N'22', N'217.8', NULL, N'E4', N'UDBVirt', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (12, N'Refrigerador IGLOO', N'1', N'80', N'24', N'30', N'57.6', NULL, N'E4', N'UDBVirt', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (13, N'Cafetera OSTER (12 tazas)', N'1', N'900', N'4', N'22', N'79.2', NULL, N'E4', N'UDBVirt', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (14, N'Microondas ', N'1', N'900', N'0.2', N'22', N'3.96', NULL, N'E4', N'UDBVirt', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (15, N'Impresora Epson L3150', N'2', N'20', N'1', N'4', N'0.16', NULL, N'E4', N'UDBVirt', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (16, N'Aire Acondicionado Lenox', N'1', N'3350', N'9', N'22', N'663.3', NULL, N'E4', N'UDBVirt', N'AireAcond')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (17, N'Aire acondicionado ConfortStar 3Ton', N'1', N'3350', N'2', N'5', N'33.5', NULL, N'E4', N'UDBVirt', N'AireAcond')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (19, N'Televisor aiwa 50''''', N'1', N'115', N'5', N'4', N'2.3', NULL, N'E4', N'AudEmba', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (20, N'Cafetera 30 Tazas', N'1', N'1200', N'5', N'4', N'24', NULL, N'E4', N'AudEmba', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (21, N'Aire acondicionado Lenox 5Ton', N'1', N'6000', N'5', N'4', N'120', NULL, N'E4', N'AudEmba', N'AireAcond')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (22, N'Laptop acer gaming', N'1', N'65', N'4', N'4', N'1.04', NULL, N'E4', N'AudEmba', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (23, N'Foco led adozado a techo ', N'5', N'9', N'5', N'4', N'0.9', NULL, N'E4', N'AudEmba', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (24, N'Foco led suspendido de techo ', N'4', N'9', N'5', N'4', N'0.72', NULL, N'E4', N'AudEmba', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (25, N'Focos led suspendidos de pergola', N'14', N'4.5', N'5', N'4', N'1.26', NULL, N'E4', N'AudEmba', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (26, N'Chopper fan ', N'1', N'120', N'5', N'4', N'2.4', NULL, N'E4', N'AudEmba', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (27, N'Laptop DELL Inspirion ', N'9', N'65', N'4', N'4', N'9.36', NULL, N'E4', N'Lableed', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (28, N'Aire acondicionado mini split-Confort star 3 Ton', N'2', N'3350', N'10', N'22', N'1474', NULL, N'E4', N'SC4', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (29, N'Impresora hp LaserJet P20dn', N'1', N'720', N'1', N'4', N'2.88', NULL, N'E4', N'SC4', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (30, N'Luminarias flourecentes(4x32)', N'6', N'128', N'10', N'22', N'168.96', NULL, N'E4', N'SC4', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31, N'Laptop dell Inspiron 15', N'5', N'65', N'10', N'22', N'71.5', NULL, N'E4', N'SC4', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (32, N'Computadora de escritorio Gaming ', N'1', N'200', N'10', N'22', N'44', NULL, N'E4', N'SC4', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (33, N'Computadora de escritorio hp ', N'3', N'150', N'2', N'4', N'3.6', NULL, N'E4', N'SC4', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (34, N'Cafetera ', N'1', N'1000', N'8', N'22', N'176', NULL, N'E4', N'SC4', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (35, N'Switch', N'1', N'60', N'24', N'30', N'43.2', NULL, N'E4', N'SC4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (36, N'Moden', N'1', N'40', N'24', N'30', N'28.8', NULL, N'E4', N'SC4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (37, N'Impresora 3D Triamer', N'1', N'350', N'2', N'1', N'0.7', NULL, N'E4', N'SC4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (38, N'Impresora 3D ANYCUBIC', N'1', N'612', N'2', N'1', N'1.224', NULL, N'E4', N'SC4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (39, N'Impresora 3D Creality', N'2', N'350', N'2', N'1', N'1.4', NULL, N'E4', N'SC4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (40, N'Impresora Xerox', N'1', N'720', N'1', N'8', N'5.76', NULL, N'E4', N'SC4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (41, N'Scaner Deskjet', N'1', N'350', N'1', N'8', N'2.8', NULL, N'E4', N'SC4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (42, N'Microondas', N'1', N'1800', N'0.2', N'22', N'7.92', NULL, N'E4', N'SC4', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (43, N'Impresora laser ', N'1', N'170', N'4', N'1', N'0.68', NULL, N'E4', N'SC4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (44, N'Cafetera de 30 Tazas', N'1', N'1200', N'5', N'4', N'24', NULL, N'E4', N'SC4', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (45, N'Luminarias Ojos de buey', N'12', N'8', N'4', N'8', N'3.072', NULL, N'E4', N'Lableed', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (46, N'Luminarias Flourecentes Colgantes', N'4', N'100', N'4', N'8', N'12.8', NULL, N'E4', N'Lableed', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (47, N'Televisor Hisense 50''''', N'1', N'160', N'2', N'8', N'2.56', NULL, N'E4', N'Lableed', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (48, N'Televisor Sony 60''''', N'1', N'160', N'2', N'8', N'2.56', NULL, N'E4', N'Lableed', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (49, N'Fuente trifasica mod. UAT/EV', N'5', N'1100', N'2', N'4', N'44', NULL, N'E4', N'Lableed', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (50, N'Aire Acondicionado', N'1', N'3300', N'4', N'8', N'105.6', NULL, N'E4', N'Lableed', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (51, N'Amplificador de sonido EUROPOWER PMP16805', N'1', N'1600', N'1', N'4', N'6.4', NULL, N'E4', N'Lableed', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (52, N'WebCamn Logitec', N'1', N'10', N'2', N'8', N'0.16', NULL, N'E4', N'Lableed', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (53, N'Luminarias Flourecentes (2x32)', N'14', N'64', N'9', N'22', N'177.408', NULL, N'E4', N'UDBVirt', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (54, N'Luminarias Flourecentes(4x32)', N'5', N'128', N'2', N'10', N'12.8', NULL, N'E4', N'UDBVirt', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (55, N'Computadora de escritorio', N'11', N'100', N'9', N'22', N'217.8', NULL, N'E4', N'UDBVirt', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (56, N'Refrigerador IGLOO', N'1', N'80', N'24', N'30', N'57.6', NULL, N'E4', N'UDBVirt', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (57, N'Cafetera Oster(12 tazas)', N'1', N'900', N'4', N'22', N'79.2', NULL, N'E4', N'UDBVirt', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (58, N'Microondas', N'1', N'900', N'0.2', N'22', N'3.96', NULL, N'E4', N'UDBVirt', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (59, N'Impresora Epson L3150', N'2', N'20', N'1', N'4', N'0.16', NULL, N'E4', N'UDBVirt', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (60, N'Aire Acondicionado Lenox', N'1', N'3350', N'9', N'22', N'663.3', NULL, N'E4', N'UDBVirt', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (61, N'Aire acondicionado ConfortStar 3Ton', N'1', N'3350', N'2', N'5', N'33.5', NULL, N'E4', N'UDBVirt', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (62, N'Switchport Tp-Link', N'1', N'60', N'24', N'30', N'43.2', NULL, N'E4', N'UDBVirt', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (63, N'Televisor aiwa 50''''', N'1', N'115', N'5', N'4', N'2.3', NULL, N'E4', N'AudEmba', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (64, N'Cafetera 30 Tazas', N'1', N'1200', N'5', N'4', N'24', NULL, N'E4', N'AudEmba', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (65, N'Aire acondicionado Lenox 5Ton', N'1', N'6000', N'5', N'4', N'120', NULL, N'E4', N'AudEmba', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (66, N'Laptop acer gaming', N'1', N'65', N'4', N'4', N'1.04', NULL, N'E4', N'AudEmba', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (67, N'Foco led adozado a techo', N'5', N'9', N'5', N'4', N'0.9', NULL, N'E4', N'AudEmba', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (68, N'Foco led suspendido de techo', N'4', N'9', N'5', N'4', N'0.72', NULL, N'E4', N'AudEmba', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (69, N'Focos led suspendidos de pergola', N'14', N'4.5', N'5', N'4', N'1.26', NULL, N'E4', N'AudEmba', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (70, N'Chopper fan', N'1', N'120', N'5', N'4', N'2.4', NULL, N'E4', N'AudEmba', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (71, N'Laptop Dell Inspirion 15', N'9', N'65', N'4', N'4', N'9.36', NULL, N'E4', N'Lableed', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (72, N'Computadora de escritorio hp Compaq 6200', N'15', N'120', N'4', N'12', N'86.4', NULL, N'E4', N'SisPote', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (73, N'Luminarias Flourecentes(4x12)', N'8', N'128', N'4', N'12', N'49.152', NULL, N'E4', N'SisPote', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (74, N'Aire acondicionado ConforStar', N'1', N'3350', N'4', N'12', N'160.8', NULL, N'E4', N'SisPote', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (75, N'Access Point D-Link', N'1', N'20', N'24', N'30', N'14.4', NULL, N'E4', N'SisPote', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (76, N'Fuente trifasica de Lorenzo', N'6', N'3000', N'4', N'12', N'864', NULL, N'E4', N'SisPote', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (77, N'Luminarias Flourecentes (4x32)', N'10', N'128', N'2', N'10', N'25.6', NULL, N'E4', N'InstaElect', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (78, N'Fuentes trifasica mod. UAT/EV', N'4', N'1100', N'2', N'10', N'88', NULL, N'E4', N'InstaElect', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (79, N'Luminaria fluorescente 4x32', N'6', N'128', N'8', N'22', N'135.168', NULL, N'E3', N'Autom', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (80, N'Computadoras Lenovo Escritorio', N'20', N'150', N'4', N'22', N'264', NULL, N'E3', N'Autom', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (81, N'Fuente de voltaje trifasica de LORENZO ', N'5', N'3000 ', N'4', N'12', N'720', NULL, N'E4', N'E4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (82, N'Fuente de voltaje trifasica de LORENZO ', N'5', N'3000 ', N'4', N'12', N'720', NULL, N'E4', N'E4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (83, N'Fuente de voltaje trifasica SIEMENS ', N'3', N'3000', N'4', N'12', N'432', NULL, N'E4', N'E4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (84, N'Luminaria fluorecente 4x32W', N'6', N'128', N'4', N'12', N'36.864', NULL, N'E4', N'E4', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (85, N'Motor de induccion trifasico MOTER', N'8', N'1500', N'2', N'10', N'240', NULL, N'E4', N'E4', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (86, N'Motor electrico trifasico SEING', N'2', N'3000', N'1', N'8', N'48', NULL, N'E4', N'E4', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (87, N'Transformador monofasico ', N'3', N'1100', N'2', N'12', N'79.2', NULL, N'E4', N'E4', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (88, N'computadora de Escritorio', N'1', N'150', N'6', N'22', N'19.8', NULL, N'E4', N'Bod', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (89, N'Impresora Hp laserJet P1102W ', N'1', N'400', N'2', N'22', N'17.6', NULL, N'E4', N'Bod', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (90, N'luminaria fluorescente de 2x32w', N'2', N'64', N'8', N'22', N'22.528', NULL, N'E4', N'Bod', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (91, N'Swichtport Tp-link', N'1', N'60', N'24', N'30', N'43.2', NULL, N'E4', N'Bod', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (92, N'Computadora de escritorio ', N'1', N'150', N'6', N'22', N'19.8', NULL, N'E5', N'Ofc', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (93, N'Luminarias LED de 18W', N'2', N'18', N'8', N'22', N'6.336', NULL, N'E5', N'Ofc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (94, N'Ventilador de piso ', N'1', N'60', N'4', N'22', N'5.28', NULL, N'E5', N'Ofc', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (95, N'Luminaria Fluorescente 4x32W', N'6', N'128', N'4', N'15', N'46.08', NULL, N'E4', N'Aud ', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (96, N'Chopper fan ', N'1', N'120', N'5', N'4', N'2.4', NULL, N'E4', N'Aud ', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (97, N'Compresor y motor de ventilador ', N'3', N'800', N'2', N'5', N'24', NULL, N'E4', N'LabRef ', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (98, N'Compresor y motor de ventilador ', N'3', N'200', N'2', N'5', N'6', NULL, N'E4', N'LabRef ', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (99, N'Luminarias fluorescente 4x32W', N'3', N'128', N'2', N'5', N'3.84', NULL, N'E4', N'LabRef ', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (100, N'Fuente trifasica mod. UAT/EV', N'3', N'1100', N'2', N'5', N'33', NULL, N'E4', N'LabRef ', N'Misc')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (101, N'Aire acondicionado Carrier  ', N'3', N'1200', N'2', N'5', N'36', NULL, N'E4', N'LabRef ', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (102, N'Fuente de voltaje trifasica de LORENZO ', N'4', N'3000 ', N'4', N'12', N'576', NULL, N'E4', N'MacElec', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (103, N'Fuente de voltaje trifasica de Lucas Nulle', N'2', N'3000 ', N'2', N'12', N'144', NULL, N'E4', N'MacElec', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (104, N'Luminarias fluorescente 4x32W', N'8', N'128', N'4', N'12', N'49.152', NULL, N'E4', N'MacElec', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (105, N'Cafetera ', N'1', N'1000', N'0.5', N'15', N'7.5', NULL, N'E4', N'MacElec', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (106, N'Computadora de escritorio ', N'1', N'150', N'4', N'22', N'13.2', NULL, N'E4', N'MacElec', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (107, N'Francis Turbine Test Rig (PCH)', N'1', N'18000', N'1', N'4', N'72', NULL, N'E4', N'MacElec', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (108, N'Motor de induccion trifasico Lucas Nuller ', N'10', N'1000', N'2', N'10', N'200', NULL, N'E4', N'MacElec', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (109, N'Motor de induccion trifasico Lucas Nuller ', N'2', N'1000', N'2', N'5', N'20', NULL, N'E4', N'Lableed', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (110, N'Motor de corriente continua Lucas Null ', N'8', N'1000', N'2', N'10', N'160', NULL, N'E4', N'MacElec', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (111, N'Motor monofasico con capacitor 220V Lucas Null ', N'2', N'1000', N'2', N'5', N'20', NULL, N'E4', N'MacElec', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (112, N'Motor sincrono Lucas Nulle', N'5', N'1000', N'2', N'10', N'100', NULL, N'E4', N'MacElec', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (113, N'Motor de induccion trifasico MOTER', N'2', N'1500', N'1', N'5', N'15', NULL, N'E4', N'MacElec', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (114, N'Transformador monofasico didactico marca LEYBOLD ', N'4', N'500', N'2', N'12', N'48', NULL, N'E4', N'MacElec', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (115, N'Computadora Escritorio', N'6', N'220', N'8', N'21', N'221.76', NULL, N'E3', N'ICIM', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (116, N'Laptop', N'9', N'150', N'4', N'21', N'113.4', NULL, N'E3', N'ICIM', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (117, N'Luminarias 4x32', N'16', N'128', N'8', N'21', N'344.064', NULL, N'E3', N'ICIM', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (118, N'AC Commodaire', N'1', N'6000', N'7', N'21', N'882', NULL, N'E3', N'ICIM', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (119, N'CNC EMCO', N'1', N'2760', N'4', N'2', N'22.08', NULL, N'E3', N'ICIM', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (120, N'Proyector Epson', N'1', N'500', N'4', N'8', N'16', NULL, N'E3', N'ICIM', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (121, N'UPS Minuteman', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E3', N'Icim', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (122, N'Luminaria 4x32', N'9', N'128', N'6', N'21', N'145.152', NULL, N'E3', N'E3_MecVirt', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (123, N'TV LED', N'1', N'250', N'4', N'8', N'8', NULL, N'E3', N'E3_MecVirt', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (124, N'AC Commodaire', N'1', N'2000', N'6', N'21', N'252', NULL, N'E3', N'E3_MecVirt', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (125, N'Computadora escritorio', N'3', N'220', N'6', N'21', N'83.16', NULL, N'E3', N'E3_MecVirt', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (126, N'Proyector Epson', N'1', N'500', N'4', N'8', N'16', NULL, N'E3', N'Autom', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (127, N'Luminarias 4x32', N'8', N'128', N'8', N'21', N'172.032', NULL, N'E3', N'E3_BiomExp', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (128, N'AC ComfortStar', N'2', N'3350', N'4', N'21', N'562.8', NULL, N'E3', N'E3_BiomExp', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (129, N'Laptop Lenovo', N'3', N'150', N'8', N'21', N'75.6', NULL, N'E3', N'E3_BiomExp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (130, N'Proyector EPSON', N'1', N'500', N'4', N'8', N'16', NULL, N'E3', N'E3_BiomExp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (131, N'UPS Tripp-lite', N'5', N'15', N'24', N'30', N'54', NULL, N'E3', N'E3_BiomVir', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (132, N'Laptop Lenovo', N'1', N'150', N'4', N'21', N'12.6', NULL, N'E3', N'E3_BiomVir', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (133, N'AC ComfortStar', N'1', N'5200', N'6', N'21', N'655.2', NULL, N'E3', N'E3_BiomVir', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (134, N'Luminaria 4x32', N'6', N'128', N'4', N'21', N'64.512', NULL, N'E3', N'E3_BiomVir', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (135, N'Proyector Epson', N'1', N'500', N'4', N'8', N'16', NULL, N'E3', N'E3_BiomVir', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (136, N'Aspiradora Karcher', N'1', N'1200', N'1', N'4', N'4.8', NULL, N'E3', N'E3_BiomVir', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (137, N'Luces de Emergencia', N'1', N'24', N'24', N'30', N'17.28', NULL, N'E3', N'E3_BiomVir', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (138, N'Luminarias 2x32', N'1', N'64', N'8', N'21', N'10.752', NULL, N'E3', N'E3_OfiDire', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (139, N'Laptop ', N'1', N'150', N'8', N'21', N'25.2', NULL, N'E3', N'E3_OfiDire', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (140, N'AC minisplit 12000', N'1', N'1200', N'4', N'21', N'100.8', NULL, N'E3', N'E3_OfiDire', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (141, N'Computadora Escritorio Lenovo', N'20', N'220', N'2', N'21', N'184.8', NULL, N'E3', N'E3_Redes1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (142, N'Computadora Lenovo', N'1', N'220', N'8', N'21', N'36.96', NULL, N'E3', N'E3_Redes1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (143, N'TV Sony 55"', N'1', N'167', N'1', N'21', N'3.507', NULL, N'E3', N'E3_Redes1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (144, N'AC Commodaire', N'1', N'6000', N'4', N'21', N'504', NULL, N'E3', N'E3_Redes1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (145, N'Luminarias 4x32', N'8', N'128', N'8', N'21', N'172.032', NULL, N'E3', N'E3_Redes1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (146, N'Computadora Escritorio EPSON Pro', N'8', N'220', N'2', N'4', N'14.08', NULL, N'E3', N'E3_FundGen', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (147, N'Computadora HP escritorio', N'20', N'220', N'5', N'8', N'176', NULL, N'E3', N'E3_FundGen', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (148, N'AC Commodaire', N'1', N'6000', N'2', N'21', N'252', NULL, N'E3', N'E3_FundGen', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (149, N'Luminaria 4x32', N'8', N'128', N'4', N'21', N'86.016', NULL, N'E3', N'E3_FundGen', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (150, N'Router', N'1', N'24', N'24', N'30', N'17.28', NULL, N'E3', N'E3_FundGen', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (151, N'AC Commodaire', N'1', N'6000', N'8', N'21', N'1008', NULL, N'E3', N'E3_InstyCo', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (152, N'Computadora Escritorio', N'11', N'220', N'8', N'21', N'406.56', NULL, N'E3', N'E3_InstyCo', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (153, N'Fuentes de potencia para equipo de laboratorio', N'6', N'3000', N'2', N'21', N'756', NULL, N'E3', N'E3_InstyCo', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (154, N'Luminaria 4x32', N'8', N'128', N'8', N'21', N'172.032', NULL, N'E3', N'E3_InstyCo', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (155, N'Luces de emergencia', N'1', N'24', N'24', N'30', N'17.28', NULL, N'E3', N'E3_FundGen', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (156, N'Computadora de escritorio', N'20', N'220', N'30', N'4', N'528', NULL, N'E3', N'E3_Redes2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (157, N'Computadora de escritorio', N'1', N'220', N'8', N'21', N'36.96', NULL, N'E3', N'E3_Redes2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (158, N'Luminaria 4x32', N'4', N'128', N'8', N'21', N'86.016', NULL, N'E3', N'E3_Redes2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (159, N'AC 60000BTU/h', N'1', N'5200', N'8', N'21', N'873.6', NULL, N'E3', N'E3_Redes2', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (160, N'TV Sony 55"', N'1', N'136', N'1', N'21', N'2.856', NULL, N'E3', N'E3_Redes2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (161, N'AC ComfortStar 36000BTU/h', N'1', N'3350', N'8', N'21', N'562.8', NULL, N'E3', N'E3_ArqComp', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (162, N'Computadora de escritorio', N'10', N'220', N'20', N'4', N'176', NULL, N'E3', N'E3_ArqComp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (163, N'Laptop Lenovo', N'1', N'150', N'8', N'21', N'25.2', NULL, N'E3', N'E3_ArqComp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (164, N'Luminarias 4x32', N'6', N'128', N'8', N'21', N'129.024', NULL, N'E3', N'E3_ArqComp', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (165, N'Computadora Escritorio HP', N'10', N'220', N'10', N'4', N'88', NULL, N'E3', N'E3_MicroP', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (166, N'Computadora Escritorio HP', N'1', N'220', N'8', N'21', N'36.96', NULL, N'E3', N'E3_MicroP', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (167, N'AC Tempstar', N'1', N'3350', N'8', N'21', N'562.8', NULL, N'E3', N'E3_MicroP', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (168, N'Luminarias 4x32', N'6', N'128', N'8', N'21', N'129.024', NULL, N'E3', N'E3_MicroP', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (169, N'Computadora Escritorio HP Pro', N'7', N'220', N'2', N'30', N'92.4', NULL, N'E3', N'E3_Teleco', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (170, N'Computadora HP', N'1', N'220', N'8', N'21', N'36.96', NULL, N'E3', N'E3_Teleco', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (171, N'Ac Commodaire', N'1', N'6000', N'8', N'21', N'1008', NULL, N'E3', N'E3_Teleco', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (172, N'Luminarias 4x32', N'8', N'128', N'8', N'21', N'172.032', NULL, N'E3', N'E3_Teleco', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (173, N'Fuentes para equipo de laboratorio', N'3', N'3000', N'2', N'21', N'378', NULL, N'E3', N'E3_Teleco', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (174, N'UPS ', N'4', N'15', N'24', N'30', N'43.2', NULL, N'E3', N'E3_Teleco', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (175, N'Microondas Panasonic', N'1', N'800', N'1', N'21', N'16.8', NULL, N'E3', N'E3_BodN2', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (176, N'Cafetera', N'1', N'900', N'8', N'21', N'151.2', NULL, N'E3', N'E3_BodN2', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (177, N'Luminarias 4x32', N'5', N'128', N'1', N'21', N'13.44', NULL, N'E3', N'E3_BodN2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (178, N'Ventilador de Pared', N'1', N'50', N'1', N'21', N'1.05', NULL, N'E3', N'E3_BodN2', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (179, N'Equipo de Soldadura Eléctrica', N'12', N'12000', N'8', N'12', N'13824', NULL, N'E7', N'E7_Taller', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (180, N'Taladro de Banco Bimak', N'2', N'946', N'5', N'12', N'113.52', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (181, N'Taladro de Banco', N'1', N'1100', N'5', N'12', N'66', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (182, N'Esmeril de banco', N'3', N'504', N'5', N'12', N'90.72', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (183, N'Fresadora ', N'2', N'2046', N'5', N'12', N'245.52', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (184, N'Torno Angular', N'2', N'1738', N'5', N'12', N'208.56', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (185, N'Rectificadora', N'1', N'3000', N'5', N'12', N'180', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (186, N'Afiladora para fresas', N'1', N'1386', N'5', N'12', N'83.16', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (187, N'Luminarias 4x32', N'18', N'128', N'8', N'21', N'387.072', NULL, N'E7', N'E7_Taller', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (188, N'Extractores de calor', N'6', N'750', N'6', N'21', N'567', NULL, N'E7', N'E7_Taller', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (189, N'Luminaria 4x32', N'1', N'128', N'8', N'21', N'21.504', NULL, N'E7', N'E7_Vestibu', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (190, N'Computadora escritorio', N'1', N'125', N'8', N'21', N'21', NULL, N'E7', N'E7_Vestibu', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (191, N'Luminaria 4x32', N'2', N'128', N'1', N'21', N'5.376', NULL, N'E7', N'E7_Bodega', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (192, N'Luminaria Fluorescente', N'5', N'23', N'1', N'21', N'2.415', NULL, N'E7', N'E7_Bodega', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (193, N'Compresor 7.5kW', N'2', N'7500', N'4', N'12', N'720', NULL, N'E7', N'E7_Bombas', N'ACompr')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (194, N'Compresor 11kW', N'1', N'11000', N'4', N'12', N'528', NULL, N'E7', N'E7_Bombas', N'ACompr')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (195, N'Sierra Fija', N'1', N'1646', N'2', N'4', N'13.168', NULL, N'E7', N'E7_Taller', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (196, N'Extractor calor', N'1', N'750', N'8', N'21', N'126', NULL, N'E7', N'E7_Vestibu', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (197, N'AC Innovair 60000 BTU/h', N'1', N'5200', N'4', N'21', N'436.8', NULL, N'E3', N'E3_PCBLab', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (198, N'Cautin Eléctrico', N'16', N'48', N'4', N'12', N'36.864', NULL, N'E3', N'E3_PCBLab', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (199, N'Taladro de banco', N'2', N'100', N'4', N'12', N'9.6', NULL, N'E3', N'E3_PCBLab', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (200, N'Luminaria 4x32', N'8', N'128', N'4', N'21', N'86.016', NULL, N'E3', N'E3_PCBLab', N'IInter')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (201, N'Compresor 2HP', N'1', N'1500', N'2', N'12', N'36', NULL, N'E3', N'E3_PCBLab', N'ACompr')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (202, N'Esmeril de banco', N'1', N'480', N'3', N'12', N'17.28', NULL, N'E3', N'E3_PCBLab', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (203, N'Pistola de Calor', N'3', N'330', N'2', N'12', N'23.76', NULL, N'E3', N'E3_PCBLab', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (204, N'Computadora Escritorio', N'1', N'220', N'4', N'21', N'18.48', NULL, N'E3', N'E3_PCBLab', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (205, N'Impresora HP Laser', N'1', N'552', N'1', N'12', N'6.624', NULL, N'E3', N'E3_PCBLab', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (206, N'Luminaria 2x32', N'2', N'64', N'4', N'21', N'10.752', NULL, N'E3', N'E3_Pasillo', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (207, N'Lampara LED', N'1', N'40', N'4', N'21', N'3.36', NULL, N'E3', N'E3Pasillo_', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (208, N'Cafetera ', N'1', N'650', N'4', N'21', N'54.6', NULL, N'E3', N'E3_PCBLab', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (209, N'Lamparas fluorecentes', N'4', N'128', N'4', N'4', N'8.192', NULL, N'E5', N'Volu5', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (210, N'luminarias 4x32', N'17', N'128', N'8', N'21', N'365.568', NULL, N'E3', N'Icim', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (211, N'Computadora de escritorio', N'6', N'220', N'8', N'21', N'221.76', NULL, N'E3', N'Icim', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (212, N'Laptop', N'6', N'200', N'4', N'21', N'100.8', NULL, N'E3', N'Icim', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (213, N'Computadora de escritorio', N'6', N'220', N'8', N'21', N'221.76', NULL, N'E3', N'Icim', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (214, N'AC 5 ton', N'1', N'6000', N'8', N'21', N'1008', NULL, N'E3', N'Icim', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (215, N'Luminaria fluorescente 4x32W', N'2', N'128', N'6', N'22', N'33.792', NULL, N'E8', N'Edif8Clinc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (216, N'Luminaria flourescente 2x32', N'1', N'64', N'1', N'15', N'0.96', NULL, N'E8', N'Edif8Clinc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (217, N'Ventilador LASKO ', N'1', N'50', N'4', N'22', N'4.4', NULL, N'E8', N'Edif8Clinc', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (218, N'Luminaria flourescente 4x32W', N'2', N'128', N'6', N'22', N'33.792', NULL, N'E8', N'Edif8Prueb', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (219, N'Ventilador LASKO ', N'1', N'50', N'4', N'22', N'4.4', NULL, N'E8', N'Edif8Prueb', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (220, N'Luminaria fluorescente 2x32W', N'1', N'64', N'1', N'15', N'0.96', NULL, N'E8', N'Edif8Prueb', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (221, N'Luminaria fluorescente 4x32W', N'1', N'128', N'6', N'22', N'16.896', NULL, N'E8', N'Edif8P3y4', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (222, N'Ventilador LASKO ', N'2', N'50', N'4', N'22', N'8.8', NULL, N'E8', N'Edif8P3y4', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (223, N'Ventilador LASKO ', N'1', N'50', N'6', N'22', N'6.6', NULL, N'E8', N'Edif8Pr2', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (224, N'Luminaria fluorescente 4x32', N'3', N'128', N'6', N'22', N'50.688', NULL, N'E8', N'Edif8Salap', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (225, N'Ventilador   Westinghouse ', N'1', N'100', N'4', N'22', N'8.8', NULL, N'E8', N'Edif8Salap', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (226, N'Oasis Oster ', N'1', N'300', N'8', N'22', N'52.8', NULL, N'E8', N'Edif8Salap', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (227, N'Televisor Samsung ', N'1', N'175', N'2', N'2', N'0.7', NULL, N'E8', N'Edif8Salap', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (228, N'Maquina de coser Juki', N'6', N'400', N'6', N'22', N'316.8', NULL, N'E8', N'Edif8SY', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (229, N'Luminaria fluorescente 4x32', N'8', N'128', N'2', N'15', N'30.72', NULL, N'E8', N'Edif8SY', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (230, N'Taladro de pedestal de 12 velocidades ', N'1', N'550', N'4', N'22', N'48.4', NULL, N'E8', N'Edif8SY', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (231, N'Equipo de alineacion ', N'1', N'30', N'1', N'10', N'0.3', NULL, N'E8', N'Edif8SY', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (232, N'Luminaria fluorescente 4x2W', N'3', N'128', N'2', N'22', N'16.896', NULL, N'E8', N'Edif8ST', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (233, N'Horno CR Machinery ', N'1', N'10000', N'6', N'22', N'1320', NULL, N'E8', N'Edif8ST', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (234, N'Plancha termica F.W KRAEMER', N'1', N'5000', N'4', N'22', N'440', NULL, N'E8', N'Edif8ST', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (235, N'Compresor Benton Harbor ', N'1', N'500', N'4', N'22', N'44', NULL, N'E8', N'Edif8ST', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (236, N'Bomba de Vacio U.S.MC', N'1', N'400', N'4', N'22', N'35.2', NULL, N'E8', N'Edif8ST', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (237, N'Bomba de succion', N'1', N'750', N'6', N'22', N'99', NULL, N'E8', N'Edif8ST', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (238, N'Luminaria fluorescente 4x32W', N'4', N'128', N'8', N'20', N'81.92', NULL, N'E8', N'Edif8Almao', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (239, N'Ventilador LASKO ', N'2', N'50', N'8', N'20', N'16', NULL, N'E8', N'Edif8Almao', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (240, N'Computadora de escritorio ', N'1', N'150', N'8', N'20', N'24', NULL, N'E8', N'Edif8Almao', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (241, N'Esmeril de banco ', N'1', N'250', N'0.5', N'1', N'0.125', NULL, N'E8', N'Edif8Almao', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (242, N'Luminaria flourescente 4x32W', N'10', N'128', N'8', N'22', N'225.28', NULL, N'E8', N'Edif8', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (243, N'Ventilador Westinghouse ', N'3', N'100', N'4', N'22', N'26.4', NULL, N'E8', N'Edif8', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (244, N'Televisor samsung ', N'1', N'100', N'2', N'3', N'0.6', NULL, N'E8', N'Edif8', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (245, N'Taladro de banco Italian M3T', N'1', N'750', N'2', N'12', N'18', NULL, N'E8', N'Edif8', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (246, N'Esmeril DeWALT DW758', N'3', N'500', N'4', N'20', N'120', NULL, N'E8', N'Edif8', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (247, N'Luminaria fluorescente 4x32', N'8', N'128', N'8', N'22', N'180.224', NULL, N'E8', N'Edif8SalaO', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (248, N'Ventilador Westinghouse ', N'2', N'100', N'4', N'22', N'17.6', NULL, N'E8', N'Edif8SalaO', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (249, N'Esmeril De WALT DW758', N'2', N'500', N'4', N'20', N'80', NULL, N'E8', N'Edif8SalaO', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (250, N'Esmeril JET EQUIPMENT & TOOLS ', N'1', N'1000', N'2', N'15', N'30', NULL, N'E8', N'Edif8SalaO', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (251, N'Taladro de pedestal de 12 velocidades ', N'1', N'550', N'4', N'22', N'48.4', NULL, N'E8', N'Edif8SalaO', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (252, N'Lijadora y fresadora OTTO BOCK', N'3', N'3400', N'4', N'22', N'897.6', NULL, N'E8', N'Edif8SM', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (253, N'Fresadora de columna', N'5', N'1500', N'4', N'22', N'660', NULL, N'E8', N'Edif8SM', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (254, N'Fresadora de columna con motor vertical ', N'1', N'1900', N'4', N'22', N'167.2', NULL, N'E8', N'Edif8SM', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (255, N'Sierra de cinta ELEKTRA BECKUM', N'2', N'1500', N'4', N'22', N'264', NULL, N'E8', N'Edif8SM', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (256, N'Luminaria fluorescente 4x32W', N'4', N'128', N'8', N'22', N'90.112', NULL, N'E8', N'Edif8SM', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (257, N'Luminaria fluorescente 2x32W', N'3', N'64', N'8', N'22', N'33.792', NULL, N'E8', N'Edife8PLAB', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (258, N'.Luminaria LED de 20W', N'1', N'20', N'8', N'22', N'3.52', NULL, N'E8', N'Edife8PLAB', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (259, N'Luminaria fluorescente 2x32W', N'2', N'64', N'8', N'22', N'22.528', NULL, N'E8', N'Edif8PasR', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (260, N'Luminaria fluorescente 4x32W', N'3', N'128', N'8', N'22', N'67.584', NULL, N'E8', N'Edif8PasR', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (261, N'Computadora de escritorio ', N'1', N'150', N'8', N'22', N'26.4', NULL, N'E8', N'Edif8PasR', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (262, N'Impresora HP ', N'1', N'400', N'2', N'15', N'12', NULL, N'E8', N'Edif8PasR', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (263, N'Ventilador LASKO ', N'1', N'50', N'6', N'15', N'4.5', NULL, N'E8', N'Edif8PasR', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (264, N'Luminaria fluorescente 4x32W', N'1', N'128', N'8', N'22', N'22.528', NULL, N'E8', N'Edif8DEOyP', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (265, N'Computadora de escritorio ', N'1', N'150', N'4', N'20', N'12', NULL, N'E8', N'Edif8DEOyP', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (266, N'Switch port fortinet', N'2', N'200', N'24', N'30', N'288', NULL, N'E8', N'Edif8PasR', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (267, N'Luminaria fluorescente 3x32W', N'2', N'96', N'4', N'20', N'15.36', NULL, N'E8', N'Edif8oc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (268, N'Luminaria fluorescente 3x32W', N'2', N'96', N'1', N'4', N'0.768', NULL, N'E8', N'Edif8B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (269, N'Cañon EPSON ', N'1', N'500', N'0.5', N'4', N'1', NULL, N'E8', N'Edif8B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (270, N'Luminaria fluorescente 3x32W', N'6', N'96', N'4', N'15', N'34.56', NULL, N'E8', N'Edif8C1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (271, N'Cañon EPSON ', N'1', N'500', N'0.5', N'4', N'1', NULL, N'E8', N'Edif8C1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (272, N'Aire acondicionado YORK', N'1', N'5000', N'1', N'10', N'50', NULL, N'E8', N'Edif8C1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (273, N'Luminaria fluorescente 4x32W', N'4', N'128', N'6', N'20', N'61.44', NULL, N'E8', N'Edif8SE', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (274, N'Aire acondicionado YORK', N'1', N'3000', N'2', N'10', N'60', NULL, N'E8', N'Edif8SE', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (275, N'Computadora de escritorio ', N'1', N'150', N'1', N'5', N'0.75', NULL, N'E8', N'Edif8SE', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (276, N'Impresora HP Deskjet D1360', N'1', N'20', N'0.5', N'5', N'0.05', NULL, N'E8', N'Edif8SE', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (277, N'Luminaria fluorescente 4x32W', N'9', N'128', N'4', N'20', N'92.16', NULL, N'E8', N'SalonRB', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (278, N'Aire acondicionado Lennox ', N'1', N'3000', N'2', N'10', N'60', NULL, N'E8', N'SalonRB', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (279, N'Televisor SAMSUNG ', N'1', N'175', N'2', N'5', N'1.75', NULL, N'E8', N'SalonRB', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (280, N'Luminaria fluorescente 4x32W', N'1', N'128', N'2', N'15', N'3.84', NULL, N'E8', N'Edif8CC', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (281, N'Horno microondas FRIGIDAIRE ', N'1', N'700', N'0.5', N'15', N'5.25', NULL, N'E8', N'Edif8CC', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (282, N'Cafetera Oster ', N'1', N'1000', N'1', N'20', N'20', NULL, N'E8', N'Edif8CC', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (283, N'Horno tostador HamiltonBeach', N'1', N'1000', N'0.5', N'10', N'5', NULL, N'E8', N'Edif8CC', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (284, N'Oasis Oster', N'2', N'500', N'8', N'22', N'176', NULL, N'E8', N'Edif8CC', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (285, N'Luminaria flourescente 3x32W', N'2', N'128', N'8', N'22', N'45.056', NULL, N'E8', N'Edif8Of', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (286, N'Luminaria empotrada en techo 15W', N'1', N'15', N'8', N'22', N'2.64', NULL, N'E8', N'Edif8Of', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (287, N'Computadora de escritorio ', N'5', N'150', N'4', N'20', N'60', NULL, N'E8', N'Edif8Of', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (288, N'Aire acondicionado YORK', N'1', N'3000', N'8', N'22', N'528', NULL, N'E8', N'Edif8Of', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (289, N'Luminaria fluorescente 4x32W', N'3', N'128', N'8', N'22', N'67.584', NULL, N'E8', N'Edif8OS', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (290, N'Computadora de escritorio ', N'2', N'150', N'8', N'20', N'48', NULL, N'E8', N'Edif8OS', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (291, N'Impresora XEROX workcenter 5325', N'1', N'500', N'8', N'20', N'80', NULL, N'E8', N'Edif8OS', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (292, N'Aire acondicionado Lennox ', N'1', N'2000', N'6', N'20', N'240', NULL, N'E8', N'Edif8OS', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (293, N'Router ', N'1', N'50', N'24', N'30', N'36', NULL, N'E8', N'Edif8OS', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (294, N'Aire acondicionado YORK', N'1', N'1000', N'6', N'20', N'120', NULL, N'E8', N'Edif8OS', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (295, N'Luminarira fluorescente 4x32W', N'2', N'128', N'4', N'15', N'15.36', NULL, N'E8', N'Edif8BOD', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (296, N'Luminaria fluorescente 4x32W', N'8', N'128', N'6', N'22', N'135.168', NULL, N'E8', N'Edif8N2Pas', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (297, N'Luminaria LED empotrada 15W', N'8', N'15', N'2', N'20', N'4.8', NULL, N'E8', N'Edif8N2Pas', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (298, N'Luminaria fluorescente 4x32W', N'6', N'128', N'6', N'20', N'92.16', NULL, N'E8', N'Edif8N2T', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (299, N'Esmeril DeWALT DW758', N'2', N'500', N'2', N'20', N'40', NULL, N'E8', N'Edif8N2T', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (300, N'Taladro de banco JET', N'1', N'550', N'4', N'20', N'44', NULL, N'E8', N'Edif8N2T', N'MElec')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (301, N'Bomba de succion GRUNDFOS ', N'1', N'750', N'4', N'20', N'60', NULL, N'E8', N'Edif8N2T', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (302, N'Horno CR Machinery', N'1', N'10000', N'2', N'20', N'400', NULL, N'E8', N'Edif8N2T', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (303, N'Luminiara empotrada 15W', N'3', N'15', N'2', N'20', N'1.8', NULL, N'E8', N'Edi8Ent', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (304, N'Bocina KOHLT', N'4', N'400', N'4', N'4', N'25.6', NULL, N'MC', N'MagnaC', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (305, N'Bocina PEAVEY', N'4', N'300', N'4', N'4', N'19.2', NULL, N'MC', N'MagnaC', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (306, N'Luminaria empotrada ', N'51', N'20', N'2', N'4', N'8.16', NULL, N'MC', N'MagnaC', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (307, N'Oasis', N'1', N'300', N'6', N'22', N'39.6', NULL, N'EC', N'MagnaC', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (308, N'Iluminacion de escenario principal', N'18', N'30', N'4', N'4', N'8.64', NULL, N'EC', N'MagnaC', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (309, N'Reflectores iluminacion secundaria de escenario ', N'11', N'60', N'4', N'4', N'10.56', NULL, N'MC', N'MagnaC', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (310, N'Reflectores iluminacion terciaria ', N'2', N'60', N'4', N'4', N'1.92', NULL, N'EC', N'MagnaC', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (311, N'Aire aconodicionado DAIKIN ', N'1', N'13000', N'4', N'4', N'208', NULL, N'EC', N'MagnaC', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (312, N'Bocina TOPP PRO', N'1', N'450', N'4', N'4', N'7.2', NULL, N'MC', N'MagnaC', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (313, N'Luminaria fluorescente 4x32W', N'1', N'128', N'4', N'4', N'2.048', NULL, N'MC', N'MagnaCSC', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (314, N'Amplificador PEAVEY ', N'1', N'150', N'4', N'4', N'2.4', NULL, N'MC', N'MagnaCSC', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (315, N'Router ', N'3', N'60', N'24', N'30', N'129.6', NULL, N'EC', N'MagnaCSC', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (316, N'Aire acondicionado ComfortStar', N'1', N'2000', N'4', N'4', N'32', NULL, N'MC', N'MagnaCSC', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (317, N'Luminaria empotrada en techo 20W', N'16', N'20', N'4', N'4', N'5.12', NULL, N'MC', N'MagnaCEP', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (519, N'Computadora de escritorios Hp', N'4', N'220', N'8', N'20', N'140.8', NULL, N'E-Bibl', N'EBiblOfiAd', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (520, N'UPS FORZA', N'4', N'500', N'8', N'20', N'320', NULL, N'E-Bibl', N'EBiblOfiAd', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (521, N'Luminaria 3x32', N'2', N'96', N'10', N'20', N'38.4', NULL, N'E-Bibl', N'EBiblOfiAd', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (522, N'Impresora hp laserJet P1102w', N'1', N'508', N'10', N'20', N'101.6', NULL, N'E-Bibl', N'EBiblOfiAd', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (523, N'Ventilador de techo de 3 aspas', N'1', N'75', N'10', N'20', N'15', NULL, N'E-Bibl', N'EBiblOfiAd', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (524, N'Luminaria de 3x32', N'26', N'96', N'10', N'20', N'499.2', NULL, N'E-Bibl', N'ReceZonEst', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (525, N'luminaraia de 2x32', N'48', N'64', N'10', N'20', N'614.4', NULL, N'E-Bibl', N'ReceZonEst', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (526, N'luminaraia de 3x32', N'9', N'96', N'10', N'20', N'172.8', NULL, N'E-Bibl', N'ReceZonEst', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (527, N'Ventiladores de Techo de 5 Aspas', N'8', N'70', N'10', N'20', N'112', NULL, N'E-Bibl', N'ReceZonEst', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (528, N'Ventilardor de techo de 3 aspas', N'1', N'75', N'10', N'20', N'15', NULL, N'E-Bibl', N'ReceZonEst', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (529, N'Routes FORTINET', N'2', N'12.5', N'24', N'30', N'18', NULL, N'E-Bibl', N'ReceZonEst', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (530, N'Computadora de Escritoria Lenovo', N'8', N'250', N'10', N'20', N'400', NULL, N'E-Bibl', N'ReceZonEst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (531, N'Dispensador de Agua Oster', N'1', N'550', N'10', N'30', N'165', NULL, N'E-Bibl', N'ReceZonEst', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (532, N'Impresora hp laserJet P1102w', N'1', N'508', N'10', N'20', N'101.6', NULL, N'E-Bibl', N'ReceZonEst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (533, N'Desmatizadora de libros', N'1', N'120', N'10', N'20', N'24', NULL, N'E-Bibl', N'ReceZonEst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (534, N'UPS FORZA ', N'1', N'1200', N'10', N'20', N'240', NULL, N'E-Bibl', N'ReceZonEst', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (535, N'Ventilador tipo Torre', N'1', N'60', N'2', N'15', N'1.8', NULL, N'E-Bibl', N'ReceZonEst', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (536, N'Computadoras de Escritorio HP', N'2', N'220', N'10', N'20', N'88', NULL, N'E-Bibl', N'EBiblSSal', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (537, N'UPS FORZA', N'1', N'500', N'10', N'20', N'100', NULL, N'E-Bibl', N'EBiblSSal', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (538, N'UPS CDP', N'1', N'375', N'10', N'20', N'75', NULL, N'E-Bibl', N'EBiblSSal', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (539, N'Luminaria de 3x32', N'4', N'96', N'10', N'20', N'76.8', NULL, N'E-Bibl', N'EBiblSSal', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (540, N'Vetilador de techo de 5 aspas', N'1', N'70', N'10', N'20', N'14', NULL, N'E-Bibl', N'EBiblSSal', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (541, N'Ventilador de Pared', N'1', N'70', N'10', N'20', N'14', NULL, N'E-Bibl', N'EBiblSSal', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (542, N'Monitor de 21 pulgadas y aparato de video vigilancia', N'1', N'500', N'24', N'30', N'360', NULL, N'E-Bibl', N'ReceZonEst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (543, N'Lamparas Fluorecentes', N'7', N'20', N'4', N'20', N'11.2', NULL, N'E-Bibl', N'BibPasBaEs', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (544, N'Lampara fluorecentes', N'2', N'20', N'8', N'20', N'6.4', NULL, N'E-Bibl', N'BiblBañHom', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (545, N'Lampara Fluorecentes', N'2', N'20', N'8', N'20', N'6.4', NULL, N'E-Bibl', N'BiblBañDam', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (546, N'Lampara Fluorecente', N'1', N'20', N'4', N'15', N'1.2', NULL, N'E-Bibl', N'BiblBodEsc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (547, N'Luminaria Fluorecente de 3x32 ', N'2', N'96', N'3', N'20', N'11.52', NULL, N'E-Bibl', N'BiblEscN2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (548, N'Lampara Fluorecente', N'4', N'20', N'3', N'20', N'4.8', NULL, N'E-Bibl', N'BiblEscN2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (549, N'Luminaria fluorescente 3x32', N'44', N'96', N'12', N'23', N'1165.824', NULL, N'E-Bibl', N'BiblSEstEx', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (550, N'Ventilador de techo de 3 aspas', N'14', N'70', N'8', N'20', N'156.8', NULL, N'E-Bibl', N'BiblSEstEx', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (551, N'Ventilador de Techo de 5 aspas', N'2', N'70', N'8', N'20', N'22.4', NULL, N'E-Bibl', N'BiblSEstEx', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (552, N'Router FORTINET', N'4', N'12.5', N'24', N'30', N'36', NULL, N'E-Bibl', N'BiblSEstEx', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (553, N'Luminaria fluorescente de 3x32', N'2', N'96', N'4', N'20', N'15.36', NULL, N'E-Bibl', N'BiblCubNu2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (554, N'Luminaria fluorescente de 3x32', N'2', N'96', N'4', N'20', N'15.36', NULL, N'E-Bibl', N'BiblCubNu1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (555, N'Luminaria fluorescente de 3x32', N'2', N'96', N'4', N'20', N'15.36', NULL, N'E-Bibl', N'BiblCubNu3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (556, N'Luminaria fluorescente de 3x32', N'2', N'96', N'4', N'20', N'15.36', NULL, N'E-Bibl', N'BiblCubNu4', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (557, N'Luminaria fluorescente de 3x32', N'2', N'96', N'4', N'20', N'15.36', NULL, N'E-Bibl', N'BiblCubNu5', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (558, N'Luminaria fluorescente de 3x32', N'2', N'96', N'4', N'20', N'15.36', NULL, N'E-Bibl', N'BiblCubNu6', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (559, N'Ventilador de techo de 3 aspas', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu1', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (560, N'Ventilador de pared Lasko', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu1', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (561, N'Ventilador de techo de 3 aspas', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu2', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (562, N'Ventilador de pared Lasko', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu2', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (563, N'Ventilador de Techo de 3 aspas', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu3', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (564, N'Ventilador de pared Lasko', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu3', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (565, N'Ventilador de Techo de 3 aspas', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu4', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (566, N'Ventilador de pared Lasko', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu4', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (567, N'Ventilador de Techo de 3 aspas', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu5', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (568, N'Ventilador de pared Lasko', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu5', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (569, N'Ventilador de Techo de 3 aspas', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu6', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (570, N'Ventilador de pared Lasko', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Bibl', N'BiblCubNu6', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (571, N'minisplit', N'1', N'2700', N'4', N'15', N'162', NULL, N'E-Bibl', N'BiblSaReun', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (572, N' Refrigeradora', N'1', N'200', N'24', N'30', N'144', NULL, N'E-Bibl', N'BiblSaReun', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (573, N'Cafetera', N'1', N'900', N'4', N'20', N'72', NULL, N'E-Bibl', N'BiblSaReun', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (574, N'Horno Microondas', N'1', N'1800', N'4', N'15', N'108', NULL, N'E-Bibl', N'BiblSaReun', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (575, N'Luminaria fluorescente de 3x32', N'2', N'96', N'4', N'20', N'15.36', NULL, N'E-Bibl', N'BiblSaReun', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (576, N'Oasis Oster', N'1', N'550', N'4', N'20', N'44', NULL, N'E-Bibl', N'BiblSEstEx', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (577, N'Lampara incandecente', N'2', N'100', N'2', N'20', N'8', NULL, N'E-Bibl', N'BiblN1ZoEx', N'IExte')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (578, N'Reflector led ', N'2', N'100', N'2', N'20', N'8', NULL, N'E-Bibl', N'BiblN2ZoEx', N'IExte')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (579, N'Luminaria Florescente 3x32', N'12', N'96', N'6', N'20', N'138.24', NULL, N'E-Pinac', N'PinaN4ZoEs', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (580, N'Ventilador de pared Lasko', N'5', N'70', N'6', N'20', N'42', NULL, N'E-Pinac', N'PinaN4ZoEs', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (581, N'Router FORTINET', N'1', N'12.5', N'24', N'30', N'9', NULL, N'E-Pinac', N'PinaN4ZoEs', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (582, N'Dispensador de Agua(Oasis) Oster', N'1', N'580', N'8', N'20', N'92.8', NULL, N'E-Pinac', N'PinaN4ZoEs', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (583, N'Luminaria florescente de 3x32', N'6', N'96', N'4', N'12', N'27.648', NULL, N'E-Pinac', N'PinaN4SCof', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (584, N'Aire acondicionado Comfortstar', N'1', N'5580', N'2', N'12', N'133.92', NULL, N'E-Pinac', N'PinaN4SCof', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (585, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'E-Pinac', N'PinaN4SCof', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (586, N'Computadora de Escritorio HP', N'1', N'220', N'8', N'20', N'35.2', NULL, N'E-Pinac', N'PinacN4Ofc', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (587, N'Luminaria Florescente de 3x32', N'1', N'96', N'8', N'20', N'15.36', NULL, N'E-Pinac', N'PinacN4Ofc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (588, N'Minisplit Lennox', N'1', N'2700', N'8', N'20', N'432', NULL, N'E-Pinac', N'PinacN4Ofc', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (589, N'Lampara Fluorescente', N'5', N'20', N'2', N'12', N'2.4', NULL, N'E-Pinac', N'PinacN4Pas', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (590, N'Lampara Florescente', N'1', N'20', N'3', N'12', N'0.72', NULL, N'E-Pinac', N'PinacN4Bog', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (591, N'Luminaria Florescente', N'3', N'20', N'2', N'15', N'1.8', NULL, N'E-Pinac', N'PinaN3BaHo', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (592, N'Luminaria Florescente', N'4', N'20', N'2', N'15', N'2.4', NULL, N'E-Pinac', N'PinaN3BaDa', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (593, N'Luminaria Fluorescente de 2x32', N'1', N'64', N'2', N'20', N'2.56', NULL, N'E-Pinac', N'PinaN3PaBa', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (594, N'Luminaria de 2x32', N'29', N'64', N'10', N'20', N'371.2', NULL, N'E-Pinac', N'PinN3ZoEst', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (595, N'Ventilador de Pared Lasko', N'12', N'70', N'10', N'20', N'168', NULL, N'E-Pinac', N'PinN3ZoEst', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (596, N'Computadora de Escritorio Lenovo', N'30', N'220', N'8', N'20', N'1056', NULL, N'E-Pinac', N'PinN3ZoEst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (597, N'Computadora de escritorio Lenovo en Recepcion', N'1', N'220', N'10', N'22', N'48.4', NULL, N'E-Pinac', N'PinN3ZoEst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (598, N'Ventilador de Techo de 3 aspas', N'1', N'70', N'4', N'20', N'5.6', NULL, N'E-Pinac', N'PinN3ZoEst', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (599, N'Rack de Servidores', N'1', N'60', N'24', N'30', N'43.2', NULL, N'E-Pinac', N'PinN3ZoEst', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (600, N'Router FORTINET', N'2', N'12.5', N'24', N'30', N'18', NULL, N'E-Pinac', N'PinN3ZoEst', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (601, N'Dispensador de Agua Oster', N'1', N'580', N'4', N'20', N'46.4', NULL, N'E-Pinac', N'PinN3ZoEst', N'ERefrig')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (602, N'UPS APC', N'1', N'600', N'8', N'20', N'96', NULL, N'E-Pinac', N'PinN3ZoEst', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (603, N'UPS FORZA', N'5', N'600', N'8', N'20', N'480', NULL, N'E-Pinac', N'PinN3ZoEst', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (604, N'UPS Forza', N'2', N'500', N'8', N'20', N'160', NULL, N'E-Pinac', N'PinN3ZoEst', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (605, N'UPS FORZA', N'1', N'600', N'10', N'22', N'132', NULL, N'E-Pinac', N'PinN3ZoEst', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1157, N'Computadora Escritorio', N'6', N'220', N'8', N'21', N'221.76', NULL, N'E3', N'ICIM', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1158, N'Laptop', N'9', N'150', N'4', N'21', N'113.4', NULL, N'E3', N'ICIM', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1159, N'Luminarias 4x32', N'16', N'128', N'8', N'21', N'344.064', NULL, N'E3', N'ICIM', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1160, N'AC Commodaire', N'1', N'6000', N'7', N'21', N'882', NULL, N'E3', N'ICIM', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1161, N'CNC EMCO', N'1', N'2760', N'4', N'2', N'22.08', NULL, N'E3', N'ICIM', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1162, N'Proyector Epson', N'1', N'500', N'4', N'8', N'16', NULL, N'E3', N'ICIM', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1163, N'UPS Minuteman', N'1', N'7920', N'24', N'30', N'5702.4', NULL, N'E3', N'ICIM', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1164, N'Luminaria 4x32', N'9', N'128', N'6', N'21', N'145.152', NULL, N'E3', N'E3_MecVirt', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1165, N'TV LED', N'1', N'250', N'4', N'8', N'8', NULL, N'E3', N'E3_MecVirt', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1166, N'AC Commodaire', N'1', N'2000', N'6', N'21', N'252', NULL, N'E3', N'E3_MecVirt', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1167, N'Computadora escritorio', N'3', N'220', N'6', N'21', N'83.16', NULL, N'E3', N'E3_MecVirt', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1168, N'Proyector Epson', N'1', N'500', N'4', N'8', N'16', NULL, N'E3', N'Autom', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1169, N'Luminarias 4x32', N'8', N'128', N'8', N'21', N'172.032', NULL, N'E3', N'E3_BiomExp', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1170, N'AC ComfortStar', N'2', N'3350', N'4', N'21', N'562.8', NULL, N'E3', N'E3_BiomExp', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1171, N'Laptop Lenovo', N'3', N'150', N'8', N'21', N'75.6', NULL, N'E3', N'E3_BiomExp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1172, N'Proyector EPSON', N'1', N'500', N'4', N'8', N'16', NULL, N'E3', N'E3_BiomExp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1173, N'UPS Tripp-lite', N'5', N'450', N'10', N'21', N'472.5', NULL, N'E3', N'E3_BiomVir', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1174, N'Laptop Lenovo', N'1', N'150', N'4', N'21', N'12.6', NULL, N'E3', N'E3_BiomVir', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1175, N'AC ComfortStar', N'1', N'5200', N'6', N'21', N'655.2', NULL, N'E3', N'E3_BiomVir', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1176, N'Luminaria 4x32', N'6', N'128', N'4', N'21', N'64.512', NULL, N'E3', N'E3_BiomVir', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1177, N'Proyector Epson', N'1', N'500', N'4', N'8', N'16', NULL, N'E3', N'E3_BiomVir', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1178, N'Aspiradora Karcher', N'1', N'1200', N'1', N'4', N'4.8', NULL, N'E3', N'E3_BiomVir', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1179, N'Luces de Emergencia', N'1', N'24', N'24', N'30', N'17.28', NULL, N'E3', N'E3_BiomVir', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1180, N'Luminarias 2x32', N'1', N'64', N'8', N'21', N'10.752', NULL, N'E3', N'E3_OfiDire', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1181, N'Laptop ', N'1', N'150', N'8', N'21', N'25.2', NULL, N'E3', N'E3_OfiDire', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1182, N'AC minisplit 12000', N'1', N'1200', N'4', N'21', N'100.8', NULL, N'E3', N'E3_OfiDire', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1183, N'Computadora Escritorio Lenovo', N'20', N'220', N'2', N'21', N'184.8', NULL, N'E3', N'E3_Redes1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1184, N'Computadora Lenovo', N'1', N'220', N'8', N'21', N'36.96', NULL, N'E3', N'E3_Redes1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1185, N'TV Sony 55"', N'1', N'167', N'1', N'21', N'3.507', NULL, N'E3', N'E3_Redes1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1186, N'AC Commodaire', N'1', N'6000', N'4', N'21', N'504', NULL, N'E3', N'E3_Redes1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1187, N'Luminarias 4x32', N'8', N'128', N'8', N'21', N'172.032', NULL, N'E3', N'E3_Redes1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1188, N'Computadora Escritorio EPSON Pro', N'8', N'220', N'2', N'4', N'14.08', NULL, N'E3', N'E3_FundGen', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1189, N'Computadora HP escritorio', N'20', N'220', N'5', N'8', N'176', NULL, N'E3', N'E3_FundGen', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1190, N'AC Commodaire', N'1', N'6000', N'2', N'21', N'252', NULL, N'E3', N'E3_FundGen', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1191, N'Luminaria 4x32', N'8', N'128', N'4', N'21', N'86.016', NULL, N'E3', N'E3_FundGen', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1192, N'Router', N'1', N'24', N'24', N'30', N'17.28', NULL, N'E3', N'E3_FundGen', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1193, N'AC Commodaire', N'1', N'6000', N'8', N'21', N'1008', NULL, N'E3', N'E3_InstyCo', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1194, N'Computadora Escritorio', N'11', N'220', N'8', N'21', N'406.56', NULL, N'E3', N'E3_InstyCo', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1195, N'Fuentes de potencia para equipo de laboratorio', N'6', N'3000', N'2', N'21', N'756', NULL, N'E3', N'E3_InstyCo', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1196, N'Luminaria 4x32', N'8', N'128', N'8', N'21', N'172.032', NULL, N'E3', N'E3_InstyCo', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1197, N'Luces de emergencia', N'1', N'24', N'24', N'30', N'17.28', NULL, N'E3', N'E3_FundGen', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1198, N'Computadora de escritorio', N'20', N'220', N'30', N'4', N'528', NULL, N'E3', N'E3_Redes2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1199, N'Computadora de escritorio', N'1', N'220', N'8', N'21', N'36.96', NULL, N'E3', N'E3_Redes2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1200, N'Luminaria 4x32', N'4', N'128', N'8', N'21', N'86.016', NULL, N'E3', N'E3_Redes2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1201, N'AC 60000BTU/h', N'1', N'5200', N'8', N'21', N'873.6', NULL, N'E3', N'E3_Redes2', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1202, N'TV Sony 55"', N'1', N'136', N'1', N'21', N'2.856', NULL, N'E3', N'E3_Redes2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1203, N'AC ComfortStar 36000BTU/h', N'1', N'3350', N'8', N'21', N'562.8', NULL, N'E3', N'E3_ArqComp', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1204, N'Computadora de escritorio', N'10', N'220', N'20', N'4', N'176', NULL, N'E3', N'E3_ArqComp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1205, N'Laptop Lenovo', N'1', N'150', N'8', N'21', N'25.2', NULL, N'E3', N'E3_ArqComp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1206, N'Luminarias 4x32', N'6', N'128', N'8', N'21', N'129.024', NULL, N'E3', N'E3_ArqComp', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1207, N'Computadora Escritorio HP', N'10', N'220', N'10', N'4', N'88', NULL, N'E3', N'E3_MicroP', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1208, N'Computadora Escritorio HP', N'1', N'220', N'8', N'21', N'36.96', NULL, N'E3', N'E3_MicroP', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1209, N'AC Tempstar', N'1', N'3350', N'8', N'21', N'562.8', NULL, N'E3', N'E3_MicroP', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1210, N'Luminarias 4x32', N'6', N'128', N'8', N'21', N'129.024', NULL, N'E3', N'E3_MicroP', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1211, N'Computadora Escritorio HP Pro', N'7', N'220', N'2', N'30', N'92.4', NULL, N'E3', N'E3_Teleco', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1212, N'Computadora HP', N'1', N'220', N'8', N'21', N'36.96', NULL, N'E3', N'E3_Teleco', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1213, N'Ac Commodaire', N'1', N'6000', N'8', N'21', N'1008', NULL, N'E3', N'E3_Teleco', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1214, N'Luminarias 4x32', N'8', N'128', N'8', N'21', N'172.032', NULL, N'E3', N'E3_Teleco', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1215, N'Fuentes para equipo de laboratorio', N'3', N'3000', N'2', N'21', N'378', NULL, N'E3', N'E3_Teleco', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1216, N'UPS ', N'4', N'560', N'24', N'30', N'1612.8', NULL, N'E3', N'E3_Teleco', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1217, N'Microondas Panasonic', N'1', N'800', N'1', N'21', N'16.8', NULL, N'E3', N'E3_BodN2', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1218, N'Cafetera', N'1', N'900', N'8', N'21', N'151.2', NULL, N'E3', N'E3_BodN2', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1219, N'Luminarias 4x32', N'5', N'128', N'1', N'21', N'13.44', NULL, N'E3', N'E3_BodN2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1220, N'Ventilador de Pared', N'1', N'50', N'1', N'21', N'1.05', NULL, N'E3', N'E3_BodN2', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1221, N'Equipo de Soldadura Eléctrica', N'12', N'12000', N'8', N'12', N'13824', NULL, N'E7', N'E7_Taller', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1222, N'Taladro de Banco Bimak', N'2', N'946', N'5', N'12', N'113.52', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1223, N'Taladro de Banco', N'1', N'1100', N'5', N'12', N'66', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1224, N'Esmeril de banco', N'3', N'504', N'5', N'12', N'90.72', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1225, N'Fresadora ', N'2', N'2046', N'5', N'12', N'245.52', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1226, N'Torno Angular', N'2', N'1738', N'5', N'12', N'208.56', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1227, N'Rectificadora', N'1', N'3000', N'5', N'12', N'180', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1228, N'Afiladora para fresas', N'1', N'1386', N'5', N'12', N'83.16', NULL, N'E7', N'E7_Taller', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1229, N'Luminarias 4x32', N'18', N'128', N'8', N'21', N'387.072', NULL, N'E7', N'E7_Taller', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1230, N'Extractores de calor', N'6', N'750', N'6', N'21', N'567', NULL, N'E7', N'E7_Taller', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1231, N'Luminaria 4x32', N'1', N'128', N'8', N'21', N'21.504', NULL, N'E7', N'E7_Vestibu', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1232, N'Computadora escritorio', N'1', N'220', N'8', N'21', N'36.96', NULL, N'E7', N'E7_Vestibu', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1233, N'Luminaria 4x32', N'2', N'128', N'1', N'21', N'5.376', NULL, N'E7', N'E7_Bodega', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1234, N'Luminaria Fluorescente', N'5', N'23', N'1', N'21', N'2.415', NULL, N'E7', N'E7_Bodega', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1235, N'Compresor 7.5kW', N'2', N'7500', N'4', N'12', N'720', NULL, N'E7', N'E7_Bombas', N'ACompr')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1236, N'Compresor 11kW', N'1', N'11000', N'4', N'12', N'528', NULL, N'E7', N'E7_Bombas', N'ACompr')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1237, N'Sierra Fija', N'1', N'1646', N'2', N'4', N'13.168', NULL, N'E7', N'E7_Taller', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1238, N'Extractor calor', N'1', N'750', N'8', N'21', N'126', NULL, N'E7', N'E7_Vestibu', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1239, N'AC Innovair 60000 BTU/h', N'1', N'5200', N'4', N'21', N'436.8', NULL, N'E3', N'E3_PCBLab', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1240, N'Cautin Eléctrico', N'16', N'48', N'4', N'12', N'36.864', NULL, N'E3', N'E3_PCBLab', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1241, N'Taladro de banco', N'2', N'100', N'4', N'12', N'9.6', NULL, N'E3', N'E3_PCBLab', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1242, N'Luminaria 4x32', N'8', N'128', N'4', N'21', N'86.016', NULL, N'E3', N'E3_PCBLab', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1243, N'Compresor 2HP', N'1', N'1500', N'2', N'12', N'36', NULL, N'E3', N'E3_PCBLab', N'ACompr')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1244, N'Esmeril de banco', N'1', N'480', N'3', N'12', N'17.28', NULL, N'E3', N'E3_PCBLab', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1245, N'Pistola de Calor', N'3', N'330', N'2', N'12', N'23.76', NULL, N'E3', N'E3_PCBLab', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1246, N'Computadora Escritorio', N'1', N'220', N'4', N'21', N'18.48', NULL, N'E3', N'E3_PCBLab', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1247, N'Impresora HP Laser', N'1', N'552', N'1', N'12', N'6.624', NULL, N'E3', N'E3_PCBLab', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1250, N'Cafetera ', N'1', N'650', N'4', N'21', N'54.6', NULL, N'E3', N'E3_PCBLab', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1251, N'Computadoras de Escritorio', N'49', N'125', N'4', N'8', N'196', NULL, N'E-OWCC', N'SiMat_A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1252, N'UPS Smartbitt', N'11', N'15', N'24', N'30', N'118.8', NULL, N'E-OWCC', N'SiMat_A', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1253, N'Luminaria 3x18', N'12', N'54', N'4', N'8', N'20.736', NULL, N'E-OWCC', N'SiMat_A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1254, N'Impresora Laser', N'1', N'852', N'2', N'8', N'13.632', NULL, N'E-OWCC', N'SiMat_A', N'EOfic')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1255, N'Luminarias 3x18', N'12', N'54', N'4', N'8', N'20.736', NULL, N'E-OWCC', N'SiMat_B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1256, N'Computadora escritorio', N'1', N'125', N'4', N'8', N'4', NULL, N'E-OWCC', N'SiMat_B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1257, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabFis2cc3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1258, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabFis2cc3', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1259, N'Luminarias 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabFis1B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1260, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabFis1B', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1261, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabFis1_A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1262, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabFisApl_', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1263, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabFisApl_', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1264, N'Luminaria LED', N'3', N'7', N'1', N'4', N'0.084', NULL, N'E-OWCC', N'BodegaFisi', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1265, N'Luminaria LED ', N'3', N'7', N'1', N'4', N'0.084', NULL, N'E-OWCC', N'BodFis_3B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1266, N'Luminaria 3x18', N'2', N'54', N'1', N'4', N'0.432', NULL, N'E-OWCC', N'BodQuim_2A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1267, N'Luminaria LED', N'3', N'7', N'1', N'4', N'0.084', NULL, N'E-OWCC', N'BodQuim_2B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1268, N'Luminaria LED', N'3', N'7', N'1', N'4', N'0.084', NULL, N'E-OWCC', N'BodFis_2A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1269, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabQuimGen', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1270, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabQuimGen', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1271, N'Luminaria 4x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabQuimiGe', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1272, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabQuimiGe', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1273, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LaboQuimGe', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1274, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LaboQuimGe', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1275, N'Luminaria 3x18', N'3', N'54', N'4', N'8', N'5.184', NULL, N'E-OWCC', N'LabFisMode', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1276, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabFisMode', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1277, N'Luminaria 3x18', N'3', N'54', N'4', N'8', N'5.184', NULL, N'E-OWCC', N'LabFisTMA_', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1278, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabFisTMA_', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1279, N'Luminaria 3x18', N'3', N'54', N'4', N'8', N'5.184', NULL, N'E-OWCC', N'LabTyF_N2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1280, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabTyF_N2', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1281, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LaboEMA_N2', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1282, N'Luminaria 3x18', N'3', N'54', N'4', N'8', N'5.184', NULL, N'E-OWCC', N'LaboEMA_N2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1283, N'Minispli Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabEMA_N2_', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1284, N'Luminaria 3x18', N'3', N'54', N'4', N'8', N'5.184', NULL, N'E-OWCC', N'LabEMA_N2_', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1285, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'Pas_N3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1286, N'Luminaria escaleras', N'2', N'18', N'4', N'8', N'1.152', NULL, N'E-OWCC', N'Pas_N3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1287, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'Pasi_N2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1288, N'Reflector LED', N'2', N'14', N'4', N'8', N'0.896', NULL, N'E-OWCC', N'Pasi_N2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1289, N'Reflector tipo panel LED', N'2', N'15', N'4', N'8', N'0.96', NULL, N'E-OWCC', N'Pasi_N2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1290, N'Luminaria fluorescente 15W', N'6', N'15', N'2', N'10', N'1.8', NULL, N'E2', N'Edf2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1291, N'Luminaria fluorescente 2x32W', N'6', N'64', N'2', N'10', N'7.68', NULL, N'E2', N'Edf2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1292, N'Regulador de voltaje ', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E2', N'Edf2', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1293, N'UPS', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E2', N'Edf2', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1294, N'Bocina ', N'2', N'100', N'2', N'10', N'4', NULL, N'E2', N'Edf2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1295, N'Bocina sound barrier', N'2', N'200', N'2', N'10', N'8', NULL, N'E2', N'Edf2E', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1296, N'Reproductor de discos marca SONY', N'1', N'12', N'2', N'10', N'0.24', NULL, N'E2', N'Edf2E', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1297, N'Bocina Pioneer ', N'2', N'60', N'2', N'10', N'2.4', NULL, N'E2', N'Edf2E', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1298, N'Televisor LG', N'1', N'100', N'2', N'10', N'2', NULL, N'E2', N'Edf2E', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1300, N'Luminaria fluorescente 4x32W', N'2', N'128', N'2', N'10', N'5.12', NULL, N'E2', N'Edf2E', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1301, N'Luminaria LED 10W', N'5', N'10', N'2', N'10', N'1', NULL, N'E2', N'Edf2E', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1302, N'Luminaria fluorescente 4x32W', N'1', N'128', N'8', N'10', N'10.24', NULL, N'E2', N'Edf2C', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1303, N'Computadora de escritorio ', N'1', N'150', N'8', N'10', N'12', NULL, N'E2', N'Edf2C', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1304, N'Computadora de escritorio MAC', N'1', N'200', N'8', N'10', N'16', NULL, N'E2', N'Edf2C', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1305, N'Amplificador de potencia Behringer X32', N'1', N'120', N'8', N'10', N'9.6', NULL, N'E2', N'Edf2C', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1306, N'Stereo amplifier superscope model A-250', N'1', N'85', N'8', N'10', N'6.8', NULL, N'E2', N'Edf2C', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1307, N'Interfaz de audio M-AUDIO M-TRACK quad ', N'1', N'200', N'8', N'10', N'16', NULL, N'E2', N'Edf2C', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1308, N'Reproductor de discos marca SONY', N'1', N'12', N'8', N'10', N'0.96', NULL, N'E2', N'Edf2C', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1309, N'Luminaria LED 10W', N'3', N'10', N'8', N'10', N'2.4', NULL, N'E2', N'Edf2C', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1310, N'Luminaria fluorescente empotrada en cielo falso ', N'1', N'15', N'8', N'10', N'1.2', NULL, N'E2', N'Edf2C', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1311, N'Bocina behringer ', N'2', N'100', N'8', N'10', N'16', NULL, N'E2', N'Edf2C', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1312, N'Reloj digital de pared ', N'1', N'15', N'8', N'10', N'1.2', NULL, N'E2', N'Edf2C', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1313, N'Bocina SONY', N'2', N'80', N'8', N'10', N'12.8', NULL, N'E2', N'Edf2C', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1314, N'Regulador de voltaje ', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E2', N'Edf2C', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1315, N'Sistema de iluminacion GVM ', N'3', N'10', N'2', N'10', N'0.6', NULL, N'E2', N'Edf2T', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1316, N'Camara de video SONY super steadyshot HVR-HD 1000N', N'2', N'10', N'2', N'10', N'0.4', NULL, N'E2', N'Edf2T', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1317, N'Sistema de iluminacion 4x7W', N'3', N'28', N'2', N'10', N'1.68', NULL, N'E2', N'Edf2T', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1318, N'Sistema de iluminacion 2x7W', N'2', N'14', N'2', N'10', N'0.56', NULL, N'E2', N'Edf2T', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1319, N'Lampara Halogena de piso ', N'3', N'300', N'0.5', N'4', N'1.8', NULL, N'E2', N'Edf2T', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1320, N'Luminaria fluorescente 4x32W', N'12', N'128', N'2', N'10', N'30.72', NULL, N'E2', N'Edf2T', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1321, N'Sistema de iluminacion 2x7W', N'2', N'14', N'2', N'10', N'0.56', NULL, N'E2', N'Edf2T', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1322, N'Bocina de pared', N'2', N'15', N'2', N'10', N'0.6', NULL, N'E2', N'Edf2T', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1323, N'Televisor SAMSUNG ', N'1', N'100', N'2', N'10', N'2', NULL, N'E2', N'Edf2T', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1324, N'Computadora de escritorio MAC', N'3', N'200', N'8', N'10', N'48', NULL, N'E2', N'Edf2TV', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1325, N'Pantalla SONY bravia ', N'2', N'100', N'8', N'10', N'16', NULL, N'E2', N'Edf2TV', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1326, N'Consola Blackmagic desing ', N'1', N'50', N'8', N'10', N'4', NULL, N'E2', N'Edf2TV', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1327, N'Computadora de escritorio MAC', N'3', N'200', N'8', N'10', N'48', NULL, N'E2', N'Edf2TV', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1328, N'Mezclador Peavey PV-10', N'1', N'50', N'8', N'10', N'4', NULL, N'E2', N'Edf2TV', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1329, N'UPS tripp lite ', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E2', N'Edf2TV', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1330, N'Luminaria LED 10W', N'5', N'10', N'8', N'10', N'4', NULL, N'E2', N'Edf2TV', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1331, N'Luminaria fluorescente empotrada en cielo falso ', N'1', N'15', N'8', N'10', N'1.2', NULL, N'E2', N'Edf2TV', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1332, N'Luminaria fluorescente 2x32W', N'1', N'64', N'8', N'10', N'5.12', NULL, N'E2', N'Edf2TV', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1333, N'Bocina de piso ', N'1', N'100', N'8', N'10', N'8', NULL, N'E2', N'Edf2TV', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1334, N'Luminaria fluorescente 4x32W', N'1', N'128', N'2', N'10', N'2.56', NULL, N'E2', N'Edif2FOT', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1335, N'Sistema de iluminacioin principal ', N'1', N'1000', N'2', N'10', N'20', NULL, N'E2', N'Edif2FOT', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1336, N'Lampara Halogena de piso ', N'2', N'300', N'0.5', N'4', N'1.2', NULL, N'E2', N'Edif2FOT', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1337, N'Sistema de iluminacion visico VL 300 plus', N'3', N'60', N'2', N'10', N'3.6', NULL, N'E2', N'Edif2FOTB', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1338, N'Lampara estudio flash SP-160M', N'1', N'60', N'2', N'10', N'1.2', NULL, N'E2', N'Edif2FOTB', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1339, N'Luminaria fluorescente 4x32W', N'1', N'128', N'2', N'10', N'2.56', NULL, N'E2', N'Edif2FOTB', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1340, N'Aire acondicionado Comfortstar', N'1', N'3000', N'2', N'10', N'60', NULL, N'E2', N'Edif2FOTB', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1341, N'Switch port fortinet', N'1', N'60', N'24', N'31', N'44.64', NULL, N'E2', N'Edif2FOTB', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1342, N'Computadora de escritorio IMAC', N'22', N'200', N'2', N'10', N'88', NULL, N'E2', N'Edif2CDE', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1343, N'UPS ', N'2', N'15', N'24', N'30', N'21.6', NULL, N'E2', N'Edif2CDE', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1344, N'Luminaria fluorescente 4x32W', N'4', N'128', N'2', N'10', N'10.24', NULL, N'E2', N'Edif2CDE', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1345, N'Proyector EPSON ', N'1', N'50', N'1', N'5', N'0.25', NULL, N'E2', N'Edif2CDE', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1346, N'Computadora de escritorio IMAC', N'2', N'200', N'2', N'10', N'8', NULL, N'E2', N'Edf2IF', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1347, N'Sistema de iluminacion visico VT 4000', N'3', N'60', N'2', N'10', N'3.6', NULL, N'E2', N'Edf2IF', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1348, N'Lampara estudio flash SP-160M', N'1', N'60', N'2', N'10', N'1.2', NULL, N'E2', N'Edf2IF', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1349, N'Lampara square ', N'1', N'20', N'2', N'10', N'0.4', NULL, N'E2', N'Edf2IF', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1350, N'Luminaria fluorescente 4x32W', N'4', N'128', N'2', N'10', N'10.24', NULL, N'E2', N'Edf2IF', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1351, N'UPS forza ', N'1', N'75', N'2', N'10', N'1.5', NULL, N'E2', N'Edf2IF', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1352, N'Computadora de escritorio IMAC', N'22', N'200', N'2', N'10', N'88', NULL, N'E2', N'Edif2CD2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1353, N'UPS ', N'2', N'1790', N'2', N'10', N'71.6', NULL, N'E2', N'Edif2CD2', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1354, N'Proyector EPSON ', N'1', N'50', N'1', N'5', N'0.25', NULL, N'E2', N'Edif2CD2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1355, N'Aire acondicionado Lennox ', N'1', N'3000', N'2', N'10', N'60', NULL, N'E2', N'Edif2CD2', N'Acondic')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1356, N'Luminaria fluorescente 4x32W', N'4', N'128', N'2', N'10', N'10.24', NULL, N'E2', N'Edif2CD2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1357, N'Computadora de escritorio IMAC', N'20', N'200', N'2', N'10', N'80', NULL, N'E2', N'Edif2CD3', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1358, N'UPS centraol', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E2', N'Edif2CD3', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1359, N'Proyector EPSON ', N'1', N'50', N'1', N'5', N'0.25', NULL, N'E2', N'Edif2CD3', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1360, N'Aire acondicionado Comfortstar', N'1', N'3000', N'2', N'10', N'60', NULL, N'E2', N'Edif2CD3', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1361, N'Luminaria fluorescente 4x32W', N'8', N'128', N'2', N'10', N'20.48', NULL, N'E2', N'Edif2CD3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1362, N'Computadora de escritorio IMAC', N'10', N'200', N'2', N'10', N'40', NULL, N'E2', N'Edif2CD4', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1363, N'Proyector EPSON ', N'1', N'50', N'1', N'5', N'0.25', NULL, N'E2', N'Edif2CD4', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1364, N'Luminaria fluorescente 4x32W', N'2', N'128', N'2', N'10', N'5.12', NULL, N'E2', N'Edif2CD4', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1365, N'Luminaria fluorescente 4x32W', N'2', N'128', N'2', N'10', N'5.12', NULL, N'E2', N'Edif2Recp', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1366, N'Impresora HP color LaserJet Pro MFP M479dw', N'1', N'300', N'8', N'22', N'52.8', NULL, N'E2', N'Edif2Recp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1367, N'Copiadora XEROX ', N'1', N'1000', N'2', N'8', N'16', NULL, N'E2', N'Edif2Recp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1368, N'Cafetera Hamilton Beach ', N'1', N'800', N'0.5', N'2', N'0.8', NULL, N'E2', N'Edif2Recp', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1369, N'Horno microondas  ', N'1', N'1500', N'0.5', N'4', N'3', NULL, N'E2', N'Edif2Recp', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1370, N'Oasis novatek ', N'1', N'300', N'8', N'4', N'9.6', NULL, N'E2', N'Edif2Recp', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1371, N'Computadora de escritorio ', N'1', N'200', N'8', N'22', N'35.2', NULL, N'E2', N'Edif2Recp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1372, N'Horno tostador durabrand ', N'1', N'700', N'0.5', N'4', N'1.4', NULL, N'E2', N'Edif2Recp', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1373, N'Impresora HP LaserJet P1102W', N'1', N'200', N'0.5', N'2', N'0.2', NULL, N'E2', N'Edif2Recp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1374, N'Computadora de escritorio ', N'1', N'200', N'2', N'22', N'8.8', NULL, N'E2', N'Edif2VIC', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1375, N'Luminaria fluorescente 4x32W', N'2', N'128', N'4', N'22', N'22.528', NULL, N'E2', N'Edif2VIC', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1376, N'Foco fluorescente ', N'6', N'15', N'2', N'20', N'3.6', NULL, N'E2', N'Edif2pasS', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1377, N'Foco fluorescente ', N'3', N'15', N'2', N'20', N'1.8', NULL, N'E2', N'Edif2Pass1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1378, N'Foco fluorescente ', N'2', N'20', N'2', N'20', N'1.6', NULL, N'E2', N'Edif2Pass1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1379, N'Unidad de condensacion Carrier ', N'2', N'8000', N'2', N'10', N'320', NULL, N'E2', N'Edif2Aire', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1380, N'Unidad de condensacion Q plus  ', N'2', N'6000', N'2', N'10', N'240', NULL, N'E2', N'Edif2Aire', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1381, N'Unidad de condensacion ComfortStar   ', N'1', N'6000', N'2', N'10', N'120', NULL, N'E2', N'Edif2Aire', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1382, N'Computadora todo en uno Lenov0', N'26', N'150', N'2', N'15', N'117', NULL, N'E6', N'Edif6S1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1383, N'Luminaria fluorescente 2x15W', N'4', N'30', N'2', N'15', N'3.6', NULL, N'E6', N'Edif6S1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1384, N'Televisor Hisense', N'1', N'100', N'1', N'4', N'0.4', NULL, N'E6', N'Edif6S1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1385, N'Computadora todo en uno Lenov0', N'26', N'150', N'2', N'15', N'117', NULL, N'E6', N'Edf2S2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1386, N'Luminaria fluorescente 2x15W', N'4', N'30', N'2', N'15', N'3.6', NULL, N'E6', N'Edf2S2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1387, N'Televisor Hisense', N'1', N'100', N'1', N'4', N'0.4', NULL, N'E6', N'Edf2S2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1388, N'Computadora todo en uno Lenov0', N'26', N'150', N'2', N'15', N'117', NULL, N'E6', N'Edf3S3', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1389, N'Luminaria fluorescente 2x15W', N'4', N'30', N'2', N'15', N'3.6', NULL, N'E6', N'Edf3S3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1390, N'Televisor Hisense', N'1', N'100', N'1', N'4', N'0.4', NULL, N'E6', N'Edf3S3', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1391, N'Computadora todo en uno Lenov0', N'26', N'150', N'2', N'15', N'117', NULL, N'E6', N'Edf6S4', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1392, N'Luminaria fluorescente 2x15W', N'4', N'30', N'2', N'15', N'3.6', NULL, N'E6', N'Edf6S4', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1393, N'Televisor Hisense', N'1', N'100', N'1', N'4', N'0.4', NULL, N'E6', N'Edf6S4', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1394, N'Computadora todo en uno Lenov0', N'26', N'150', N'2', N'15', N'117', NULL, N'E6', N'Edf6S5', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1395, N'Luminaria fluorescente 2x15W', N'4', N'30', N'2', N'15', N'3.6', NULL, N'E6', N'Edf6S5', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1396, N'Televisor Hisense', N'1', N'100', N'1', N'4', N'0.4', NULL, N'E6', N'Edf6S5', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1397, N'Computadora Lenovo de escritorio ', N'15', N'150', N'2', N'15', N'67.5', NULL, N'E6', N'Edf6S6', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1398, N'Aire acondicionado Lennox ', N'1', N'3000', N'2', N'15', N'90', NULL, N'E6', N'Edf6S6', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1399, N'Computadora HP de escritorio ', N'1', N'150', N'2', N'15', N'4.5', NULL, N'E6', N'Edf6S6', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1400, N'Luminaria fluorescente 4x32W', N'4', N'128', N'2', N'15', N'15.36', NULL, N'E6', N'Edf6S6', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1401, N'Televisor SONY ', N'1', N'100', N'2', N'15', N'3', NULL, N'E6', N'Edf6S6', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1402, N'CPU personalizado para servidor ', N'3', N'150', N'24', N'30', N'324', NULL, N'E6', N'Edf6SERV', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1403, N'Servidor de respaldo  ', N'1', N'450', N'5', N'15', N'33.75', NULL, N'E6', N'Edf6SERV', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1404, N'Servidor de respaldo secundario  ', N'1', N'450', N'24', N'30', N'324', NULL, N'E6', N'Edf6SERV', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1405, N'Sistema de servidores ', N'1', N'10000', N'24', N'30', N'7200', NULL, N'E6', N'Edf6SERV', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1406, N'Sistema de control de servidores ', N'1', N'700', N'24', N'30', N'504', NULL, N'E6', N'Edf6SERV', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1407, N'Luminaria fluorescente 2x15W', N'3', N'30', N'2', N'10', N'1.8', NULL, N'E6', N'Edf6SERV', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1408, N'Aire acondicionado Comfortstar', N'1', N'3000', N'24', N'30', N'2160', NULL, N'E6', N'Edf6SERV', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1409, N'Aire acondicionado innovair vortex', N'1', N'3000', N'24', N'30', N'2160', NULL, N'E6', N'Edf6SERV', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1410, N'Computadora Lenovo de escritorio ', N'25', N'150', N'2', N'15', N'112.5', NULL, N'E6', N'Edf6S9', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1411, N'Computadora HP de escritorio ', N'1', N'150', N'2', N'15', N'4.5', NULL, N'E6', N'Edf6S9', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1412, N'Televisor LG', N'1', N'100', N'2', N'15', N'3', NULL, N'E6', N'Edf6S9', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1413, N'Luminaria fluorescente 4x32W', N'4', N'128', N'2', N'15', N'15.36', NULL, N'E6', N'Edf6S9', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1414, N'Aire acondicionado Lennox ', N'1', N'3000', N'2', N'15', N'90', NULL, N'E6', N'Edf6S9', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1415, N'Computadora Lenovo de escritorio ', N'25', N'150', N'2', N'15', N'112.5', NULL, N'E6', N'Edf6S8', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1416, N'Computadora HP de escritorio ', N'1', N'150', N'2', N'15', N'4.5', NULL, N'E6', N'Edf6S8', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1417, N'Televisor LG', N'1', N'100', N'2', N'15', N'3', NULL, N'E6', N'Edf6S8', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1418, N'Luminaria fluorescente 4x32W', N'4', N'128', N'2', N'15', N'15.36', NULL, N'E6', N'Edf6S8', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1419, N'Aire acondicionado Lennox ', N'1', N'3000', N'2', N'15', N'90', NULL, N'E6', N'Edf6S8', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1420, N'Computadora Lenovo de escritorio ', N'25', N'150', N'2', N'15', N'112.5', NULL, N'E6', N'Edf6S7', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1421, N'Computadora HP de escritorio ', N'1', N'150', N'2', N'15', N'4.5', NULL, N'E6', N'Edf6S7', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1422, N'Televisor LG', N'1', N'100', N'2', N'15', N'3', NULL, N'E6', N'Edf6S7', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1423, N'Luminaria fluorescente 4x32W', N'4', N'128', N'2', N'15', N'15.36', NULL, N'E6', N'Edf6S7', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1424, N'Aire acondicionado Lennox ', N'1', N'3000', N'2', N'15', N'90', NULL, N'E6', N'Edf6S7', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1425, N'UPS APC Symmetra ', N'1', N'3500', N'24', N'30', N'2520', NULL, N'E6', N'Edf6SERV', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1426, N'Computadora HP de escritorio ', N'31', N'125', N'2', N'15', N'116.25', NULL, N'E6', N'Edf6S10', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1427, N'Luminaria fluorescente 4x32W', N'6', N'128', N'2', N'15', N'23.04', NULL, N'E6', N'Edf6S10', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1428, N'Televisor SONY', N'1', N'100', N'2', N'15', N'3', NULL, N'E6', N'Edf6S10', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1429, N'Aire acondicionado (no tiene marca)', N'1', N'3000', N'2', N'15', N'90', NULL, N'E6', N'Edf6S10', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1430, N'Luminaria fluorescente 2x32W', N'4', N'64', N'2', N'10', N'5.12', NULL, N'E6', N'Edf6S11', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1431, N'Switch quest ', N'2', N'80', N'24', N'30', N'115.2', NULL, N'E6', N'Edf6S11', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1432, N'Laptop HP probook ', N'6', N'50', N'2', N'10', N'6', NULL, N'E6', N'Edf6S12', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1433, N'Luminaria fluorescente 2x15W', N'4', N'30', N'2', N'10', N'2.4', NULL, N'E6', N'Edf6S12', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1434, N'Proyector EPSON ', N'1', N'500', N'1', N'5', N'2.5', NULL, N'E6', N'Edf6S12', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1435, N'Switch fortinet ', N'1', N'60', N'24', N'30', N'43.2', NULL, N'E6', N'Edf6S12', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1436, N'Luminaria fluorescente 3x32W', N'2', N'96', N'2', N'10', N'3.84', NULL, N'E6', N'Edif6S13', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1437, N'Luminaria fluorescente empotrada 15W', N'1', N'15', N'2', N'10', N'0.3', NULL, N'E6', N'Edif6S13', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1438, N'Horno microondas  Westinghouse', N'1', N'1500', N'0.5', N'4', N'3', NULL, N'E6', N'Edif6S13', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1439, N'Cafetera Force ', N'1', N'800', N'0.5', N'2', N'0.8', NULL, N'E6', N'Edif6S13', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1440, N'Horno tostador black & decker ', N'1', N'700', N'0.5', N'4', N'1.4', NULL, N'E6', N'Edif6S13', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1441, N'Luminaria fluorescente 2x15W', N'4', N'30', N'4', N'15', N'7.2', NULL, N'E6', N'Edf6SE', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1442, N'Oasis FRIGERADE ', N'1', N'500', N'4', N'10', N'20', NULL, N'E6', N'Edf6REC', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1443, N'Luminaria fluorescente 4x32W', N'4', N'128', N'4', N'10', N'20.48', NULL, N'E6', N'Edf6REC', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1444, N'Computadora HP de escritorio ', N'2', N'125', N'4', N'22', N'22', NULL, N'E6', N'Edf6REC', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1445, N'Impresora HP LaserJet ', N'1', N'200', N'1', N'10', N'2', NULL, N'E6', N'Edf6REC', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1446, N'Luminaria fluorescente 2x15W', N'4', N'30', N'2', N'15', N'3.6', NULL, N'E6', N'Edf6PAS2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1447, N'Luminaria fluorescente 2x10W', N'3', N'20', N'2', N'15', N'1.8', NULL, N'E6', N'Edf6PAS2B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1448, N'Luminaria fluorescente 4x32W', N'2', N'128', N'2', N'10', N'5.12', NULL, N'E6', N'Edf6SM', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1449, N'Computadora de escritorio Lenovo ', N'20', N'150', N'2', N'10', N'60', NULL, N'E6', N'Edf6', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1450, N'Televisor SONY ', N'1', N'100', N'2', N'10', N'2', NULL, N'E6', N'Edf6', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1451, N'Switch fortinet ', N'1', N'100', N'24', N'30', N'72', NULL, N'E6', N'Edf6', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1452, N'Aire acondicionado Lennox ', N'1', N'3000', N'2', N'10', N'60', NULL, N'E6', N'Edf6', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1453, N'Sanitizador de entrada ', N'2', N'200', N'4', N'15', N'24', NULL, N'E6', N'Edf6', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1454, N'Luminaria fluorescente 4x32W', N'4', N'128', N'6', N'24', N'73.728', NULL, N'E6', N'Edf6Ofc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1455, N'Computadora de escritorio ', N'5', N'150', N'5', N'15', N'56.25', NULL, N'E6', N'Edf6Ofc', N'EOfic')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1456, N'Oasis Alpina', N'1', N'500', N'2', N'15', N'15', NULL, N'E6', N'Edf6Ofc', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1457, N'Impresora HP LaserJet 1020', N'1', N'150', N'1', N'10', N'1.5', NULL, N'E6', N'Edf6Ofc', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1458, N'Banco de trabajo hidraulico ', N'6', N'7000', N'4', N'10', N'1680', NULL, N'E6', N'Edf6Hid', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1459, N'Luminaria fuorescente 4x32', N'6', N'128', N'4', N'10', N'30.72', NULL, N'E6', N'Edf6Hid', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1460, N'Banco de trabajo neumatico  ', N'6', N'3000', N'4', N'10', N'720', NULL, N'E6', N'Edf6Neu ', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1461, N'Luminaria fuorescente 4x32', N'4', N'128', N'4', N'10', N'20.48', NULL, N'E6', N'Edf6Neu ', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1462, N'Luminaria fuorescente 4x32', N'2', N'128', N'2', N'10', N'5.12', NULL, N'E6', N'Edf6PNH', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1463, N'Elevador para personas con dificultad de movilidad ', N'1', N'9000', N'0.5', N'5', N'22.5', NULL, N'E6', N'Edf6Lob', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1464, N'Luminaria fluorescente 4x32', N'4', N'128', N'4', N'15', N'30.72', NULL, N'E6', N'Edf6Lobb', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1465, N'CNC Optimill F3', N'2', N'1500', N'2', N'10', N'60', NULL, N'E6', N'LabManEdif', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1466, N'Blowpet machine', N'1', N'18000', N'2', N'10', N'360', NULL, N'E6', N'LabManEdif', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1467, N'Torno magnum', N'1', N'1900', N'1', N'10', N'19', NULL, N'E6', N'LabManEdif', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1468, N'Taladro bimak', N'1', N'500', N'0.5', N'5', N'1.25', NULL, N'E6', N'LabManEdif', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1469, N'Esmeril de pedestal', N'1', N'1500', N'2', N'15', N'45', NULL, N'E6', N'LabManEdif', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1470, N'Luminaria fluorescente 4x32W', N'16', N'128', N'4', N'15', N'122.88', NULL, N'E6', N'LabManEdif', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1471, N'Piston hidrahulico computer contol electro-hydraulic servo  universal testing Machine', N'1', N'4000', N'10', N'15', N'600', NULL, N'E6', N'LABENSMAT', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1472, N'Horno electrico para calentamiento de pieza HERAEUS', N'1', N'5000', N'20', N'15', N'1500', NULL, N'E6', N'LABENSMAT', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1473, N'Freno magnético METRO COM', N'1', N'100', N'0.5', N'1', N'0.05', NULL, N'E6', N'LABENSMAT', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1474, N'Maquina para ensayo de materiales', N'1', N'100', N'0.5', N'1', N'0.05', NULL, N'E6', N'LABENSMAT', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1475, N'Computadora todo en uno Lenov0', N'1', N'150', N'2', N'15', N'4.5', NULL, N'E6', N'LABENSMAT', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1476, N'Luminaria fluorescente 4x32W', N'6', N'128', N'20', N'15', N'230.4', NULL, N'E6', N'LABENSMAT', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1477, N'Impresora 3D SeeMeCNC', N'1', N'100', N'20', N'15', N'30', NULL, N'E6', N'LABPROT', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1478, N'Impresora 3D uPrint se plus', N'1', N'1200', N'20', N'15', N'360', NULL, N'E6', N'LABPROT', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1479, N'Support cleaning apparatus', N'1', N'1000', N'1', N'4', N'4', NULL, N'E6', N'LABPROT', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1480, N'UPS CENTRA OLE', N'1', N'500', N'24', N'30', N'360', NULL, N'E6', N'LABPROT', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1481, N'Computadora de escritorio FUJITSU', N'1', N'150', N'20', N'15', N'45', NULL, N'E6', N'LABPROT', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1482, N'Computadora de escritorio DELL', N'1', N'150', N'2', N'5', N'1.5', NULL, N'E6', N'LABPROT', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1483, N'Televisor TCL', N'2', N'100', N'2', N'10', N'4', NULL, N'E6', N'LABPROT', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1484, N'Computadora de escritorio ', N'12', N'150', N'4', N'10', N'72', NULL, N'E6', N'LabManEdif', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1485, N'Router Switch NetGear ', N'1', N'30', N'24', N'30', N'21.6', NULL, N'E6', N'LabManEdif', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1486, N'Luminaria fluorescente 4x32W', N'4', N'128', N'4', N'10', N'20.48', NULL, N'E6', N'LABPROT', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1487, N'Freno megnetico METRO COM', N'1', N'100', N'0.5', N'1', N'0.05', NULL, N'E6', N'LABENSMAT', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1488, N'Pendulo de impacto ', N'1', N'50', N'2', N'8', N'0.8', NULL, N'E5', N'Edif5EFP', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1489, N'Compresor de aire AIRMEC', N'1', N'1500', N'2', N'8', N'24', NULL, N'E5', N'Edif5EFP', N'ACompr')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1490, N'Pendulo de rasgado ProTear', N'1', N'50', N'2', N'4', N'0.4', NULL, N'E5', N'Edif5EFP', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1491, N'Equipo medicion de indice de fluidez', N'1', N'100', N'2', N'4', N'0.8', NULL, N'E5', N'Edif5EFP', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1492, N'Equipo de analisis de temperatura de reblandecimiento ', N'1', N'1100', N'2', N'4', N'8.8', NULL, N'E5', N'Edif5EFP', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1493, N'Luminaria fluorescente 4x32', N'4', N'128', N'2', N'8', N'8.192', NULL, N'E5', N'Edif5EFP', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1494, N'Horno marca BOEKEL ', N'1', N'660', N'2', N'1', N'1.32', NULL, N'E5', N'Edf5TyM', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1495, N'Congelador MAYTAG', N'1', N'2000', N'24', N'22', N'1056', NULL, N'E5', N'Edf5TyM', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1496, N'Precision power analyzer KinetiQ', N'1', N'30', N'2', N'8', N'0.48', NULL, N'E5', N'Edf5TyM', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1497, N'Super-thermometer HART Scientific ', N'1', N'60', N'2', N'8', N'0.96', NULL, N'E5', N'Edf5TyM', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1498, N'Multimeter 3458A HIP', N'1', N'80', N'2', N'8', N'1.28', NULL, N'E5', N'Edf5TyM', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1499, N'Luminaria fluorescente 4x32', N'9', N'128', N'2', N'8', N'18.432', NULL, N'E5', N'Edf5TyM', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1500, N'Luminaria fluorescente 4x32', N'6', N'128', N'2', N'8', N'12.288', NULL, N'E5', N'Edif5Pres', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1501, N'Computadora de escritorio', N'1', N'150', N'2', N'8', N'2.4', NULL, N'E5', N'Edif5Pres', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1502, N'Bascula de piso metler toledo ', N'1', N'10', N'2', N'8', N'0.16', NULL, N'E5', N'Edif5Vol', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1503, N'Bascula CAMRY', N'1', N'10', N'2', N'8', N'0.16', NULL, N'E5', N'Edif5Vol', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1504, N'Bascula  metler toledo ', N'1', N'10', N'2', N'8', N'0.16', NULL, N'E5', N'Edif5Vol', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1505, N'Horno de secado BRANSON ', N'1', N'520', N'2', N'8', N'8.32', NULL, N'E5', N'Edif5Vol', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1506, N'Horno de secado GFL', N'1', N'520', N'2', N'8', N'8.32', NULL, N'E5', N'Edif5Vol', N'EProcFab')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1507, N'Water purification system ozon-o-matic', N'1', N'10', N'2', N'8', N'0.16', NULL, N'E5', N'Edif5Vol', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1508, N'Luminaria fluorescente 4x32W', N'6', N'128', N'2', N'8', N'12.288', NULL, N'E5', N'Edif5Vol', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1509, N'Computadora de escritorio', N'1', N'150', N'2', N'8', N'2.4', NULL, N'E5', N'Edif5ML', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1510, N'Comparador de bloques MITUTOYO', N'1', N'100', N'2', N'8', N'1.6', NULL, N'E5', N'Edif5ML', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1511, N'Computadora industrial advantech ', N'1', N'200', N'1', N'4', N'0.8', NULL, N'E5', N'Edif5ML', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1512, N'Microscopio de prescision MEIJI ', N'1', N'10', N'1', N'4', N'0.04', NULL, N'E5', N'Edif5ML', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1513, N'Televisor SONY trinitron  ', N'1', N'100', N'1', N'4', N'0.4', NULL, N'E5', N'Edif5ML', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1514, N'Swtich fortinet ', N'1', N'80', N'24', N'30', N'57.6', NULL, N'E5', N'Edif5ML', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1515, N'Multimeter 3458A HIP', N'1', N'80', N'2', N'4', N'0.64', NULL, N'E5', N'Edif5ML', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1516, N'Calibrator FLUKE 5520A', N'1', N'500', N'2', N'4', N'4', NULL, N'E5', N'Edif5ML', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1517, N'Impresora HP Deskjet F4480', N'1', N'500', N'1', N'4', N'2', NULL, N'E5', N'Edif5ML', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1518, N'Proyector EPSON ', N'1', N'500', N'1', N'4', N'2', NULL, N'E5', N'Edif5ML', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1519, N'Deshumidifiacdor ', N'1', N'100', N'4', N'12', N'4.8', NULL, N'E5', N'Edif5ML', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1520, N'Baño termico HART SCIENTIFIC ', N'1', N'1000', N'4', N'12', N'48', NULL, N'E5', N'Edif5ML', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1521, N'Luminaria fluorescente 4x32W', N'8', N'128', N'6', N'22', N'135.168', NULL, N'E5', N'Edif5ML', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1522, N'Luminaria fluorescente 4x32W', N'7', N'128', N'4', N'4', N'14.336', NULL, N'E5', N'Edif5MYB', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1523, N'Deshumidifiacdor DeLonghi ARIADRY', N'1', N'100', N'2', N'4', N'0.8', NULL, N'E5', N'Edif5MYB', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1524, N'Bascula metler toledo ', N'1', N'10', N'2', N'4', N'0.08', NULL, N'E5', N'Edif5MYB', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1525, N'Balanza analitica  ', N'2', N'30', N'2', N'4', N'0.48', NULL, N'E5', N'Edif5MYB', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1526, N'Comparador de masas de 100g a 1Kg ', N'1', N'30', N'2', N'4', N'0.24', NULL, N'E5', N'Edif5MYB', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1527, N'Comparador de masas de 1Kg a 10kg ', N'1', N'30', N'2', N'4', N'0.24', NULL, N'E5', N'Edif5MYB', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1528, N'Luminaria fluorescente 4x32W', N'8', N'128', N'2', N'10', N'20.48', NULL, N'E5', N'Edif5Cor', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1529, N'Computadora de escritorio ', N'1', N'150', N'4', N'22', N'13.2', NULL, N'E5', N'Edif5Recp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1530, N'Impresora HP OfficeJet Pro 6970 ', N'1', N'500', N'2', N'12', N'12', NULL, N'E5', N'Edif5Recp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1531, N'Impresora HP LaserJet Pro M102W', N'1', N'500', N'2', N'12', N'12', NULL, N'E5', N'Edif5Recp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1532, N'Luminaria fluorescente 4x32W', N'3.5', N'128', N'8', N'22', N'78.848', NULL, N'E5', N'Edif5Recp', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1533, N'Computadora de escritorio ', N'1', N'150', N'4', N'12', N'7.2', NULL, N'E5', N'Edif5Ofci', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1534, N'Luminaria fluorescente 4x32W', N'1', N'128', N'8', N'22', N'22.528', NULL, N'E5', N'Edif5Ofci', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1535, N'Oasis Alpina ', N'1', N'300', N'8', N'4', N'9.6', NULL, N'E5', N'Edif5RecpC', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1536, N'Luminaria flourescente 4x32W', N'2', N'128', N'8', N'22', N'45.056', NULL, N'E5', N'Edif5RecpC', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1537, N'Horno microndas Panasonic ', N'1', N'800', N'1', N'4', N'3.2', NULL, N'E5', N'Edif5RecpC', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1538, N'Refrigerador MABE ', N'1', N'70', N'24', N'30', N'50.4', NULL, N'E5', N'Edif5RecpC', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1539, N'Horno tostador durabrand ', N'1', N'1000', N'0.5', N'1', N'0.5', NULL, N'E5', N'Edif5Recp', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1540, N'Luminaria fluorescente 4x32W', N'1', N'128', N'8', N'22', N'22.528', NULL, N'E5', N'Edif5SR', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1541, N'Cafetera Oster ', N'1', N'800', N'0.5', N'2', N'0.8', NULL, N'E5', N'Edif5SR', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1542, N'Router D-link', N'1', N'50', N'24', N'30', N'36', NULL, N'E5', N'Edif5SR', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1543, N'Luminaria flourescente 4x32W', N'8', N'128', N'6', N'22', N'135.168', NULL, N'E5', N'Edif5PE', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1544, N'Oasis GE', N'1', N'300', N'8', N'4', N'9.6', NULL, N'E5', N'Edif5PE', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1545, N'Cafetera Oster ', N'1', N'800', N'0.5', N'2', N'0.8', NULL, N'E5', N'Edif5PE', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1546, N'Horno microndas Hamiltonbeach ', N'1', N'800', N'1', N'4', N'3.2', NULL, N'E5', N'Edif5PE', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1547, N'Proyector EPSON ', N'1', N'500', N'1', N'5', N'2.5', NULL, N'E5', N'Edif5PE', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1548, N'Computadora para oficina ', N'7', N'150', N'6', N'22', N'138.6', NULL, N'E5', N'Edif5PE', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1549, N'Horno  tostador Hamiltonbeach ', N'1', N'800', N'1', N'4', N'3.2', NULL, N'E5', N'Edif5PE', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1550, N'Luminaria fluorescente empotrada en cielo falso ', N'1', N'15', N'2', N'10', N'0.3', NULL, N'E5', N'Edif5PE', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1551, N'Impresora HP OfficeJet Pro 6970 ', N'1', N'500', N'2', N'12', N'12', NULL, N'E5', N'Edif5PE', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1552, N'Impresora HP LaserJet P1102W', N'1', N'200', N'2', N'12', N'4.8', NULL, N'E5', N'Edif5PE', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1553, N'Aire acondicionado Lennox ', N'1', N'3000', N'6', N'22', N'396', NULL, N'E5', N'Edif5PE', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1554, N'Luminaria fluorescete 4x32W', N'8', N'128', N'4', N'10', N'40.96', NULL, N'E5', N'Edf5SM', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1555, N'Proyector NEC', N'2', N'100', N'1', N'10', N'2', NULL, N'E5', N'Edf5SM', N'EOfic')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1556, N'Aire acondicionado Lennox ', N'2', N'3000', N'4', N'10', N'240', NULL, N'E5', N'Edf5SM', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1557, N'Luminaria fluorescete 4x32W', N'3', N'128', N'4', N'10', N'15.36', NULL, N'E5', N'Edif5CA', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1558, N'Luminaria fluorescete 4x32W', N'2', N'128', N'2', N'5', N'2.56', NULL, N'E5', N'Edif5SC', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1559, N'Computadora Ultrabook ', N'22', N'40', N'2', N'5', N'8.8', NULL, N'E5', N'Edif5SC', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1560, N'Luminaria fluorescete 4x32W', N'2', N'128', N'2', N'5', N'2.56', NULL, N'E5', N'Edif5SC5', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1561, N'Luminaria fluorescete 4x32W', N'3', N'128', N'2', N'5', N'3.84', NULL, N'E5', N'Edif5pasCm', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1562, N'luminaria fluorecente 4x32W', N'4', N'128', N'8', N'22', N'90.112', NULL, N'E5', N'E5N2 OFP', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1563, N'computadoras de escritorio', N'2', N'150', N'8', N'22', N'52.8', NULL, N'E5', N'E5N2 OFP', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1564, N'Impresora HP laserjet P1102w', N'2', N'500', N'1', N'5', N'5', NULL, N'E5', N'E5N2 OFP', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1565, N'luminaria fluerocente 4x32', N'3', N'128', N'4', N'22', N'33.792', NULL, N'E5', N'E5N2LoCap', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1566, N'Oasis Oster', N'1', N'300', N'8', N'4', N'9.6', NULL, N'E5', N'E5N2LoCap', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1567, N'Aire acondicionado innovar', N'1', N'2000', N'4', N'22', N'176', NULL, N'E5', N'E5N2 OFP', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1568, N'luminaria fluorecente 4x32W', N'4', N'128', N'4', N'12', N'24.576', NULL, N'E5', N'E5N2Sal1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1569, N'Aire acondicionado innovar', N'1', N'2000', N'4', N'12', N'96', NULL, N'E5', N'E5N2Sal1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1570, N'luminaria fluorecente 4x32W', N'4', N'128', N'4', N'12', N'24.576', NULL, N'E5', N'E5N2Salcap', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1571, N'Aire acondicionado Innovar', N'1', N'2000', N'4', N'12', N'96', NULL, N'E5', N'E5N2Salcap', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1572, N'luminaria fluorecente  4x32W', N'6', N'128', N'4', N'12', N'36.864', NULL, N'E5', N'E5N2 CapB', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1573, N'Ventilador de techo', N'2', N'120', N'4', N'12', N'11.52', NULL, N'E5', N'E5N2 CapB', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1574, N'ventiladores de pedestal', N'2', N'60', N'4', N'12', N'5.76', NULL, N'E5', N'E5N2 CapB', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1575, N'luminaria fluorecente 4x32W', N'7', N'128', N'8', N'22', N'157.696', NULL, N'E5', N'E5N2 OfSop', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1576, N'Computadoras de escritorio', N'10', N'150', N'8', N'22', N'264', NULL, N'E5', N'E5N2 OfSop', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1577, N'impresora HP Pro p1106', N'3', N'400', N'0.5', N'5', N'3', NULL, N'E5', N'E5N2 OfSop', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1578, N'Cafetera MasterTech', N'1', N'1000', N'1', N'22', N'22', NULL, N'E5', N'E5N2 OfSop', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1579, N'Refrigerador Mabe', N'1', N'70', N'24', N'30', N'50.4', NULL, N'E5', N'E5N2 OfSop', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1580, N'Horno microondas GeneralElectric', N'1', N'1000', N'1', N'5', N'5', NULL, N'E5', N'E5N2 OfSop', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1581, N'luminaria fluorecente 2x32W', N'1', N'64', N'4', N'22', N'5.632', NULL, N'E5', N'E5N2 OfSop', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1582, N'Aire Acondicionado TEMPStar', N'1', N'2000', N'8', N'22', N'352', NULL, N'E5', N'E5N2 OfSop', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1583, N'Computadora de escritorio', N'18', N'150', N'8', N'22', N'475.2', NULL, N'E5', N'E5N2 SoPte', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1584, N'Aire acondicionado Comfort Star', N'1', N'4000', N'8', N'22', N'704', NULL, N'E5', N'E5N2 SoPte', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1585, N'Switch fortinet ', N'1', N'200', N'24', N'30', N'144', NULL, N'E5', N'E5N2 SoPte', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1586, N'Cafetera Oster', N'1', N'800', N'1', N'22', N'17.6', NULL, N'E5', N'E5N2 SoPte', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1587, N'Oasis de oficina', N'1', N'300', N'8', N'22', N'52.8', NULL, N'E5', N'E5N2 SoPte', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1588, N'refrigerador MasterTech', N'1', N'70', N'24', N'30', N'50.4', NULL, N'E5', N'E5N2 SoPte', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1589, N'Horno microondas panasonic', N'1', N'800', N'1', N'20', N'16', NULL, N'E5', N'E5N2 SoPte', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1590, N'Tostador Black&Decker', N'1', N'1000', N'1', N'20', N'20', NULL, N'E5', N'E5N2 SoPte', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1591, N'luminaria fluorecente 2x32W', N'13', N'64', N'8', N'22', N'146.432', NULL, N'E4', N'E4N2 DirEm', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1592, N'luminaria fluorecente 4x32W', N'4', N'128', N'8', N'22', N'90.112', NULL, N'E4', N'Lableed', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1593, N'luminaria fluorecente dde 100W', N'2', N'100', N'1', N'4', N'0.8', NULL, N'E4', N'E4N2 DirEm', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1594, N'Cafetera Oster', N'1', N'800', N'1', N'20', N'16', NULL, N'E4', N'E4N2 DirEm', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1595, N'Horno microondas Oster', N'1', N'800', N'1', N'20', N'16', NULL, N'E4', N'E4N2 DirEm', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1596, N'Oasis Figidaire', N'1', N'300', N'8', N'20', N'48', NULL, N'E4', N'E4N2 DirEm', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1597, N'computadora de escritorio', N'2', N'150', N'8', N'22', N'52.8', NULL, N'E4', N'E4N2 DirEm', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1598, N'Impresora Epson', N'1', N'400', N'1', N'15', N'6', NULL, N'E4', N'E4N2 DirEm', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1599, N'Aire acondicionado ', N'10', N'3000', N'5', N'12', N'1800', NULL, N'E4', N'E4N2 DirEm', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1600, N'switch Fortinet', N'1', N'60', N'24', N'30', N'43.2', NULL, N'E4', N'E4N2 DirEm', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1601, N'Tostador Black&Decker', N'1', N'1000', N'0.5', N'1', N'0.5', NULL, N'E4', N'E4N2 DirEm', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (1602, N'Refrigeradora MasterTech', N'1', N'70', N'24', N'30', N'50.4', NULL, N'E4', N'E4N2 DirEm', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31053, N'Luniaria fluorescente 4x32W', N'8', N'128', N'8', N'20', N'163.84', NULL, N'ER', N'EdifRVyD', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31054, N'Luminaria empotrada en techo 15W', N'2', N'15', N'8', N'20', N'4.8', NULL, N'ER', N'EdifRVyD', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31055, N'Cafetera Westbend', N'1', N'1000', N'4', N'20', N'80', NULL, N'ER', N'EdifRVyD', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31056, N'Horno microondas SHARP', N'1', N'700', N'0.5', N'15', N'5.25', NULL, N'ER', N'EdifRVyD', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31057, N'Oasis General Electric ', N'1', N'500', N'8', N'20', N'80', NULL, N'ER', N'EdifRVyD', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31058, N'Computadora de escritorio ', N'1', N'150', N'8', N'20', N'24', NULL, N'ER', N'EdifRVyD', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31059, N'Impresora HP DeskJet Ink Advantage 1115', N'1', N'100', N'0.5', N'10', N'0.5', NULL, N'ER', N'EdifRVyD', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31060, N'Impresora HP LaserJet P1005', N'1', N'100', N'0.5', N'10', N'0.5', NULL, N'ER', N'EdifRVyD', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31061, N'Escaner HP 5590', N'1', N'100', N'0.5', N'10', N'0.5', NULL, N'ER', N'EdifRVyD', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31062, N'Luminaria fluorescente 4x32W', N'1', N'128', N'8', N'20', N'20.48', NULL, N'ER', N'EdifRET', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31063, N'Computadora de escritorio ', N'1', N'150', N'2', N'10', N'3', NULL, N'ER', N'EdifRET', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31064, N'Luminaria fluorescente 4x32W', N'1', N'128', N'8', N'20', N'20.48', NULL, N'ER', N'EdifRDecE', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31065, N'Computadora de escritorio ', N'1', N'150', N'8', N'20', N'24', NULL, N'ER', N'EdifRDecE', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31066, N'Luminaria fluorescente 4x32W', N'2', N'128', N'2', N'20', N'10.24', NULL, N'ER', N'EdifRDecH', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31067, N'Computadora de escritorio ', N'1', N'150', N'2', N'20', N'6', NULL, N'ER', N'EdifRDecH', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31068, N'Luminaria fluorescente 4x32W', N'2', N'128', N'8', N'20', N'40.96', NULL, N'ER', N'EdifRVRA', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31069, N'Computadora de escritorio ', N'1', N'150', N'8', N'20', N'24', NULL, N'ER', N'EdifRVRA', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31070, N'Aire acondicionado Lennox', N'1', N'3000', N'8', N'20', N'480', NULL, N'ER', N'EdifRVRA', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31071, N'Luminaria fluorescente 4x32W', N'4', N'128', N'8', N'20', N'81.92', NULL, N'ER', N'EdifRRecep', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31072, N'Computadora de escritorio ', N'1', N'150', N'8', N'20', N'24', NULL, N'ER', N'EdifRRecep', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31073, N'Impresora HP LaserJet P1102w', N'1', N'100', N'1', N'20', N'2', NULL, N'ER', N'EdifRRecep', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31074, N'Impresora HP LaserJet P1006', N'1', N'100', N'1', N'20', N'2', NULL, N'ER', N'EdifRRecep', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31075, N'Escaner Canon LIDE220', N'1', N'100', N'1', N'20', N'2', NULL, N'ER', N'EdifRRecep', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31076, N'Luminaria fluorescente 4x32W', N'3', N'128', N'4', N'20', N'30.72', NULL, N'ER', N'EdifRDecIN', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31077, N'Computadora de escritorio ', N'1', N'150', N'4', N'20', N'12', NULL, N'ER', N'EdifRDecIN', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31078, N'Luminaria fluorescente 4x32W', N'2', N'128', N'4', N'20', N'20.48', NULL, N'ER', N'EdifRDecAe', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31079, N'Computadora de escritorio ', N'1', N'150', N'4', N'20', N'12', NULL, N'ER', N'EdifRDecAe', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31080, N'Luminaria fluorescente de 3x32', N'9', N'96', N'8', N'22', N'152.064', NULL, N'ER', N'EdifRAF', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31081, N'Computadoras de escritorio', N'12', N'150', N'8', N'22', N'316.8', NULL, N'ER', N'EdifRAF', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31082, N'Impresora HP laserjet Pro203w', N'1', N'400', N'2', N'15', N'12', NULL, N'ER', N'EdifRAF', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31083, N'Impresora con escaner Cannon', N'3', N'200', N'2', N'15', N'18', NULL, N'ER', N'EdifRAF', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31084, N'Impresora HP con escaner', N'1', N'200', N'4', N'20', N'16', NULL, N'ER', N'EdifRAF', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31085, N'Impresora xerox workcenter 5325', N'1', N'500', N'0.3', N'4', N'0.6', NULL, N'ER', N'EdifRAF', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31086, N'Ventilador de pedestal Kawaki', N'3', N'60', N'8', N'20', N'28.8', NULL, N'ER', N'EdifRAF', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31087, N'Luminaria Fluorescente 4x32', N'1', N'128', N'8', N'22', N'22.528', NULL, N'ER', N'EdifRRecp', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31088, N'Computadora de escritorio', N'1', N'150', N'8', N'22', N'26.4', NULL, N'ER', N'EdifRRecp', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31089, N'Luminaria Fluorescente 4x32', N'6', N'128', N'8', N'22', N'135.168', NULL, N'ER', N'EdifRRecHu', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31090, N'Oasis Novatek', N'1', N'500', N'8', N'22', N'88', NULL, N'ER', N'EdifRAF', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31091, N'Horno microondas LG', N'1', N'700', N'0.3', N'10', N'2.1', NULL, N'ER', N'EdifRAF', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31092, N'Cafetera Oster', N'1', N'1000', N'2', N'20', N'40', NULL, N'ER', N'EdifRAF', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31093, N'Computadora de escritorio', N'6', N'150', N'8', N'22', N'158.4', NULL, N'ER', N'EdifRRecHu', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31094, N'Impresora xerox workcenter Versalink B405', N'1', N'500', N'1', N'15', N'7.5', NULL, N'ER', N'EdifRRecHu', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31095, N'Horno Microondas General Electric', N'1', N'700', N'0.5', N'20', N'7', NULL, N'ER', N'EdifRRecHu', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31096, N'Impresora con escaner HP', N'1', N'400', N'1', N'5', N'2', NULL, N'ER', N'EdifRRecHu', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31097, N'Computadora de escritorio', N'4', N'150', N'8', N'22', N'105.6', NULL, N'ER', N'EdifRColec', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31098, N'Impresora HP', N'4', N'200', N'6', N'22', N'105.6', NULL, N'ER', N'EdifRColec', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31099, N'Aire acondicionado Innovar', N'1', N'2000', N'8', N'22', N'352', NULL, N'ER', N'EdifRColec', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31100, N'Luminaria fluorescente4 x32', N'2', N'128', N'8', N'22', N'45.056', NULL, N'ER', N'EdifRColec', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31101, N'Luminaria Fluorescente 2x16', N'8', N'32', N'8', N'22', N'45.056', NULL, N'ER', N'EdifRRecyS', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31102, N'luminaria Fluorescente de 4x32', N'3', N'128', N'8', N'22', N'67.584', NULL, N'ER', N'EdifRSecG', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31103, N'Computadora de escritorio', N'2', N'150', N'8', N'22', N'52.8', NULL, N'ER', N'EdifRSecG', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31104, N'Aire acondicionado Comfortstar', N'1', N'1000', N'2', N'15', N'30', NULL, N'ER', N'EdifRSecG', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31105, N'Aire Acondicionado York', N'1', N'1000', N'2', N'15', N'30', NULL, N'ER', N'EdifRSecG', N'Acondic')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31106, N'Impresora HP laserjet', N'1', N'200', N'1', N'15', N'3', NULL, N'ER', N'EdifRSecG', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31107, N'Luminaria fluorescente 4x32', N'2', N'128', N'8', N'20', N'40.96', NULL, N'ER', N'EdifRrct', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31108, N'Luminaria Fluorescente de 2x16', N'2', N'32', N'8', N'20', N'10.24', NULL, N'ER', N'EdifRrct', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31109, N'Computadoras de escritorio', N'2', N'150', N'8', N'20', N'48', NULL, N'ER', N'EdifRrct', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31110, N'Aire acondicionado Comfortstar', N'1', N'1000', N'2', N'15', N'30', NULL, N'ER', N'EdifRrct', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31111, N'Aire Acondicionado Ecox', N'1', N'1000', N'2', N'15', N'30', NULL, N'ER', N'EdifRrct', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31112, N'Impresora con escaner  Hp', N'1', N'400', N'1', N'5', N'2', NULL, N'ER', N'EdifRrct', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31113, N'Luminaria Fluorescente 2x16', N'1', N'32', N'8', N'20', N'5.12', NULL, N'ER', N'EdifRplan', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31114, N'Computadora de escritorio', N'1', N'150', N'8', N'20', N'24', NULL, N'ER', N'EdifRplan', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31115, N'Aire acondicionado comfortstar', N'1', N'1000', N'2', N'15', N'30', NULL, N'ER', N'EdifRplan', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31116, N'Luminaria LED empotrada en techo', N'1', N'20', N'8', N'20', N'3.2', NULL, N'ER', N'EdifRsalco', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31117, N'Ventilador de Techo', N'1', N'60', N'8', N'20', N'9.6', NULL, N'ER', N'EdifRsalco', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31118, N'Cafetera WestBend', N'1', N'1000', N'4', N'20', N'80', NULL, N'ER', N'EdifRplan', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31119, N'Cafetera Black&Decker', N'1', N'800', N'1', N'5', N'4', NULL, N'ER', N'EdifRsalco', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31120, N'Refrigerador General Electric', N'1', N'1200', N'8', N'30', N'288', NULL, N'ER', N'EdifRsalco', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31121, N'Horno Microondas panasonic ', N'1', N'700', N'0.5', N'15', N'5.25', NULL, N'ER', N'EdifRsalco', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31122, N'Tostadora Mabe', N'1', N'1000', N'0.5', N'5', N'2.5', NULL, N'ER', N'EdifRsalco', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31123, N'Luminaria Fluoresccente 2x16', N'1', N'32', N'8', N'20', N'5.12', NULL, N'ER', N'EdifRUnCum', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31124, N'Computadora de escritorio', N'1', N'150', N'8', N'20', N'24', NULL, N'ER', N'EdifRUnCum', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31125, N'Aire acondicionado ComfortStar', N'1', N'1000', N'4', N'20', N'80', NULL, N'ER', N'EdifRUnCum', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31126, N'Computadora de escritorio', N'1', N'150', N'8', N'20', N'24', NULL, N'ER', N'EdifRCompy', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31127, N'Luminaria Fluorescente 2x16', N'1', N'32', N'8', N'20', N'5.12', NULL, N'ER', N'EdifRCompy', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31128, N'Switch Fortinet ', N'1', N'100', N'24', N'30', N'72', NULL, N'ER', N'EdifRCompy', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31129, N'Aire Acondicionado Comfortstar', N'1', N'1000', N'4', N'20', N'80', NULL, N'ER', N'EdifRCompy', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31130, N'Luminaria Fluorescente de 2x16', N'1', N'32', N'2', N'10', N'0.64', NULL, N'ER', N'EdifRSalRe', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31131, N'Lumimnaria Fluorescente  2x16', N'1', N'32', N'2', N'10', N'0.64', NULL, N'ER', N'EdifRSaRe3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31132, N'Aire acondicionado Lennox', N'1', N'1000', N'2', N'10', N'20', NULL, N'ER', N'EdifRSalRe', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31133, N'Aire Acondicionado Lennox', N'1', N'1000', N'2', N'10', N'20', NULL, N'ER', N'EdifRSaRe3', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31134, N'Luminaria Fluorecente de 4x16', N'3', N'64', N'4', N'10', N'7.68', NULL, N'ER', N'EdifRSaRu1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31135, N'Proyector Epson', N'1', N'500', N'1', N'10', N'5', NULL, N'ER', N'EdifRSaRu1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31136, N'Aire Acondicionado ComfortSstar', N'1', N'1000', N'8', N'20', N'160', NULL, N'ER', N'EdifRCalAc', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31137, N'Luminaria Fluorescente 2x16', N'4', N'32', N'8', N'20', N'20.48', NULL, N'ER', N'EdifRCalAc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31138, N'Computadora de escritorio', N'4', N'150', N'8', N'20', N'96', NULL, N'ER', N'EdifRCalAc', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31139, N'Impresora EPSON', N'1', N'100', N'1', N'10', N'1', NULL, N'ER', N'EdifRCalAc', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31140, N'Aire Acondicionado Comfortstar', N'1', N'1000', N'8', N'20', N'160', NULL, N'ER', N'EdifROfi', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31141, N'Luminaria Fluorescente 2x16', N'2', N'32', N'8', N'20', N'10.24', NULL, N'ER', N'EdifROfi', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31142, N'Computadora de escritorio', N'1', N'150', N'8', N'20', N'24', NULL, N'ER', N'EdifROfi', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31143, N'Luminaria Fluorescente 4x32', N'32', N'128', N'4', N'15', N'245.76', NULL, N'MA', N'Magna A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31144, N'Aire Acondicionado  McQuary', N'4', N'7400', N'4', N'15', N'1776', NULL, N'MA', N'Magna A', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31145, N'Proyector  EPSON', N'1', N'500', N'2', N'10', N'10', NULL, N'MA', N'Magna A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31146, N'equipo de sonido con amplificador de potencia BEHRYNGER', N'1', N'50', N'4', N'15', N'3', NULL, N'MA', N'Magna A', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31147, N'Router  TP-Link', N'2', N'30', N'24', N'30', N'43.2', NULL, N'MA', N'Magna A', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31148, N'Luminaria Fluorescente 4x32', N'30', N'128', N'4', N'15', N'230.4', NULL, N'MB', N'MagnaB', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31149, N'AireAcondicionado Comfortstar', N'5', N'5000', N'4', N'15', N'1500', NULL, N'MB', N'MagnaB', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31150, N'Proyector EPSON', N'1', N'500', N'2', N'10', N'10', NULL, N'MB', N'MagnaB', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31151, N'Equipo de Sonido ZMSC', N'1', N'1600', N'4', N'15', N'96', NULL, N'MB', N'MagnaB', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31152, N'Router TP-link', N'2', N'30', N'24', N'30', N'43.2', NULL, N'MB', N'MagnaB', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31153, N'Luminaria FLuorescente 4x32', N'40', N'128', N'6', N'20', N'614.4', NULL, N'EP', N'EdifProf', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31154, N'Luminarias fluorescente empotradas en techo', N'16', N'8.5', N'0.3', N'2', N'0.0816', NULL, N'EP', N'EdifProf', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31155, N'Computadora de Escritorio', N'27', N'150', N'6', N'20', N'486', NULL, N'EP', N'EdifProf', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31156, N'Impresora de diversas marcas', N'5', N'250', N'0.5', N'1', N'0.625', NULL, N'EP', N'EdifProf', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31157, N'Cafetera WestBend', N'1', N'2000', N'4', N'15', N'120', NULL, N'EP', N'EdifProf', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31158, N'Microondas General Electric', N'1', N'700', N'0.5', N'5', N'1.75', NULL, N'EP', N'EdifProf', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31159, N'Refrigerador Samsung', N'1', N'800', N'24', N'30', N'576', NULL, N'EP', N'EdifProf', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31160, N'Oasis', N'1', N'600', N'6', N'20', N'72', NULL, N'EP', N'EdifProf', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31161, N'Microondas LG', N'1', N'700', N'1', N'5', N'3.5', NULL, N'EP', N'EdifprofCo', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31162, N'Horno Tostador Black&Decker', N'1', N'1000', N'0.5', N'5', N'2.5', NULL, N'EP', N'EdifprofCo', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31163, N'Cafetera Proctor Silex', N'1', N'1000', N'6', N'15', N'90', NULL, N'EP', N'EdifprofCo', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31164, N'Oasis', N'1', N'500', N'8', N'20', N'80', NULL, N'EP', N'EdifprofCo', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31165, N'Luminaria Fluorecente 2x32', N'2', N'64', N'8', N'20', N'20.48', NULL, N'EP', N'EdifprofCo', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31166, N'Luminaria Fluorescente 3x16', N'12', N'48', N'8', N'20', N'92.16', NULL, N'EP', N'EdifprofCo', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31167, N'Luminaria Fluorescente de 2x16', N'4', N'32', N'8', N'20', N'20.48', NULL, N'EP', N'EdifprofCo', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31168, N'Computadora de Escritorio', N'19', N'150', N'4', N'15', N'171', NULL, N'EP', N'EdifprofCo', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31169, N'Luminaria Fluorescente 3x32', N'12', N'96', N'8', N'20', N'184.32', NULL, N'EP', N'EdifPrfoEl', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31170, N'Luminaria Fluorescente de 2x16', N'4', N'32', N'4', N'10', N'5.12', NULL, N'EP', N'EdifPrfoEl', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31171, N'Computadora de escritorio', N'14', N'150', N'4', N'20', N'168', NULL, N'EP', N'EdifPrfoEl', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31172, N'Workcenter XEROX ', N'1', N'200', N'1', N'4', N'0.8', NULL, N'EP', N'EdifPrfoEl', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31173, N'Aire Acondicionado Lennox', N'1', N'3000', N'1', N'15', N'45', NULL, N'EP', N'EdifPrfoEl', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31174, N'Luminaria Fluorescente 1x16', N'5', N'16', N'1', N'15', N'1.2', NULL, N'EP', N'EdifPrfoEl', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31175, N'Televisores LED', N'3', N'50', N'1', N'15', N'2.25', NULL, N'EP', N'EdifPrfoEl', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31176, N'Laptops para Simulacion', N'5', N'65', N'1', N'15', N'4.875', NULL, N'EP', N'EdifPrfoEl', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31177, N'Switch Fortinet', N'1', N'60', N'24', N'30', N'43.2', NULL, N'EP', N'EdifPrfoEl', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31178, N'Luminaria Fluorescente 3x16', N'23', N'48', N'8', N'20', N'176.64', NULL, N'EP', N'EdifProfEc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31179, N'Luminaria Fluorescente Empotrada en techo', N'14', N'8.5', N'1', N'2', N'0.238', NULL, N'EP', N'EdifProfEc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31180, N'Computadora de escritorio', N'27', N'150', N'6', N'20', N'486', NULL, N'EP', N'EdifProfEc', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31181, N'Oasis General Electric', N'1', N'500', N'8', N'20', N'80', NULL, N'EP', N'EdifProfEc', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31182, N'Horno Microondas Panasonic', N'1', N'700', N'1', N'15', N'10.5', NULL, N'EP', N'EdifProfEc', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31183, N'Cafetera Oster', N'1', N'1000', N'4', N'20', N'80', NULL, N'EP', N'EdifProfEc', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31184, N'Luminaria Fluorescente 2x16', N'36', N'32', N'4', N'20', N'92.16', NULL, N'EP', N'EdifProfHu', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31185, N'Luminaria Fluorescente Empotrada en techo', N'7', N'8.5', N'1', N'10', N'0.595', NULL, N'EP', N'EdifProfHu', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31186, N'Impresora HP Laserjet', N'1', N'200', N'0.5', N'4', N'0.4', NULL, N'EP', N'EdifProfEc', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31187, N'Ventilador de Oficina', N'27', N'60', N'5', N'20', N'162', NULL, N'EP', N'EdifProfEc', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31188, N'Switch Fortinet', N'1', N'80', N'24', N'30', N'57.6', NULL, N'EP', N'EdifProfHu', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31189, N'Computadora de escritorio', N'30', N'150', N'4', N'20', N'360', NULL, N'EP', N'EdifProfHu', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31190, N'Refrigerador MABE ', N'1', N'1000', N'24', N'30', N'720', NULL, N'EP', N'EdifProfHu', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31191, N'Horno Microondas Panasonic', N'1', N'700', N'1', N'15', N'10.5', NULL, N'EP', N'EdifProfHu', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31192, N'Oasis Aquatek', N'1', N'500', N'8', N'20', N'80', NULL, N'EP', N'EdifProfHu', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31193, N'Cafetera West Bend', N'1', N'1000', N'4', N'20', N'80', NULL, N'EP', N'EdifProfHu', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31194, N'Luminaria Fluorescente de 3x16', N'15', N'48', N'2', N'10', N'14.4', NULL, N'EP', N'EdifProfsa', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31195, N'Luminaria Fluorescente 2x16', N'5', N'32', N'1', N'10', N'1.6', NULL, N'EP', N'EdifProfAu', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31196, N'Aire Acondicionado Comfor Star', N'2', N'5000', N'1', N'10', N'100', NULL, N'EP', N'EdifProfAu', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31197, N'Luminaria Fluorescente 2x16', N'5', N'32', N'1', N'10', N'1.6', NULL, N'EP', N'EdifProfeA', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31198, N'Aire Acondicionado Comfort Star', N'2', N'5000', N'1', N'10', N'100', NULL, N'EP', N'EdifProfeA', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31199, N'Luminaria empotrada en techo', N'1', N'15', N'1', N'4', N'0.06', NULL, N'EP', N'Edifprosac', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31200, N'Luminaria Fluorescente 2x16', N'8', N'32', N'1', N'10', N'2.56', NULL, N'EP', N'Edifprofpa', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31201, N'Aire acondicionado ComfortStar', N'2', N'5000', N'4', N'22', N'880', NULL, N'EP', N'EPCenRepro', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31202, N'Iuminaria  fluorescente 4x32', N'8', N'128', N'8', N'22', N'180.224', NULL, N'EP', N'EPCenRepro', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31203, N'Computadora de Escritorio HP', N'5', N'125', N'8', N'20', N'100', NULL, N'EP', N'EPCenRepro', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31204, N'Fotocopiadora y escaner Xerox', N'3', N'2000', N'8', N'20', N'960', NULL, N'EP', N'EPCenRepro', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31205, N'Engomadora Perfect Binder BD-280', N'1', N'1500', N'2', N'5', N'15', NULL, N'EP', N'EPCenRepro', N'EOfic')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31206, N'Cortadora DocuCuter 490', N'1', N'1500', N'2', N'15', N'45', NULL, N'EP', N'EPCenRepro', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31207, N'Fotocopiadora a color RICOH PRO C5200s', N'1', N'2400', N'4', N'20', N'192', NULL, N'EP', N'EPCenRepro', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31208, N'Fotocopiadora Xerox D125', N'1', N'2640', N'2', N'12', N'63.36', NULL, N'EP', N'EPCenRepro', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31209, N'PC server para Xerox D125', N'1', N'200', N'2', N'12', N'4.8', NULL, N'EP', N'EPCenRepro', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31210, N'PC server para RICOH PRO C5200s', N'1', N'200', N'4', N'20', N'16', NULL, N'EP', N'EPCenRepro', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31211, N'UPS TRIPP-LITE', N'1', N'150', N'24', N'30', N'108', NULL, N'EP', N'EPCenRepro', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31212, N'Carnet POLAROID ', N'1', N'200', N'1', N'3', N'0.6', NULL, N'EP', N'EPCenRepro', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31213, N'UPS FORZA NT-75', N'1', N'15', N'24', N'30', N'10.8', NULL, N'EP', N'EPCenRepro', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31214, N'Laminadora para Carnet', N'1', N'1000', N'1', N'5', N'5', NULL, N'EP', N'EPCenRepro', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31215, N'Computadoras de Escritorio', N'49', N'125', N'4', N'8', N'196', NULL, N'E-OWCC', N'SiMat_A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31216, N'UPS Smartbitt', N'11', N'15', N'24', N'30', N'118.8', NULL, N'E-OWCC', N'SiMat_A', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31217, N'Luminaria 3x18', N'12', N'54', N'4', N'8', N'20.736', NULL, N'E-OWCC', N'SiMat_A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31218, N'Impresora Laser', N'1', N'852', N'2', N'8', N'13.632', NULL, N'E-OWCC', N'SiMat_A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31219, N'Luminarias 3x18', N'12', N'54', N'4', N'8', N'20.736', NULL, N'E-OWCC', N'SiMat_B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31220, N'Computadora escritorio', N'1', N'125', N'4', N'8', N'4', NULL, N'E-OWCC', N'SiMat_B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31221, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabFis2cc3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31222, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabFis2cc3', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31223, N'Luminarias 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabFis1B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31224, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabFis1B', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31225, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabFis1_A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31226, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabFisApl_', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31227, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabFisApl_', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31228, N'Luminaria LED', N'3', N'7', N'1', N'4', N'0.084', NULL, N'E-OWCC', N'BodegaFisi', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31229, N'Luminaria LED ', N'3', N'7', N'1', N'4', N'0.084', NULL, N'E-OWCC', N'BodFis_3B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31230, N'Luminaria 3x18', N'2', N'54', N'1', N'4', N'0.432', NULL, N'E-OWCC', N'BodQuim_2A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31231, N'Luminaria LED', N'3', N'7', N'1', N'4', N'0.084', NULL, N'E-OWCC', N'BodQuim_2B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31232, N'Luminaria LED', N'3', N'7', N'1', N'4', N'0.084', NULL, N'E-OWCC', N'BodFis_2A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31233, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabQuimGen', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31234, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabQuimGen', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31235, N'Luminaria 4x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabQuimiGe', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31236, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabQuimiGe', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31237, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'LabQuimGen', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31238, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabQuimGen', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31239, N'Luminaria 3x18', N'3', N'54', N'4', N'8', N'5.184', NULL, N'E-OWCC', N'LabFisMode', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31240, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabFisMode', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31241, N'Luminaria 3x18', N'3', N'54', N'4', N'8', N'5.184', NULL, N'E-OWCC', N'LabFisTMA_', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31242, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabFisTMA_', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31243, N'Luminaria 3x18', N'3', N'54', N'4', N'8', N'5.184', NULL, N'E-OWCC', N'LabTyF_N2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31244, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabTyF_N2', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31245, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LaboEMA_N2', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31246, N'Luminaria 3x18', N'3', N'54', N'4', N'8', N'5.184', NULL, N'E-OWCC', N'LaboEMA_N2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31247, N'Minisplit Panasonic', N'1', N'2700', N'4', N'8', N'86.4', NULL, N'E-OWCC', N'LabEMA_N2_', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31248, N'Luminaria 3x18', N'3', N'54', N'4', N'8', N'5.184', NULL, N'E-OWCC', N'LabEMA_N2_', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31249, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'Pas_N3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31250, N'Luminaria escaleras', N'2', N'18', N'4', N'8', N'1.152', NULL, N'E-OWCC', N'Pas_N3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31251, N'Luminaria 3x18', N'4', N'54', N'4', N'8', N'6.912', NULL, N'E-OWCC', N'Pasi_N2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31252, N'Reflector LED', N'2', N'14', N'4', N'8', N'0.896', NULL, N'E-OWCC', N'Pasi_N2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31253, N'Reflector tipo panel LED', N'2', N'15', N'4', N'8', N'0.96', NULL, N'E-OWCC', N'Pasi_N2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31255, N'Luminaria 3x18', N'9', N'54', N'1', N'8', N'3.888', NULL, N'E-OWCC', N'Ulrike_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31256, N'Proyector Epson', N'1', N'500', N'1', N'8', N'4', NULL, N'E-OWCC', N'Ulrike_N1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31257, N'Amplificador EUROPOWER PMP1680S', N'1', N'1600', N'1', N'4', N'6.4', NULL, N'E-OWCC', N'Ulrike_N1', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31258, N'Luminaria 3x18', N'9', N'54', N'1', N'8', N'3.888', NULL, N'E-OWCC', N'Christa_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31259, N'Proyector Epson', N'1', N'500', N'1', N'8', N'4', NULL, N'E-OWCC', N'Christa_N1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31260, N'Amplificador EUROPOWER PMP1680S', N'1', N'1600', N'1', N'4', N'6.4', NULL, N'E-OWCC', N'Christa_N1', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31261, N'Luminaria 3x18', N'4', N'54', N'1', N'30', N'6.48', NULL, N'E-OWCC', N'cafetin_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31262, N'Refrigeradora FRIGIDAIRE', N'1', N'1000', N'1', N'15', N'15', NULL, N'E-OWCC', N'cafetin_N1', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31263, N'Cafetera Grande WestBend', N'1', N'1500', N'1', N'4', N'6', NULL, N'E-OWCC', N'cafetin_N1', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31264, N'Cafetera Mediana WestBend', N'1', N'1090', N'2', N'12', N'26.16', NULL, N'E-OWCC', N'cafetin_N1', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31265, N'Microonda Panasonic', N'1', N'800', N'1', N'4', N'3.2', NULL, N'E-OWCC', N'cafetin_N1', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31266, N'Minisplit Panasonic ', N'1', N'2700', N'1', N'4', N'10.8', NULL, N'E-OWCC', N'cafetin_N1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31267, N'Lunimaria 3x18', N'1', N'54', N'1', N'4', N'0.216', NULL, N'E-OWCC', N'BañoDam_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31268, N'Luminaria LED', N'1', N'7', N'1', N'4', N'0.028', NULL, N'E-OWCC', N'BañoDam_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31269, N'Luminaria 3x18', N'1', N'54', N'1', N'4', N'0.216', NULL, N'E-OWCC', N'BañoCab_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31270, N'Luminaria LED', N'1', N'7', N'1', N'4', N'0.028', NULL, N'E-OWCC', N'BañoCab_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31271, N'Luminaria 3x7 en recepcion', N'2', N'21', N'2', N'12', N'1.008', NULL, N'E-OWCC', N'Recep_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31272, N'Luminaria LED en recepcion', N'9', N'7', N'2', N'12', N'1.512', NULL, N'E-OWCC', N'Recep_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31273, N'Luminaria 3x18 en recepcion', N'1', N'54', N'2', N'12', N'1.296', NULL, N'E-OWCC', N'Recep_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31274, N'Luminaria 3x18', N'2', N'54', N'2', N'12', N'2.592', NULL, N'E-OWCC', N'Confe_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31275, N'Minisplit Panasonic', N'1', N'2700', N'2', N'12', N'64.8', NULL, N'E-OWCC', N'Confe_N1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31276, N'Luminaria 3x18', N'1', N'54', N'1', N'1', N'0.054', NULL, N'E-OWCC', N'Ofic_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31277, N'Minisplit Panasonic', N'1', N'2700', N'1', N'1', N'2.7', NULL, N'E-OWCC', N'Ofic_N1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31278, N'Computadora de Escritorio', N'5', N'125', N'6', N'25', N'93.75', NULL, N'E-OWCC', N'CubProN1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31279, N'Computadora Portatil', N'3', N'65', N'5', N'24', N'23.4', NULL, N'E-OWCC', N'CubProN1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31280, N'Luminaria 3X7', N'9', N'21', N'8', N'30', N'45.36', NULL, N'E-OWCC', N'CubProN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31281, N'Luminaria 3X18', N'2', N'54', N'3', N'15', N'4.86', NULL, N'E-OWCC', N'CubProN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31282, N'Luminaria Led', N'1', N'7', N'6', N'20', N'0.84', NULL, N'E-OWCC', N'CubProN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31283, N'Cafetera', N'1', N'1090', N'7', N'25', N'190.75', NULL, N'E-OWCC', N'CubProN1', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31284, N'Dispensador de Agua', N'1', N'500', N'8', N'30', N'120', NULL, N'E-OWCC', N'CubProN1', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31285, N'Horno microondas Mastertech', N'1', N'850', N'2', N'25', N'42.5', NULL, N'E-OWCC', N'CubProN1', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31286, N'Luminaria Led', N'3', N'7', N'8', N'30', N'5.04', NULL, N'E-OWCC', N'Pasi_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31287, N'Luminaria Escalera', N'2', N'18', N'4', N'12', N'1.728', NULL, N'E-OWCC', N'Pasi_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31288, N'Luminaria 3X18', N'1', N'54', N'5', N'15', N'4.05', NULL, N'E-OWCC', N'Pasi_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31289, N'Luminaria  LED', N'1', N'7', N'2', N'20', N'0.28', NULL, N'E-OWCC', N'BañProfeN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31290, N'Luminaria LED', N'1', N'7', N'2', N'20', N'0.28', NULL, N'E-OWCC', N'bañdaproN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31291, N'Luminaria fluorescente', N'1', N'20', N'2', N'12', N'0.48', NULL, N'E-OWCC', N'bodegaN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31292, N'Luminaria 3X18', N'1', N'54', N'1', N'5', N'0.27', NULL, N'E-OWCC', N'BañdiscaN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31293, N'Luminaria 3X7', N'6', N'21', N'2', N'4', N'1.008', NULL, N'E-OWCC', N'vidconf_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31294, N'Luminaria Ojo de buey', N'14', N'5', N'2', N'5', N'0.7', NULL, N'E-OWCC', N'vidconf_N1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31295, N'Minisplit panasonic', N'1', N'2700', N'2', N'5', N'27', NULL, N'E-OWCC', N'vidconf_N1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31296, N'Televisores LG', N'2', N'94', N'2', N'5', N'1.88', NULL, N'E-OWCC', N'vidconf_N1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31297, N'Minisplit panasonic', N'1', N'2700', N'2', N'4', N'21.6', NULL, N'E-OWCC', N'salonDRN1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31298, N'Luminaria 3X18', N'4', N'54', N'2', N'4', N'1.728', NULL, N'E-OWCC', N'salonDRN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31299, N'Televisor LG', N'1', N'94', N'2', N'4', N'0.752', NULL, N'E-OWCC', N'salonDRN1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31300, N'Aire acondicionado de techo Panasonic', N'2', N'4150', N'8', N'28', N'1859.2', NULL, N'E-OWCC', N'CubProN1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31301, N'Aire Acondicionado de Techo Panasonic', N'2', N'4150', N'8', N'20', N'1328', NULL, N'E-OWCC', N'Christa_N1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31302, N'Aire acondicionado de Techo Panasonic', N'2', N'4150', N'2', N'4', N'66.4', NULL, N'E-OWCC', N'Ulrike_N1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31303, N'Aire acondicionado de Techo Panasonic', N'2', N'4150', N'2', N'5', N'83', NULL, N'E-OWCC', N'SiMat_A', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31304, N'Aire acondicionado de Techo Panasonic', N'2', N'4150', N'2', N'5', N'83', NULL, N'E-OWCC', N'SiMat_B', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31305, N'Reflectores Led', N'2', N'120', N'2', N'20', N'9.6', NULL, N'E-OWCC', N'extowcc_N3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31306, N'Reflectrotes Led', N'4', N'50', N'2', N'20', N'8', NULL, N'E-OWCC', N'extowcc_N2', N'IExte')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31307, N'Reflectrores LED', N'2', N'120', N'2', N'20', N'9.6', NULL, N'E-OWCC', N'extowcc_N2', N'IExte')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31308, N'Luminaria foco Led ', N'2', N'7', N'2', N'20', N'0.56', NULL, N'E-OWCC', N'extowcc_N1', N'IExte')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31309, N'Rack de servidores', N'1', N'600', N'24', N'30', N'432', NULL, N'E-OWCC', N'owccservN2', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31310, N'Minisplit', N'1', N'2700', N'24', N'30', N'1944', NULL, N'E-OWCC', N'owccservN2', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31311, N'Luminaria Led', N'2', N'7', N'1', N'4', N'0.056', NULL, N'E-OWCC', N'owccservN2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31312, N'UPS FORZA', N'1', N'30', N'24', N'30', N'21.6', NULL, N'E-OWCC', N'owccservN2', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31313, N'Luminaria 4x18', N'3', N'72', N'4', N'20', N'17.28', NULL, N'EA', N'EdifA_17B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31314, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_17B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31315, N'Luminaria 4x18', N'3', N'72', N'4', N'20', N'17.28', NULL, N'EA', N'EdifA_17A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31316, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_17A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31317, N'Luminaria 4x18', N'3', N'72', N'4', N'20', N'17.28', NULL, N'EA', N'EdifA_16B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31318, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_16B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31319, N'Luminaria 4x18', N'3', N'72', N'4', N'20', N'17.28', NULL, N'EA', N'EdifA_16A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31320, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_16A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31321, N'Luminaria 4x18', N'3', N'72', N'4', N'20', N'17.28', NULL, N'EA', N'EdifA_15B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31322, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_15B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31323, N'Luminaria 4X18', N'3', N'72', N'4', N'20', N'17.28', NULL, N'EA', N'EdifA_15A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31324, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_15A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31325, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_13B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31326, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_13B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31327, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_13A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31328, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_13A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31329, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_12B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31330, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_12B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31331, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_12A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31332, N'Proyectro Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_12A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31333, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EA', N'EdifA_11', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31334, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_11', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31335, N'Luminaria 2x18', N'12', N'36', N'3', N'20', N'25.92', NULL, N'EA', N'EA_pasiN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31336, N'Luminaria 4x32', N'4', N'128', N'8', N'25', N'102.4', NULL, N'EA', N'EAbodega1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31337, N'Luminaria 4x18', N'1', N'72', N'12', N'30', N'25.92', NULL, N'EA', N'EA_ofisegu', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31338, N'Televisor adhua ', N'1', N'75', N'12', N'30', N'27', NULL, N'EA', N'EA_ofisegu', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31339, N'Televisor Samsung', N'1', N'75', N'12', N'30', N'27', NULL, N'EA', N'EA_ofisegu', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31340, N'Computadora de Escritorio', N'2', N'125', N'5', N'20', N'25', NULL, N'EA', N'EA_ofisegu', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31341, N'UPS APC', N'2', N'15', N'24', N'30', N'21.6', NULL, N'EA', N'EA_ofisegu', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31342, N'Minisplit LENNOX', N'1', N'2400', N'12', N'25', N'720', NULL, N'EA', N'EA_ofisegu', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31343, N'Lampara Fluorescente', N'1', N'20', N'2', N'8', N'0.32', NULL, N'EA', N'EAbodega2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31344, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EA', N'EdifA_26', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31345, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_26', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31346, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EA', N'EdifA_25', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31347, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_25', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31348, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EA', N'EdifA_24', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31349, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_24', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31350, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EA', N'EdifA_23', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31351, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_23', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31352, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EA', N'EdifA_22', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31353, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_22', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31354, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EA', N'EdifA_21', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31355, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_21', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31356, N'Luminaria 2x18', N'8', N'36', N'3', N'20', N'17.28', NULL, N'EA', N'EA_pasiN2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31357, N'Luminaria 2x32', N'4', N'64', N'3', N'20', N'15.36', NULL, N'EA', N'EA_pasiN2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31358, N'luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EA', N'EdifA_37', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31359, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_37', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31360, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_36B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31361, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_36B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31362, N'Ventilador de techo ', N'1', N'75', N'2', N'15', N'2.25', NULL, N'EA', N'EdifA_37', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31363, N'Ventilador de techo', N'1', N'75', N'2', N'15', N'2.25', NULL, N'EA', N'EdifA_36B', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31364, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_36A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31365, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_36A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31366, N'Ventilador de techo', N'1', N'75', N'2', N'15', N'2.25', NULL, N'EA', N'EdifA_36A', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31367, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_35B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31368, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_35B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31369, N'Ventilador de Techo', N'1', N'75', N'2', N'15', N'2.25', NULL, N'EA', N'EdifA_35B', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31370, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_35A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31371, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_35A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31372, N'Ventilador de techo', N'1', N'75', N'2', N'15', N'2.25', NULL, N'EA', N'EdifA_35A', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31373, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_34B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31374, N'proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_34B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31375, N'Ventilador de techo', N'1', N'75', N'2', N'15', N'2.25', NULL, N'EA', N'EdifA_34B', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31376, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_34A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31377, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_34A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31378, N'Ventilador de techo', N'1', N'75', N'2', N'15', N'2.25', NULL, N'EA', N'EdifA_34A', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31379, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EA', N'EdifA_33', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31380, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_33', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31381, N'Ventilador de techo', N'1', N'75', N'2', N'15', N'2.25', NULL, N'EA', N'EdifA_33', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31382, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_32B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31383, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_32B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31384, N'Ventilador de techo', N'1', N'75', N'2', N'15', N'2.25', NULL, N'EA', N'EdifA_32B', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31385, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EA', N'EdifA_32A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31386, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_32A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31387, N'Ventilador de techo', N'1', N'75', N'2', N'15', N'2.25', NULL, N'EA', N'EdifA_32A', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31388, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EA', N'EdifA_31', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31389, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EA', N'EdifA_31', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31390, N'Ventilador de techo', N'1', N'75', N'2', N'15', N'2.25', NULL, N'EA', N'EdifA_31', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31391, N'Lampara Fluorescente', N'18', N'20', N'2', N'15', N'10.8', NULL, N'EA', N'EA_pasiN3', N'IExte')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31392, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_37', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31393, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_37', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31394, N'Ventilador de techo', N'2', N'75', N'2', N'15', N'4.5', NULL, N'EB', N'EdifB_37', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31395, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_36', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31396, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_36', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31397, N'Ventilador de techo', N'2', N'75', N'2', N'15', N'4.5', NULL, N'EB', N'EdifB_36', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31398, N'luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_35', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31399, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_35', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31400, N'Ventilador de Techo', N'2', N'75', N'2', N'15', N'4.5', NULL, N'EB', N'EdifB_35', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31401, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EB', N'EdifB_34A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31402, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_34A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31403, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EB', N'EdifB_34B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31404, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_34B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31405, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_33', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31406, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_33', N'EOfic')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31407, N'Ventilador de Techo', N'2', N'75', N'2', N'15', N'4.5', NULL, N'EB', N'EdifB_33', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31408, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_32', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31409, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_32', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31410, N'Ventilador de techo', N'2', N'75', N'2', N'15', N'4.5', NULL, N'EB', N'EdifB_32', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31411, N'Computadora de Escritorio', N'1', N'125', N'1', N'4', N'0.5', NULL, N'EB', N'EdifB_32', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31412, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_31', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31413, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_31', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31414, N'Computadora Escritorio', N'1', N'125', N'1', N'4', N'0.5', NULL, N'EB', N'EdifB_31', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31415, N'Ventilador de techo', N'2', N'75', N'2', N'15', N'4.5', NULL, N'EB', N'EdifB_31', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31416, N'Lampara fluorescente', N'20', N'18', N'1', N'4', N'1.44', NULL, N'EB', N'EB_pasiN3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31417, N'Luminaria 2x32', N'11', N'64', N'2', N'15', N'21.12', NULL, N'EB', N'EB_pasiN2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31418, N'Luminaria 2x18', N'2', N'36', N'2', N'15', N'2.16', NULL, N'EB', N'EB_pasiN2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31419, N'luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_26', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31420, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_26', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31421, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_25', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31422, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_25', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31423, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_24', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31424, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_24', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31425, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_22', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31426, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_22', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31427, N'Computadora de Escritorio', N'1', N'125', N'1', N'4', N'0.5', NULL, N'EB', N'EdifB_22', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31428, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_21', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31429, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_21', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31430, N'Luminaria 2x18', N'6', N'36', N'2', N'15', N'6.48', NULL, N'EB', N'EB_pasiN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31431, N'Luminaria 2x32', N'5', N'64', N'3', N'15', N'14.4', NULL, N'EB', N'EB_pasiN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31432, N'Lampara fluorescente', N'4', N'20', N'2', N'15', N'2.4', NULL, N'EB', N'EB_pasiN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31433, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_17', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31434, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_17', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31435, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EB', N'EdifB_16B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31436, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_16B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31437, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EB', N'EdifB_16A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31438, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_16A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31439, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EB', N'EdifB_15B', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31440, N'Proyectro Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_15B', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31441, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EB', N'EdifB_15A', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31442, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_15A', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31443, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_14', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31444, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_14', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31445, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_13', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31446, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_13', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31447, N'Computadora de Escritorio', N'1', N'125', N'1', N'4', N'0.5', NULL, N'EB', N'EdifB_13', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31448, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_12', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31449, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_12', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31450, N'Computadora de Escritorio', N'1', N'125', N'1', N'4', N'0.5', NULL, N'EB', N'EdifB_12', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31451, N'Ventilador de ´pared', N'1', N'50', N'1', N'8', N'0.4', NULL, N'EB', N'EdifB_12', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31452, N'Luminaria 3x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EB', N'EdifB_11', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31453, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EB', N'EdifB_11', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31454, N'Lampara Fluorescente', N'16', N'20', N'2', N'12', N'7.68', NULL, N'EC', N'EC_pasiN3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31455, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_33', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31456, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_33', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31457, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'EC', N'EdifC_33', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31458, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_32', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31459, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_32', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31460, N'Luminaria 4x32', N'6', N'128', N'2', N'20', N'30.72', NULL, N'EC', N'EdifC_31', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31461, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_31', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31462, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'EC', N'EdifC_31', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31463, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_37', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31464, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_37', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31465, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'EC', N'EdifC_37', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31466, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_36', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31467, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_36', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31468, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_35', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31469, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_35', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31470, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'EC', N'EdifC_35', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31471, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_34', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31472, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_34', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31473, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'EC', N'EdifC_34', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31474, N'Luminaria 4x32', N'10', N'128', N'2', N'12', N'30.72', NULL, N'EC', N'EC_pasiN2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31475, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_24', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31476, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_24', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31477, N'Router fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'EC', N'EdifC_24', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31478, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_25', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31479, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_25', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31480, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'EC', N'EdifC_25', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31481, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_26', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31482, N'Proyector Epson ', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_26', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31483, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_27', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31484, N'proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_27', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31485, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'EC', N'EdifC_27', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31486, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_22', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31487, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_22', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31488, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_23', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31489, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_23', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31490, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'EC', N'EdifC_23', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31491, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_21', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31492, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_21', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31493, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'EC', N'EdifC_21', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31494, N'Luminaria 2x32', N'3', N'64', N'2', N'12', N'4.608', NULL, N'EC', N'EC_pasiN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31495, N'Luminaria 2x18', N'7', N'36', N'2', N'12', N'6.048', NULL, N'EC', N'EC_pasiN1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31496, N'Router Fortinet', N'2', N'12.5', N'24', N'30', N'18', NULL, N'EC', N'EC_pasiN1', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31497, N'Luminaria 4x32', N'3', N'128', N'4', N'20', N'30.72', NULL, N'EC', N'EdifC_13', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31498, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_13', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31499, N'Ventilador de techo', N'2', N'75', N'2', N'15', N'4.5', NULL, N'EC', N'EdifC_13', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31500, N'Ventilador de Pared', N'1', N'50', N'2', N'15', N'1.5', NULL, N'EC', N'EdifC_13', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31501, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_14', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31502, N'Proyectro Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_14', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31503, N'Computadora de Escritorio', N'1', N'125', N'1', N'4', N'0.5', NULL, N'EC', N'EdifC_14', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31504, N'Ventilador de Techo', N'2', N'75', N'2', N'15', N'4.5', NULL, N'EC', N'EdifC_14', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31505, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_15', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31506, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_15', N'EOfic')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31507, N'Ventilador de techo', N'2', N'75', N'2', N'15', N'4.5', NULL, N'EC', N'EdifC_15', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31508, N'Luminaria 4x32', N'6', N'128', N'4', N'20', N'61.44', NULL, N'EC', N'EdifC_16', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31509, N'Proyector Epson', N'1', N'500', N'2', N'15', N'15', NULL, N'EC', N'EdifC_16', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31510, N'Ventilador de techo', N'2', N'75', N'2', N'15', N'4.5', NULL, N'EC', N'EdifC_16', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31511, N'Servidor FortiSwit 108E', N'1', N'60', N'24', N'30', N'43.2', NULL, N'EA', N'EAbodega2', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31512, N'Rack de servidores', N'1', N'60', N'24', N'30', N'43.2', NULL, N'EC', N'EdifC_12', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31513, N'Luminaria 4x32', N'7', N'128', N'4', N'10', N'35.84', NULL, N'EC', N'EdifC_12', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31514, N'Luminaria 4x18', N'2', N'72', N'4', N'10', N'5.76', NULL, N'EC', N'EdifC_12', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31515, N'Proyector Epson', N'1', N'500', N'2', N'4', N'4', NULL, N'EC', N'EdifC_12', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31516, N'ventiladores de Techo', N'3', N'75', N'2', N'4', N'1.8', NULL, N'EC', N'EdifC_12', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31517, N'Aire acondicionado de 60000Btu/h', N'1', N'7500', N'4', N'15', N'450', NULL, N'EC', N'EdifC_12', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31518, N'Luminaria de 4x32', N'6', N'128', N'4', N'16', N'49.152', NULL, N'EC', N'EdifC_11', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31519, N'Proyector Epson', N'1', N'500', N'2', N'4', N'4', NULL, N'EC', N'EdifC_11', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31520, N'Aire acondicionado de 60000Btu/h', N'1', N'7500', N'4', N'15', N'450', NULL, N'EC', N'EdifC_11', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31521, N'Lampara Fluorescente', N'1', N'18', N'4', N'20', N'1.44', NULL, N'EC', N'EdifC_aseo', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31522, N'Luminaria de 4x32', N'9', N'128', N'4', N'15', N'69.12', NULL, N'EB', N'EdifB_SLab', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31523, N'Computadoras de escritorio', N'30', N'125', N'4', N'15', N'225', NULL, N'EB', N'EdifB_SLab', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31524, N'Aire acondicionado', N'1', N'7500', N'4', N'15', N'450', NULL, N'EB', N'EdifB_SLab', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31525, N'Luminaria de 4x32', N'2', N'128', N'4', N'15', N'15.36', NULL, N'EA', N'EdifA_Scla', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31526, N'Luminaria de 2x32', N'1', N'64', N'4', N'15', N'3.84', NULL, N'EA', N'EdifA_Scla', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31527, N'Rack de servidores', N'1', N'100', N'24', N'30', N'72', NULL, N'EA', N'EdifA_Scla', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31528, N'UPS  SMAT3000vS', N'2', N'288', N'24', N'30', N'414.72', NULL, N'EB', N'EdifB_SLab', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31529, N'UPS MGE SYSTEMS', N'2', N'288', N'24', N'30', N'414.72', NULL, N'EB', N'EdifB_SLab', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31530, N'luminaria 4x18', N'2', N'72', N'4', N'15', N'8.64', NULL, N'EB', N'EdifB_SCID', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31531, N'Televisor SONY', N'1', N'75', N'2', N'4', N'0.6', NULL, N'EB', N'EdifB_SCID', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31532, N'Rack de servidores', N'1', N'60', N'24', N'30', N'43.2', NULL, N'EB', N'EdifB_SCID', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31533, N'Rack de servidores ', N'1', N'100', N'24', N'30', N'72', NULL, N'EB', N'EdifB_SLab', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31534, N'Taladro de Mesa SKIL', N'1', N'350', N'4', N'15', N'21', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31535, N'Aspiradora RIDGID', N'1', N'696', N'2', N'20', N'27.84', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31536, N'Sierra de Cinta para Madera TRUPER', N'1', N'1491', N'2', N'15', N'44.73', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31537, N'Sierra de Mesa DEWALT', N'1', N'1800', N'2', N'15', N'54', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31538, N'Taladro de Pedestal  TRUPER', N'1', N'250', N'2', N'15', N'7.5', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31539, N'Cepillo Canteador DEWALT', N'1', N'1800', N'2', N'15', N'54', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31540, N'Sierra Circular de Banco de mesa Black Decker  ', N'1', N'1500', N'2', N'15', N'45', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31541, N'Sierra de Inglete Compuesta deslizante  DEWALT (compound miter saw)', N'2', N'1800', N'1', N'15', N'54', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31542, N'Rebajadora de Base Fija DEWALT', N'1', N'1320', N'1', N'15', N'19.8', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31543, N'Aspiradora DURABRAND', N'1', N'1200', N'1', N'15', N'18', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31544, N'Luminaria de 2x32', N'3', N'64', N'4', N'15', N'11.52', NULL, N'EC', N'EdifC_11', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31545, N'Sierra Caladora de Banco SKIL', N'1', N'120', N'1', N'15', N'1.8', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31546, N'Maquina de Ceramica alfero  Electrica  ', N'5', N'350', N'4', N'20', N'140', NULL, N'EC', N'EdifC_11', N'MElec')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31547, N'luminaria 2x18', N'9', N'36', N'3', N'4', N'3.888', NULL, N'E-CDIU', N'salon-arte', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31548, N'luminaria 2x18', N'2', N'36', N'6', N'4', N'1.728', NULL, N'E-CDIU', N'salamusica', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31549, N'Mini radio', N'1', N'18', N'6', N'4', N'0.432', NULL, N'E-CDIU', N'salamusica', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31550, N'Ventilador de piso westinghouse', N'2', N'130', N'4', N'4', N'4.16', NULL, N'E-CDIU', N'salamusica', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31551, N'Piano electrico casio', N'1', N'23', N'4', N'4', N'0.368', NULL, N'E-CDIU', N'salamusica', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31552, N'luminaria de 2x18', N'7', N'36', N'2', N'15', N'7.56', NULL, N'E-CDIU', N'N3Lobby', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31553, N'Computadora de escritorio', N'4', N'125', N'8', N'20', N'80', NULL, N'E-CDIU', N'N3Lobby', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31554, N'Ventilador de suelo portatil Wind Machine', N'2', N'132', N'5', N'20', N'26.4', NULL, N'E-CDIU', N'N3Lobby', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31555, N'Impresora HP', N'1', N'420', N'2', N'15', N'12.6', NULL, N'E-CDIU', N'N3Lobby', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31556, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'E-CDIU', N'N3Lobby', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31557, N'luminaria de 2x18', N'2', N'36', N'3', N'15', N'3.24', NULL, N'E-CDIU', N'S-audtorio', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31558, N'luminaria de 2x18', N'4', N'36', N'8', N'20', N'23.04', NULL, N'E-CDIU', N'N3Lobby', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31559, N'minisplit CARRIER', N'1', N'2700', N'2', N'4', N'21.6', NULL, N'E-CDIU', N'S-audtorio', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31560, N'Televisor', N'1', N'94', N'2', N'4', N'0.752', NULL, N'E-CDIU', N'S-audtorio', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31561, N'luminaria 2x18', N'2', N'36', N'2', N'15', N'2.16', NULL, N'E-CDIU', N'Svoluntari', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31562, N'Luminaria Ojo de buey', N'4', N'5', N'2', N'15', N'0.6', NULL, N'E-CDIU', N'Svoluntari', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31563, N'minisplit CARRIER', N'1', N'2700', N'2', N'4', N'21.6', NULL, N'E-CDIU', N'Svoluntari', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31564, N'Luminaria fluorescente en la escalera', N'2', N'20', N'2', N'15', N'1.2', NULL, N'E-CDIU', N'esclemergc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31565, N'Luminaria fluorescente en escalera ', N'1', N'20', N'2', N'20', N'0.8', NULL, N'E-CDIU', N'CDIU-pasN3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31566, N'Lampara Fluorescente', N'1', N'20', N'3', N'12', N'0.72', NULL, N'E-CDIU', N'CDIU_BD_N3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31567, N'Lampara Fluorescente', N'1', N'20', N'3', N'12', N'0.72', NULL, N'E-CDIU', N'CDIU_BH_N3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31568, N'Luminaria 2x18', N'2', N'36', N'8', N'20', N'11.52', NULL, N'E-CDIU', N'OfArteCult', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31569, N'Ventilador de suelo portatil Ambiance', N'1', N'65', N'6', N'20', N'7.8', NULL, N'E-CDIU', N'OfArteCult', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31570, N'Ventilador de suelo portatil Wind Machine', N'1', N'132', N'6', N'20', N'15.84', NULL, N'E-CDIU', N'OfArteCult', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31571, N'Microonda FRIGIDAIRE', N'1', N'1050', N'1', N'20', N'21', NULL, N'E-CDIU', N'OfArteCult', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31572, N'Cafetera DURABRAND', N'1', N'600', N'1', N'8', N'4.8', NULL, N'E-CDIU', N'OfArteCult', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31573, N'Computadora de Escritorio Apple ', N'1', N'125', N'8', N'20', N'20', NULL, N'E-CDIU', N'OfArteCult', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31574, N'UPS FORZA', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E-CDIU', N'OfArteCult', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31575, N'Proyector Epson', N'2', N'500', N'3', N'4', N'12', NULL, N'E-CDIU', N'OfArteCult', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31576, N'Luminaria 2x18', N'2', N'36', N'1', N'4', N'0.288', NULL, N'E-CDIU', N'BoArtCult', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31577, N'Luminaria LED', N'9', N'5', N'9', N'30', N'12.15', NULL, N'E-CDIU', N'DepProSoci', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31578, N'Lampara Ahorrativa ', N'1', N'20', N'9', N'30', N'5.4', NULL, N'E-CDIU', N'DepProSoci', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31579, N'Foco LED Philips Dimmable ', N'8', N'4.5', N'4', N'20', N'2.88', NULL, N'E-CDIU', N'DepProSoci', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31580, N'Luminaria 2x18', N'3', N'36', N'8', N'20', N'17.28', NULL, N'E-CDIU', N'DepProSoci', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31581, N'Foco LED Philips', N'4', N'5', N'4', N'20', N'1.6', NULL, N'E-CDIU', N'DepProSoci', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31582, N'Computadora de Escritorio ', N'12', N'125', N'6', N'30', N'270', NULL, N'E-CDIU', N'DepProSoci', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31583, N'UPS APC', N'3', N'15', N'24', N'30', N'32.4', NULL, N'E-CDIU', N'DepProSoci', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31584, N'UPS FORZA', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E-CDIU', N'DepProSoci', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31585, N'UPS CDP', N'3', N'30', N'24', N'30', N'64.8', NULL, N'E-CDIU', N'DepProSoci', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31586, N'Cafetera Black Decker ', N'1', N'975', N'4', N'30', N'117', NULL, N'E-CDIU', N'DepProSoci', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31587, N'Horno Microonda Whirlpool', N'1', N'1200', N'2', N'30', N'72', NULL, N'E-CDIU', N'DepProSoci', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31588, N'minisplit CARRIER', N'1', N'2700', N'4', N'20', N'216', NULL, N'E-CDIU', N'DepProSoci', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31589, N'Impresora HP PageWide Pro MFP ', N'1', N'240', N'4', N'25', N'24', NULL, N'E-CDIU', N'DepProSoci', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31590, N'Foco LED ', N'18', N'4.5', N'4', N'20', N'6.48', NULL, N'E-CDIU', N'DepProSoci', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31591, N'Tira LED 10 Metros ', N'2', N'65', N'8', N'20', N'20.8', NULL, N'E-CDIU', N'DepProSoci', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31592, N'Foco LED ', N'1', N'7', N'2', N'12', N'0.168', NULL, N'E-CDIU', N'DepComInst', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31593, N'Paneles LED 60x60cm', N'6', N'32', N'8', N'30', N'46.08', NULL, N'E-CDIU', N'DepComInst', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31594, N'Panel LED 120x30cm', N'1', N'48', N'8', N'25', N'9.6', NULL, N'E-CDIU', N'DepComInst', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31595, N'Computadora De Escritorio HP', N'8', N'125', N'8', N'30', N'240', NULL, N'E-CDIU', N'DepComInst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31596, N'Computadora De Escritorio Apple ', N'3', N'150', N'8', N'30', N'108', NULL, N'E-CDIU', N'DepComInst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31597, N'Aire Acondicionado de Techo Panasonic', N'2', N'4150', N'8', N'30', N'1992', NULL, N'E-CDIU', N'DepComInst', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31598, N'Paneles LED 30x30cm', N'3', N'18', N'2', N'20', N'2.16', NULL, N'E-CDIU', N'DepComInst', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31599, N'Impresora Canon', N'1', N'144', N'2', N'30', N'8.64', NULL, N'E-CDIU', N'DepComInst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31600, N'UPS CDP', N'1', N'30', N'24', N'30', N'21.6', NULL, N'E-CDIU', N'DepComInst', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31601, N'UPS  TECH', N'3', N'30', N'24', N'30', N'64.8', NULL, N'E-CDIU', N'DepComInst', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31602, N'UPS FORZA', N'6', N'15', N'24', N'30', N'64.8', NULL, N'E-CDIU', N'DepComInst', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31603, N'Impresora y Escaner Canon', N'1', N'192', N'2', N'4', N'1.536', NULL, N'E-CDIU', N'DepComInst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31604, N'Computadora De Escritorio Apple ', N'2', N'125', N'2', N'4', N'2', NULL, N'E-CDIU', N'DepComInst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31605, N'Luminaria de pared ', N'4', N'7', N'2', N'20', N'1.12', NULL, N'E-CDIU', N'DepComInst', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31606, N'Horno De Microonda FRIGIDAIRE ', N'1', N'1200', N'3', N'25', N'90', NULL, N'E-CDIU', N'DepComInst', N'ECo')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31607, N'Cafetera Oster', N'1', N'900', N'3', N'20', N'54', NULL, N'E-CDIU', N'DepComInst', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31608, N'Calentador de Agua ', N'1', N'1000', N'2', N'15', N'30', NULL, N'E-CDIU', N'DepComInst', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31609, N'Lampara Fluorescente ', N'1', N'20', N'2', N'4', N'0.16', NULL, N'E-CDIU', N'BodeDepCom', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31610, N'Panel LED 120x30cm', N'1', N'48', N'2', N'4', N'0.384', NULL, N'E-CDIU', N'SalaCofCom', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31611, N'Computadora De Escritorio Apple ', N'1', N'150', N'2', N'4', N'1.2', NULL, N'E-CDIU', N'SalaCofCom', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31612, N'Lampara Fluorescente ', N'1', N'20', N'8', N'20', N'3.2', NULL, N'E-CDIU', N'BañosHomDa', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31613, N'Reflector LED GVM', N'1', N'180', N'2', N'4', N'1.44', NULL, N'E-CDIU', N'SalaCofCom', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31614, N'Ventilador con pedestal LASKO', N'1', N'65', N'2', N'4', N'0.52', NULL, N'E-CDIU', N'SalaCofCom', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31615, N'Refrigerador FRIGIDAIRE', N'1', N'200', N'24', N'30', N'144', NULL, N'E-CDIU', N'DepComInst', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31616, N'Luminaria 3x32', N'2', N'96', N'4', N'20', N'15.36', NULL, N'E-CDIU', N'DepInvDesa', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31617, N'Computadora de Escritorio', N'2', N'125', N'8', N'30', N'60', NULL, N'E-CDIU', N'DepInvDesa', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31618, N'UPS APC', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E-CDIU', N'DepInvDesa', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31619, N'UPS SMARTBITT', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E-CDIU', N'DepInvDesa', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31620, N'Luminaria 3x32', N'1', N'96', N'2', N'10', N'1.92', NULL, N'E-CDIU', N'SReuInvDes', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31621, N'Ventilador de mesa DURABRAND', N'1', N'30', N'8', N'30', N'7.2', NULL, N'E-CDIU', N'OfiDirect', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31622, N'Luminaria 3x32', N'2', N'96', N'4', N'20', N'15.36', NULL, N'E-CDIU', N'OfiDirect', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31623, N'UPS APC', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E-CDIU', N'OfiDirect', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31624, N'Computadora de Escritorio ', N'2', N'125', N'8', N'30', N'60', NULL, N'E-CDIU', N'OfiDirect', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31625, N'Computadora de Escritorio ', N'1', N'125', N'4', N'30', N'15', NULL, N'E-CDIU', N'DepAtePsic', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31626, N'Luminaria de 3x32', N'1', N'96', N'8', N'30', N'23.04', NULL, N'E-CDIU', N'DepAtePsic', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31627, N'Impresora HP ', N'1', N'480', N'2', N'15', N'14.4', NULL, N'E-CDIU', N'DepAtePsic', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31628, N'Cafetera Black Decker', N'1', N'975', N'3', N'20', N'58.5', NULL, N'E-CDIU', N'DepAtePsic', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31629, N'Computadora de escritorio ', N'1', N'125', N'2', N'10', N'2.5', NULL, N'E-CDIU', N'SAtenPsic3', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31630, N'UPS FORZA', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E-CDIU', N'SAtenPsic3', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31631, N'Ventilador de Pedestal', N'1', N'60', N'2', N'10', N'1.2', NULL, N'E-CDIU', N'SAtenPsic3', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31632, N'Ventilador de Pedestal ', N'1', N'60', N'6', N'20', N'7.2', NULL, N'E-CDIU', N'DepInvDesa', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31633, N'Luminaria 3x32', N'1', N'96', N'2', N'10', N'1.92', NULL, N'E-CDIU', N'SAtenPsic3', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31634, N'Computadora Portatil', N'1', N'65', N'8', N'20', N'10.4', NULL, N'E-CDIU', N'DepInvDesa', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31635, N'Computadora Portatil', N'3', N'65', N'8', N'20', N'31.2', NULL, N'E-CDIU', N'DepComInst', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31636, N'Luminaria 3x32', N'1', N'96', N'2', N'10', N'1.92', NULL, N'E-CDIU', N'SAtenPsic2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31637, N'Ventilador de Pedestal', N'1', N'60', N'2', N'10', N'1.2', NULL, N'E-CDIU', N'SAtenPsic2', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31638, N'Computadora de Escritorio ', N'1', N'125', N'2', N'10', N'2.5', NULL, N'E-CDIU', N'SAtenPsic2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31639, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'E-CDIU', N'DepAtePsic', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31640, N'Luminaria 3x32', N'1', N'96', N'4', N'20', N'7.68', NULL, N'E-CDIU', N'SAtenPsic1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31641, N'UPS APC', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E-CDIU', N'SAtenPsic2', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31642, N'Computadora de Escritorio ', N'1', N'125', N'8', N'30', N'30', NULL, N'E-CDIU', N'SAtenPsic1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31643, N'UPS APC', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E-CDIU', N'SAtenPsic1', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31644, N'Ventilador De piso Portatil', N'1', N'70', N'8', N'30', N'16.8', NULL, N'E-CDIU', N'SAtenPsic1', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31645, N'Computadora de Escritorio', N'1', N'125', N'4', N'15', N'7.5', NULL, N'E-CDIU', N'OfiGenAteP', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31646, N'UPS APC', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E-CDIU', N'OfiGenAteP', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31647, N'Luminaria 3x32', N'1', N'96', N'4', N'15', N'5.76', NULL, N'E-CDIU', N'OfiGenAteP', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31648, N'Ventilador De Pedestal ', N'1', N'60', N'4', N'20', N'4.8', NULL, N'E-CDIU', N'OfiGenAteP', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31649, N'Horno Microonda General Electric', N'1', N'1200', N'2', N'20', N'48', NULL, N'E-CDIU', N'OfiGenAteP', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31650, N'SANDWICHERA RIVAL', N'1', N'750', N'2', N'20', N'30', NULL, N'E-CDIU', N'OfiGenAteP', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31651, N'Refriguerador Mabe', N'1', N'200', N'24', N'30', N'144', NULL, N'E-CDIU', N'OfiGenAteP', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31652, N'Impresora HP', N'1', N'720', N'4', N'20', N'57.6', NULL, N'E-CDIU', N'DepEmprIn', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31653, N'Computadora portatil', N'2', N'65', N'8', N'30', N'31.2', NULL, N'E-CDIU', N'DepEmprIn', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31654, N'Computadora de Escritorio', N'2', N'125', N'8', N'20', N'40', NULL, N'E-CDIU', N'DepEmprIn', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31655, N'Cafetera Oster', N'1', N'900', N'2', N'20', N'36', NULL, N'E-CDIU', N'DepEmprIn', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31656, N'Horno Microonda Classicplus', N'1', N'800', N'2', N'20', N'32', NULL, N'E-CDIU', N'DepEmprIn', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31657, N'Luminaria 3x32', N'2', N'96', N'4', N'20', N'15.36', NULL, N'E-CDIU', N'DepEmprIn', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31658, N'Refrigeradora MASTERTECH', N'1', N'50', N'24', N'30', N'36', NULL, N'E-CDIU', N'DepEmprIn', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31659, N'Minisplit ComfortStar', N'2', N'1210', N'8', N'30', N'580.8', NULL, N'E-CDIU', N'DepEmprIn', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31660, N'Dispensador de Agua Honeywell', N'1', N'485', N'4', N'20', N'38.8', NULL, N'E-CDIU', N'DepEmprIn', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31661, N'Rack de servidores', N'2', N'60', N'24', N'30', N'86.4', NULL, N'E-CDIU', N'DepEmprIn', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31662, N'Panel LED 120x30cm', N'2', N'48', N'8', N'30', N'23.04', NULL, N'E-CDIU', N'OfiNueIngr', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31663, N'Computadora de Escritorio', N'3', N'125', N'6', N'20', N'45', NULL, N'E-CDIU', N'OfiNueIngr', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31664, N'Computadora de Escritorio Apple', N'1', N'150', N'8', N'30', N'36', NULL, N'E-CDIU', N'OfiNueIngr', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31665, N'Minisplit ComfortStar', N'1', N'1860', N'8', N'30', N'446.4', NULL, N'E-CDIU', N'OfiNueIngr', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31666, N'Televisor LED SONY', N'1', N'136', N'2', N'20', N'5.44', NULL, N'E-CDIU', N'OfiNueIngr', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31667, N'Router DLINK', N'1', N'50', N'24', N'30', N'36', NULL, N'E-CDIU', N'OfiNueIngr', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31668, N'Lampara Fluorescente ', N'1', N'20', N'4', N'20', N'1.6', NULL, N'E-CDIU', N'CDIUN2Baño', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31669, N'Lampara Fluorescente', N'1', N'20', N'6', N'20', N'2.4', NULL, N'E-CDIU', N'CDIUN1BañM', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31670, N'Lampara Fluorescente', N'1', N'20', N'6', N'20', N'2.4', NULL, N'E-CDIU', N'CDIUN1BañH', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31671, N'Luminaria 3x32', N'6', N'96', N'4', N'30', N'69.12', NULL, N'E-CDIU', N'CDIUN1Pasi', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31672, N'Luminaria 3x32 pasillo Nivel 2 ', N'2', N'96', N'4', N'30', N'23.04', NULL, N'E-CDIU', N'CDIUN2Pasi', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31673, N'Lampara Fluorescente de Escalera', N'2', N'20', N'4', N'30', N'4.8', NULL, N'E-CDIU', N'CDIUN1Pasi', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31674, N'Foco LED de Pared ', N'3', N'7', N'4', N'30', N'2.52', NULL, N'E-CDIU', N'CDIUN1Pasi', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31675, N'Lampara Flourescente ', N'2', N'20', N'8', N'30', N'9.6', NULL, N'E-CDIU', N'CDIUPastPa', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31676, N'Luminaria 3x32', N'1', N'96', N'8', N'30', N'23.04', NULL, N'E-CDIU', N'AsistEstu1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31677, N'Impresora HP LaserJet P1006', N'1', N'588', N'2', N'12', N'14.112', NULL, N'E-CDIU', N'AsistEstu1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31678, N'Computadora de Escritorio HP', N'1', N'125', N'8', N'30', N'30', NULL, N'E-CDIU', N'AsistEstu1', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31679, N'Ventilador de Pared Lasko', N'1', N'80', N'1', N'20', N'1.6', NULL, N'E-CDIU', N'AsistEstu1', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31680, N'Mini Refrigerdor Discovery ', N'1', N'51', N'24', N'30', N'36.72', NULL, N'E-CDIU', N'AsistEstu1', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31681, N'Cafetera Proctor Silex ', N'1', N'900', N'2', N'20', N'36', NULL, N'E-CDIU', N'AsistEstu1', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31682, N'Computadora de Escritorio', N'1', N'125', N'2', N'8', N'2', NULL, N'E-CDIU', N'AsistEstu2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31683, N'Luminaria 3x32', N'1', N'96', N'2', N'8', N'1.536', NULL, N'E-CDIU', N'AsistEstu2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31684, N'Ventilador de Pared Lasko', N'1', N'80', N'1', N'4', N'0.32', NULL, N'E-CDIU', N'AsistEstu2', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31685, N'Impresora HP LaserJet P1102w', N'1', N'480', N'1', N'4', N'1.92', NULL, N'E-CDIU', N'AsistEstu2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31686, N'Rack de servidores', N'1', N'50', N'24', N'30', N'36', NULL, N'E-CDIU', N'AsistEstu2', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31687, N'UPC ACP', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E-CDIU', N'AsistEstu2', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31688, N'Luminaria 3x32', N'1', N'96', N'2', N'18', N'3.456', NULL, N'E-CDIU', N'CDIUN1SReu', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31690, N'Luminaria 3x32', N'1', N'96', N'8', N'30', N'23.04', NULL, N'E-CDIU', N'Pastoral', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31691, N'Computadora de Escritorio', N'1', N'125', N'8', N'30', N'30', NULL, N'E-CDIU', N'Pastoral', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31692, N'Ventilador de Pared Lasko', N'1', N'80', N'2', N'20', N'3.2', NULL, N'E-CDIU', N'Pastoral', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31693, N'Luminaria 3x32', N'5', N'96', N'10', N'30', N'144', NULL, N'E-CDIU', N'AdminiAcad', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31694, N'Computadora de Escritorio ', N'6', N'125', N'10', N'30', N'225', NULL, N'E-CDIU', N'AdminiAcad', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31695, N'Computadora de Escritorio HP Para Estudiantes ', N'3', N'150', N'8', N'20', N'72', NULL, N'E-CDIU', N'AdminiAcad', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31696, N'UPS APC', N'3', N'15', N'24', N'30', N'32.4', NULL, N'E-CDIU', N'AdminiAcad', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31697, N'UPS FORZA', N'2', N'15', N'24', N'30', N'21.6', NULL, N'E-CDIU', N'AdminiAcad', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31698, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'E-CDIU', N'AdminiAcad', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31699, N'Ventilador de mesa VIVA', N'1', N'40', N'10', N'30', N'12', NULL, N'E-CDIU', N'AdminiAcad', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31700, N'Ventilador de Pedestal Lasko', N'3', N'60', N'10', N'30', N'54', NULL, N'E-CDIU', N'AdminiAcad', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31701, N'Impresora  HP Deskjet F4480', N'1', N'72', N'24', N'30', N'51.84', NULL, N'E-CDIU', N'AdminiAcad', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31702, N'Impresora HP Laser', N'1', N'588', N'24', N'30', N'423.36', NULL, N'E-CDIU', N'AdminiAcad', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31703, N'Impresora XEROX Versalink B405', N'1', N'1320', N'10', N'20', N'264', NULL, N'E-CDIU', N'AdminiAcad', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31704, N'Impresora HP LaserJet Pro M102w', N'1', N'552', N'10', N'30', N'165.6', NULL, N'E-CDIU', N'AdminiAcad', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31705, N'Luminaria 3x32', N'3', N'96', N'10', N'30', N'86.4', NULL, N'E-CDIU', N'BodeAdmAca', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31706, N'Dispensador de Agua Electrico OSTER', N'1', N'580', N'8', N'20', N'92.8', NULL, N'E-CDIU', N'BodeAdmAca', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31707, N'Cafetera de 12 tazas Oster ', N'1', N'900', N'2', N'20', N'36', NULL, N'E-CDIU', N'BodeAdmAca', N'ECo')
GO
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31708, N'Horno Microonda MASTERTECH', N'1', N'1052', N'2', N'20', N'42.08', NULL, N'E-CDIU', N'BodeAdmAca', N'ECo')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31709, N'Reflectores Fluorescente Parte frontal ', N'3', N'60', N'4', N'30', N'21.6', NULL, N'E-CDIU', N'LumExtCDIU', N'IExte')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31710, N'Reflector fluorescente Lateral Izquierdo (parqueo)', N'4', N'60', N'6', N'30', N'43.2', NULL, N'E-CDIU', N'LumExtCDIU', N'IExte')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31711, N'Reflector Fluorescente Parte trasera ', N'4', N'60', N'4', N'30', N'28.8', NULL, N'E-CDIU', N'LumExtCDIU', N'IExte')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31712, N'reflector Fluorescente Parte lateral Derecha (lado Escalera de emergencia )', N'2', N'60', N'4', N'30', N'14.4', NULL, N'E-CDIU', N'LumExtCDIU', N'IExte')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31713, N'Reflector LED Parte Lateral Derecha (Escalera de emergencia )', N'1', N'100', N'4', N'30', N'12', NULL, N'E-CDIU', N'LumEx1CDIU', N'IExte')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31714, N'Reflector Fluorescente Parte lateral izquierda(enfermeria )', N'2', N'60', N'4', N'30', N'14.4', NULL, N'E-CDIU', N'LumEx1CDIU', N'IExte')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31715, N'lampara fluorescente ', N'1', N'20', N'1', N'4', N'0.08', NULL, N'E-CDIU', N'CDIU1BoesE', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31716, N'equipo de impresora y escaner ', N'1', N'600', N'1', N'4', N'2.4', NULL, N'E-CDIU', N'Pastoral', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31717, N'luminaria de 3x32', N'1', N'96', N'10', N'22', N'21.12', NULL, N'E-CDIU', N'EnfermCDIU', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31718, N'minisplit', N'1', N'1452', N'10', N'22', N'319.44', NULL, N'E-CDIU', N'EnfermCDIU', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31719, N'computadora de escritorio HP', N'1', N'150', N'10', N'22', N'33', NULL, N'E-CDIU', N'EnfermCDIU', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31720, N'UPS CDP', N'1', N'15', N'24', N'30', N'10.8', NULL, N'E-CDIU', N'EnfermCDIU', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31721, N'OASIS FRIGIDARI', N'1', N'500', N'24', N'30', N'360', NULL, N'E-CDIU', N'EnfermCDIU', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31722, N'Lampara led', N'1', N'7', N'3', N'15', N'0.315', NULL, N'E-CDIU', N'EnfObsCDIU', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31723, N'Ventilador de pedestal Lasko', N'1', N'60', N'0.5', N'20', N'0.6', NULL, N'E-CDIU', N'EnfObsCDIU', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31724, N'Mini Refrigedora FRIGIDARI', N'1', N'200', N'24', N'30', N'144', NULL, N'E-CDIU', N'EnfObsCDIU', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31725, N'Rack de servidores', N'1', N'50', N'24', N'30', N'36', NULL, N'E-CDIU', N'EnfObsCDIU', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31726, N'foco incandesente', N'1', N'100', N'2', N'8', N'1.6', NULL, N'EB', N'EBN1Bode1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31727, N'foco incandecente', N'1', N'100', N'2', N'8', N'1.6', NULL, N'EB', N'EBN1Bode2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31728, N'Rack de servidores', N'1', N'60', N'24', N'30', N'43.2', NULL, N'EB', N'EBN1Bode2', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31729, N'Lampara fluorescente', N'1', N'20', N'2', N'8', N'0.32', NULL, N'EA', N'EAN1Bode1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31730, N'Lampara fluorescente', N'1', N'20', N'2', N'16', N'0.64', NULL, N'E-CDIU', N'cdiuN2escE', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31731, N'Lampara fluorescente', N'1', N'20', N'2', N'16', N'0.64', NULL, N'E-CDIU', N'CDIUN1EscE', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31732, N'Aire acondicion de techo Panasonic', N'1', N'4150', N'2', N'8', N'66.4', NULL, N'E-OWCC', N'Recep_N1', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31733, N'luminaria 3x32', N'1', N'96', N'4', N'20', N'7.68', NULL, N'E-OWCC', N'OWCCN1PasP', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31734, N'foco led', N'1', N'5', N'4', N'20', N'0.4', NULL, N'E-OWCC', N'OWCCN1PasP', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31735, N'lampara fluorescente', N'1', N'20', N'4', N'20', N'1.6', NULL, N'E-OWCC', N'OWCCN1PasP', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31736, N'Router FORTINET', N'1', N'12.5', N'24', N'30', N'9', NULL, N'E-OWCC', N'OWCCN1PasP', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31737, N'Luminaria de 2x32', N'2', N'64', N'4', N'18', N'9.216', NULL, N'E3', N'E3N1BañMuj', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31738, N'Luminaria 2x32', N'2', N'64', N'4', N'18', N'9.216', NULL, N'E3', N'E3N1BañHom', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31739, N'luminaria 4x18', N'2', N'72', N'2', N'8', N'2.304', NULL, N'E3', N'E3N1Bode1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31740, N'Luminaria de 4x32', N'4', N'128', N'6', N'20', N'61.44', NULL, N'E3', N'E3N1AviIns', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31741, N'Aire acondicionado Lenox', N'1', N'5000', N'6', N'20', N'600', NULL, N'E3', N'E3N1AviIns', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31742, N'Aire Acondicionado Lenox', N'1', N'5000', N'6', N'20', N'600', NULL, N'E3', N'E3N1Propul', N'AireAcond')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31743, N'Luminaria 4x32', N'4', N'128', N'6', N'20', N'61.44', NULL, N'E3', N'E3N1Propul', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31744, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'E3', N'E3N1Propul', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31745, N'Luminaria de 4x32', N'12', N'128', N'3', N'8', N'36.864', NULL, N'E3', N'E3N2S205AB', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31746, N'Luminaria de 4x32', N'2', N'128', N'4', N'21', N'21.504', NULL, N'E3', N'E3PasBioPC', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31747, N'Luminaria de 2x32', N'1', N'64', N'4', N'21', N'5.376', NULL, N'E3', N'E3N2PasTel', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31748, N'Router Fortinet', N'1', N'12.5', N'24', N'30', N'9', NULL, N'E3', N'E3N2PasTel', N'Misc')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31749, N'Luminaria de 2x32', N'1', N'64', N'4', N'21', N'5.376', NULL, N'E3', N'E3N2PasREd', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31750, N'Aire Acondiciomada por via ductos de ventilacion', N'1', N'3333', N'9', N'24', N'719.928', NULL, N'E-CDIU', N'DepProSoci', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31751, N'Luminaria fluorescente 4x32', N'1', N'128', N'3', N'16', N'6.144', NULL, N'E8', N'Maquicoser', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31752, N'Refrigeradora ', N'1', N'200', N'24', N'30', N'144', NULL, N'E8', N'Maquicoser', N'ERefrig')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31753, N'luminaria led de 2x18', N'1', N'36', N'8', N'25', N'7.2', NULL, N'E8', N'boglabOyP1', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31758, N'Ventilador LASKO ', N'1', N'50', N'6', N'22', N'6.6', NULL, N'E8', N'E8N1Prue3', N'VentForz')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31759, N'Aire condicionado de 60000btu', N'1', N'4700', N'2', N'12', N'112.8', NULL, N'E8', N'E8N1MioElc', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31760, N'Computadora de Escritorio HP', N'1', N'125', N'8', N'22', N'22', NULL, N'E8', N'E8N1MioElc', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31761, N'Luninaria fluorescente 3x32', N'2', N'96', N'8', N'26', N'39.936', NULL, N'E8', N'E8N1MioElc', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31762, N'Luminaria fluorescente de 4x32', N'9', N'128', N'4', N'16', N'73.728', NULL, N'E8', N'E8N2SAC2', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31763, N'Proyector Epson', N'1', N'500', N'4', N'16', N'32', NULL, N'E8', N'E8N2SAC2', N'EOfic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31764, N'Aire acondicionado', N'1', N'5000', N'4', N'16', N'320', NULL, N'E8', N'E8N2SAC2', N'Acondic')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31765, N'Luminaria fluorescente de 4x32', N'8', N'128', N'9', N'22', N'202.752', NULL, N'ER', N'ERN3recep', N'IInter')
INSERT [dbo].[InformacionArea] ([Item], [Descripcion], [CantidadEquipos], [Capacidad], [HorasDeUso], [Dias], [Consumo], [Imagen], [ID_edificio], [ID_area], [ID_subsistema]) VALUES (31766, N'Lampara fluorescente', N'2', N'15', N'4', N'22', N'2.64', NULL, N'ER', N'ERN3recep', N'IInter')
SET IDENTITY_INSERT [dbo].[InformacionArea] OFF
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'ACompr', N'Aire comprimido')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'Acondic', N'Aire acondicionado')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'AireAcond', N'Aire Acondicionado')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'Audv', N'Equipo audiovisual')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'ECo', N'Equipo de Cocina')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'EOfic', N'Equipo de oficina')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'EProcFab', N'Equipo de procesos de fabricación')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'EquipoP', N'Equipo de medicion ')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'EqupM', N'Equipo de prueba ')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'ERefrig', N'Equipo de refrigeración')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'Fem', N'Fuentes de Voltaje')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'HDPOT', N'Horno de potencia')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'IExte', N'Iluminación Exterior')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'IInter', N'Iluminación Interior')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'MElec', N'Motores electricos')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'Misc', N'Miscelaneos')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'Trafo', N'Transformador de potencia ')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'VentForz', N'Ventilacion Forzada')
ALTER TABLE [dbo].[InformacionArea]  WITH CHECK ADD  CONSTRAINT [Fk_area] FOREIGN KEY([ID_area])
REFERENCES [dbo].[Areas] ([ID_area])
GO
ALTER TABLE [dbo].[InformacionArea] CHECK CONSTRAINT [Fk_area]
GO
ALTER TABLE [dbo].[InformacionArea]  WITH CHECK ADD  CONSTRAINT [Fk_edificio] FOREIGN KEY([ID_edificio])
REFERENCES [dbo].[Edificios] ([ID_edificio])
GO
ALTER TABLE [dbo].[InformacionArea] CHECK CONSTRAINT [Fk_edificio]
GO
ALTER TABLE [dbo].[InformacionArea]  WITH CHECK ADD  CONSTRAINT [Fk_subsistema] FOREIGN KEY([ID_subsistema])
REFERENCES [dbo].[Subsistema] ([ID_subsistema])
GO
ALTER TABLE [dbo].[InformacionArea] CHECK CONSTRAINT [Fk_subsistema]
GO
/****** Object:  StoredProcedure [dbo].[pr_deleteArea]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_deleteArea]
@IDareaPr varchar(10)
as delete from Areas where ID_area = @IDareaPr






GO
/****** Object:  StoredProcedure [dbo].[pr_deleteEdificio]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_deleteEdificio]
@ID_edificioPr varchar(10)
as
delete from Edificios where ID_edificio = @ID_edificioPr







GO
/****** Object:  StoredProcedure [dbo].[pr_deleteInformacionArea]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_deleteInformacionArea]
@Item int
as
delete from InformacionArea where Item = @Item





GO
/****** Object:  StoredProcedure [dbo].[pr_deleteSubsistema]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_deleteSubsistema]
@IDsubsistemaPr varchar(10) 
as delete from Subsistema where ID_subsistema = @IDsubsistemaPr






GO
/****** Object:  StoredProcedure [dbo].[pr_getAreaData]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getAreaData]
as
select
a.ID_area as 'ID',
a.NombreDeArea as 'Nombre',
a.TipoArea as 'TipoArea',
a.Largo as 'Largo',
a.Ancho as 'Ancho',
a.CalcArea as 'CalcArea',
a.CantidadPersonas as 'CantidadPersonas',
a.Nivel as 'Nivel'
--a.ID_edificio as 'IDedificio'
from Areas a
order by a.NombreDeArea asc







GO
/****** Object:  StoredProcedure [dbo].[pr_getAreaDataLIKE]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getAreaDataLIKE]
@data varchar (50)
as 
select
a.ID_area as 'ID',
a.NombreDeArea as 'Nombre',
a.TipoArea as 'TipoArea',
a.Largo as 'Largo',
a.Ancho as 'Ancho',
a.CalcArea as 'CalcArea',
a.CantidadPersonas as 'CantidadPersonas',
a.Nivel as 'Nivel'
from Areas a
where a.NombreDeArea like '%'+@data+'%'
order by a.NombreDeArea asc







GO
/****** Object:  StoredProcedure [dbo].[pr_getEdificioData]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getEdificioData]
as
select
e.ID_edificio as 'ID',
e.NombreDeEdificio as 'Nombre'
from Edificios e
order by e.NombreDeEdificio asc






GO
/****** Object:  StoredProcedure [dbo].[pr_getEdificioDataLIKE]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getEdificioDataLIKE]
@data varchar(50)
as
select
e.ID_edificio as 'ID',
e.NombreDeEdificio as 'Nombre'
from Edificios e
where
e.NombreDeEdificio like '%'+@data+'%'
order by e.NombreDeEdificio asc






GO
/****** Object:  StoredProcedure [dbo].[pr_getInformacionAreaData]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getInformacionAreaData]
as
select
i.Item as 'Item',
i.Descripcion as 'Descripcion',
i.CantidadEquipos as 'Equipos',
a.CantidadPersonas as 'Personas',
a.TipoArea as 'Tipo',
i.Capacidad as 'Capacidad',
i.HorasDeUso as 'Horas',
i.Dias as 'Dias',
i.Consumo as 'Consumo',
e.ID_edificio as 'IDedificio',
e.NombreDeEdificio as 'Edificio',
a.ID_area as 'IDarea',
a.NombreDeArea as 'Area',
s.ID_subsistema as 'IDsubsistema',
s.NombreDeSubsistema as 'Subsistema'
from InformacionArea i 
inner join Edificios e on e.ID_edificio = i.ID_edificio
inner join Areas a on a.ID_area = i.ID_area
inner join Subsistema s on s.ID_subsistema = i.ID_subsistema
order by e.NombreDeEdificio




GO
/****** Object:  StoredProcedure [dbo].[pr_getInformacionAreaDataLIKE]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getInformacionAreaDataLIKE]
@data varchar(50)
as
select
i.Item as 'Item',
i.Descripcion as 'Descripcion',
i.CantidadEquipos as 'Equipos',
a.CantidadPersonas as 'Personas',
a.TipoArea as 'Tipo',

i.Capacidad as 'Capacidad',
i.HorasDeUso as 'Horas',
i.Dias as 'Dias',
i.Consumo as 'Consumo',
e.ID_edificio as 'IDedificio',
e.NombreDeEdificio as 'Edificio',
a.ID_area as 'IDarea',
a.NombreDeArea as 'Area',
s.ID_subsistema as 'IDsubsistema',
s.NombreDeSubsistema as 'Subsistema'
from InformacionArea i 
inner join Edificios e on e.ID_edificio = i.ID_edificio
inner join Areas a on a.ID_area = i.ID_area
inner join Subsistema s on s.ID_subsistema = i.ID_subsistema
where
a.TipoArea like '%'+@data+'%'
or
e.NombreDeEdificio like '%'+@data+'%'
or 
a.NombreDeArea like '%'+@data+'%'
or 
s.NombreDeSubsistema like '%'+@data+'%'




GO
/****** Object:  StoredProcedure [dbo].[pr_getSubsistemaData]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getSubsistemaData]
as
select 
s.ID_subsistema as 'ID',
s.NombreDeSubsistema as 'Nombre'
from Subsistema s
order by s.NombreDeSubsistema asc






GO
/****** Object:  StoredProcedure [dbo].[pr_getSubsistemaDataLIKE]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getSubsistemaDataLIKE]
@data varchar(50)
as
select 
s.ID_subsistema as 'ID',
s.NombreDeSubsistema as 'Nombre'
from Subsistema s
where
s.NombreDeSubsistema like '%'+@data+'%'
order by s.NombreDeSubsistema asc






GO
/****** Object:  StoredProcedure [dbo].[pr_insertArea]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_insertArea]
@IDareapr varchar(10),
@nombreAreapr varchar(500),
@TipoAreapr varchar (800),
@Largopr varchar (10),
@Anchopr varchar (10),
@CalcAreapr varchar (10),
@CantidadPersonaspr varchar(10),
@Nivelpr varchar(10)
as
insert into Areas(ID_area, NombreDeArea, TipoArea, Largo, Ancho, CalcArea, CantidadPersonas, Nivel) values (@IDareapr, @nombreAreapr, @TipoAreapr, @Largopr, @Anchopr, @CalcAreapr, @CantidadPersonaspr, @Nivelpr)






GO
/****** Object:  StoredProcedure [dbo].[pr_insertEdificio]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_insertEdificio]
@ID_EdificioPr varchar(10),
@nombre_edificioPr varchar(30)
as
insert into Edificios(ID_edificio, NombreDeEdificio) values (@ID_EdificioPr, @nombre_edificioPr)






GO
/****** Object:  StoredProcedure [dbo].[pr_insertInformacionArea]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_insertInformacionArea]
@DescripcionPr varchar(1000),
@CantidadEquiposPr varchar(10),
@CapacidadPr varchar(15),
@HorasDeUsoPr varchar(5),
@DiasPr varchar(10),
@ConsumoPr varchar(15),
@ID_edificioPr varchar(10),
@ID_areaPr varchar(10),
@ID_subsistemaPr varchar(10)
as
insert into InformacionArea(Descripcion,CantidadEquipos,Capacidad,HorasDeUso,Dias,Consumo,ID_edificio,ID_area,ID_subsistema)
values (@DescripcionPr,@CantidadEquiposPr,@CapacidadPr,@HorasDeUsoPr,@DiasPr,@ConsumoPr,@ID_edificioPr,@ID_areaPr,@ID_subsistemaPr)




GO
/****** Object:  StoredProcedure [dbo].[pr_insertSubsistema]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_insertSubsistema]
@IDsubsistemaPr varchar(10),
@NombreSubsistemaPr varchar(1000)
as 
insert into Subsistema(ID_subsistema,NombreDeSubsistema) values (@IDsubsistemaPr,@NombreSubsistemaPr)






GO
/****** Object:  StoredProcedure [dbo].[pr_updateArea]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_updateArea]
@IDareapr varchar(10),
@nombreAreapr varchar(500),
@TipoAreapr varchar (800),
@Largopr varchar (10),
@Anchopr varchar (10),
@CalcAreapr varchar (10),
@CantidadPersonaspr varchar(10),
@Nivelpr varchar(10)
as
update Areas
set
ID_area = @IDareapr,
NombreDeArea = @nombreAreapr,
TipoArea = @TipoAreapr,
Largo = @Largopr,
Ancho = @Anchopr,
CalcArea = @CalcAreapr,
CantidadPersonas = @CantidadPersonaspr,
Nivel = @Nivelpr
where ID_area = @IDareapr






GO
/****** Object:  StoredProcedure [dbo].[pr_updateEdificio]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_updateEdificio]
@ID_EdificioPr varchar(10),
@nombre_edificioPr varchar(30)
as
update Edificios
set
ID_edificio = @ID_EdificioPr,
NombreDeEdificio = @nombre_edificioPr
where ID_edificio = @ID_EdificioPr






GO
/****** Object:  StoredProcedure [dbo].[pr_updateInformacionArea]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_updateInformacionArea]
@Item int,
@DescripcionPr varchar(1000),
@CantidadEquiposPr varchar(10),
@CapacidadPr varchar(15),
@HorasDeUsoPr varchar(5),
@DiasPr varchar(10),
@ConsumoPr varchar(15),
@ID_edificioPr varchar(10),
@ID_areaPr varchar(10),
@ID_subsistemaPr varchar(10)
as
update InformacionArea
set 
Descripcion = @DescripcionPr,
CantidadEquipos = @CantidadEquiposPr,
Capacidad = @CapacidadPr,
HorasDeUso = @HorasDeUsoPr,
Dias = @DiasPr,
Consumo = @ConsumoPr,
ID_edificio = @ID_edificioPr,
ID_area = @ID_areaPr,
ID_subsistema = @ID_subsistemaPr
where Item = @Item





GO
/****** Object:  StoredProcedure [dbo].[pr_updateSubsistema]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_updateSubsistema]
@IDsubsistemaPr varchar(10),
@NombreSubsistemaPr varchar(1000)
as 
update Subsistema
set 
ID_subsistema = @IDsubsistemaPr,
NombreDeSubsistema = @NombreSubsistemaPr
where ID_subsistema = @IDsubsistemaPr







GO
/****** Object:  StoredProcedure [dbo].[qp_sys_ParseNumbersString]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[qp_sys_ParseNumbersString]
  @InputString nvarchar(4000) ,  
  @Separator char(1) = NULL  
                                                                                                                                                                                            
 AS  
    
                                                                                                                                                                                                                                                              
 BEGIN  
                                                                                                                                                                                                                                                           
 DECLARE @Numbers TABLE  
 (Number int)  
 DECLARE @Strings TABLE  
 (String nvarchar(4000))  
  
 SELECT @Separator = ISNULL(@Separator,',')   
  
 DECLARE @pos int,  
   @Num nvarchar(4000)  
  
 SELECT @pos = Charindex(@Separator,@InputString)  
 WHILE @pos <>0  
 BEGIN  
 SELECT @Num=Substring (@InputString,1,@pos-1)  
 IF IsNumeric(@Num)=1  
  INSERT INTO @Numbers  
   SELECT convert (int,str(@Num))  
 ELSE   
   INSERT INTO @Strings  
   SELECT @Num  
 SELECT @InputString = Substring(@InputString,@pos+1,len(@InputString))  
 SELECT @pos = Charindex(@Separator,@InputString)  
 END  
   
IF IsNumeric(@InputString)=1  
 INSERT INTO @Numbers  
  SELECT convert (int,str(@InputString))  
ELSE  
INSERT INTO @Strings  
   SELECT @InputString  
  
IF exists (select TOP 1 1 from @Numbers)  
 SELECT Number FROM @Numbers  
ELSE   
 SELECT String from @Strings  
                                                                                                                                                                                                                                                         
END  



GO
/****** Object:  StoredProcedure [dbo].[sp_ConsumoPorSubS]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[sp_ConsumoPorSubS]    Script Date: 5/1/2022 22:21:01 ******/

create Procedure [dbo].[sp_ConsumoPorSubS]

as
 --consumo por subsistema
SELECT        dbo.Subsistema.NombreDeSubsistema, SUM(convert(numeric(10,4), dbo.InformacionArea.Consumo)) AS ConsumoTotal
FROM            dbo.Areas INNER JOIN
                         dbo.InformacionArea ON dbo.Areas.ID_area = dbo.InformacionArea.ID_area INNER JOIN
                         dbo.Edificios ON dbo.InformacionArea.ID_edificio = dbo.Edificios.ID_edificio INNER JOIN
                         dbo.Subsistema ON dbo.InformacionArea.ID_subsistema = dbo.Subsistema.ID_subsistema
WHERE        (dbo.Subsistema.NombreDeSubsistema = 'Iluminación Interior' 
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo audiovisual'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire comprimido'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire acondicionado'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire Acondicionado'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de Cocina'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de oficina'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de procesos de fabricación'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de medicion '
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de prueba '
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de refrigeración'
				or dbo.Subsistema.NombreDeSubsistema = 'Fuentes de Voltaje '
				or dbo.Subsistema.NombreDeSubsistema = 'Horno de potencia '
				or dbo.Subsistema.NombreDeSubsistema = 'Iluminación Exterior '
				or dbo.Subsistema.NombreDeSubsistema = 'Motores electricos '
				or dbo.Subsistema.NombreDeSubsistema = 'Miscelaneos '
				or dbo.Subsistema.NombreDeSubsistema = 'Transformador de potencia  '
				or dbo.Subsistema.NombreDeSubsistema = 'Ventilacion Forzada '
				 ) 
				group by dbo.Subsistema.NombreDeSubsistema

GO
/****** Object:  StoredProcedure [dbo].[sp_eQUESTNivel1]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_eQUESTNivel1]
as
begin
 if object_id('tempdb..#Temp') > 0 
  begin
	drop table #Temp
  end

select *
INTO #Temp from (
Select A.NombreDeArea as 'Nombre',
A.TipoArea as 'tipo',
Convert(decimal(5,0),A.CantidadPersonas)  as 'cantidad',
A.CalcArea as 'calculo',
convert(numeric(10,1), A.CantidadPersonas)*20 as 'CFMpers',
Sb.NombreDeSubsistema as 'Nombresub',
Ia.Consumo AS 'Consumo'
from Areas A
inner join InformacionArea Ia on Ia.ID_area=A.ID_area 
inner join Subsistema Sb on Sb.ID_subsistema=Ia.ID_subsistema
where (a.Nivel=1)
)
as SourceTable 
PIVOT(max(Consumo) FOR Nombresub 
IN([Aire comprimido],[Aire Acondicionado],[Equipo audiovisual],[Equipo de Cocina],
[Equipo de oficina],[Equipo de procesos de fabricación],[Equipo de medicion],[Equipo de prueba],
[Equipo de refrigeración],[Fuentes de Voltaje],[Horno de potencia],[Iluminación Exterior],
[Iluminación Interior],[Motores electricos],[Miscelaneos],[Transformador de potencia],
[Ventilacion Forzada])
) AS PivotTable 

SELECT Nombre,tipo,cantidad,calculo,CFMpers,
convert(numeric(10,2),(isnull([Aire comprimido],0))) as 'AireComprimido'
,convert(numeric(10,2),(isnull([Aire Acondicionado],0))) as 'AireAcondicionado'
,convert(numeric(10,2),(isnull([Equipo audiovisual],0))) as 'EquipoAudiovisual'
,convert(numeric(10,2),(isnull([Equipo de Cocina],0))) as 'EquipoCocina'
,convert(numeric(10,2),(isnull([Equipo de oficina],0))) as 'EquipoOficina'
,convert(numeric(10,2),(isnull([Equipo de procesos de fabricación],0))) as 'ProcesosFabricacion'
,convert(numeric(10,2),(isnull([Equipo de medicion],0))) as 'EquipoMedicion'
,convert(numeric(10,2),(isnull([Equipo de prueba],0))) as 'EquipoPrueba'
,convert(numeric(10,2),(isnull([Equipo de refrigeración],0))) as 'EquipoRefrigeracion'
,convert(numeric(10,2),(isnull([Fuentes de Voltaje],0))) as 'FuentesVoltaje'
,convert(numeric(10,2),(isnull([Horno de potencia],0))) as 'HornoPotencia'
,convert(numeric(10,2),(isnull([Iluminación Exterior],0))) as 'IluminacionExterior'
,convert(numeric(10,2),(isnull([Iluminación Interior],0))) as 'IluminacionInterior'
,convert(numeric(10,2),(isnull([Motores electricos],0))) as 'MotoresElectricos'
,convert(numeric(10,2),(isnull([Miscelaneos],0))) as 'Miscelaneos'
,convert(numeric(10,2),(isnull([Transformador de potencia],0))) as 'TransformadorPotencia'
,convert(numeric(10,2),(isnull([Ventilacion Forzada],0))) as 'VentilacionForzada'
from #Temp group by tipo,Nombre,cantidad,calculo,CFMpers,[Aire comprimido],[Aire Acondicionado]
,[Equipo audiovisual],[Equipo de Cocina],[Equipo de oficina],[Equipo de procesos de fabricación]
,[Equipo de medicion],[Equipo de prueba],[Equipo de refrigeración],[Fuentes de Voltaje]
,[Horno de potencia],[Iluminación Exterior],[Iluminación Interior],[Motores electricos]
,[Miscelaneos],[Transformador de potencia],[Ventilacion Forzada]


end



GO
/****** Object:  StoredProcedure [dbo].[sp_eQUESTNivel2]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_eQUESTNivel2]
as
begin
 if object_id('tempdb..#Temp') > 0 
  begin
	drop table #Temp
  end

select *
INTO #Temp from (
Select A.NombreDeArea as 'Nombre',
A.TipoArea as 'tipo',
Convert(decimal(5,0),A.CantidadPersonas)  as 'cantidad',
A.CalcArea as 'calculo',
convert(numeric(10,1), A.CantidadPersonas)*20 as 'CFMpers',
Sb.NombreDeSubsistema as 'Nombresub',
Ia.Consumo AS 'Consumo'
from Areas A
inner join InformacionArea Ia on Ia.ID_area=A.ID_area 
inner join Subsistema Sb on Sb.ID_subsistema=Ia.ID_subsistema
where (a.Nivel=2)
)
as SourceTable 
PIVOT(max(Consumo) FOR Nombresub 
IN([Aire comprimido],[Aire Acondicionado],[Equipo audiovisual],[Equipo de Cocina],
[Equipo de oficina],[Equipo de procesos de fabricación],[Equipo de medicion],[Equipo de prueba],
[Equipo de refrigeración],[Fuentes de Voltaje],[Horno de potencia],[Iluminación Exterior],
[Iluminación Interior],[Motores electricos],[Miscelaneos],[Transformador de potencia],
[Ventilacion Forzada])
) AS PivotTable 

SELECT Nombre,tipo,cantidad,calculo,CFMpers,
convert(numeric(10,2),(isnull([Aire comprimido],0))) as 'AireComprimido'
,convert(numeric(10,2),(isnull([Aire Acondicionado],0))) as 'AireAcondicionado'
,convert(numeric(10,2),(isnull([Equipo audiovisual],0))) as 'EquipoAudiovisual'
,convert(numeric(10,2),(isnull([Equipo de Cocina],0))) as 'EquipoCocina'
,convert(numeric(10,2),(isnull([Equipo de oficina],0))) as 'EquipoOficina'
,convert(numeric(10,2),(isnull([Equipo de procesos de fabricación],0))) as 'ProcesosFabricacion'
,convert(numeric(10,2),(isnull([Equipo de medicion],0))) as 'EquipoMedicion'
,convert(numeric(10,2),(isnull([Equipo de prueba],0))) as 'EquipoPrueba'
,convert(numeric(10,2),(isnull([Equipo de refrigeración],0))) as 'EquipoRefrigeracion'
,convert(numeric(10,2),(isnull([Fuentes de Voltaje],0))) as 'FuentesVoltaje'
,convert(numeric(10,2),(isnull([Horno de potencia],0))) as 'HornoPotencia'
,convert(numeric(10,2),(isnull([Iluminación Exterior],0))) as 'IluminacionExterior'
,convert(numeric(10,2),(isnull([Iluminación Interior],0))) as 'IluminacionInterior'
,convert(numeric(10,2),(isnull([Motores electricos],0))) as 'MotoresElectricos'
,convert(numeric(10,2),(isnull([Miscelaneos],0))) as 'Miscelaneos'
,convert(numeric(10,2),(isnull([Transformador de potencia],0))) as 'TransformadorPotencia'
,convert(numeric(10,2),(isnull([Ventilacion Forzada],0))) as 'VentilacionForzada'
from #Temp group by tipo,Nombre,cantidad,calculo,CFMpers,[Aire comprimido],[Aire Acondicionado]
,[Equipo audiovisual],[Equipo de Cocina],[Equipo de oficina],[Equipo de procesos de fabricación]
,[Equipo de medicion],[Equipo de prueba],[Equipo de refrigeración],[Fuentes de Voltaje]
,[Horno de potencia],[Iluminación Exterior],[Iluminación Interior],[Motores electricos]
,[Miscelaneos],[Transformador de potencia],[Ventilacion Forzada]


end


--------------------------------------------------------------------------------------------
--EXEC sp_eQUESTNivel2 
GO
/****** Object:  StoredProcedure [dbo].[sp_eQUESTNivel3]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_eQUESTNivel3]
as
begin
 if object_id('tempdb..#Temp') > 0 
  begin
	drop table #Temp
  end

select *
INTO #Temp from (
Select A.NombreDeArea as 'Nombre',
A.TipoArea as 'tipo',
Convert(decimal(5,0),A.CantidadPersonas)  as 'cantidad',
A.CalcArea as 'calculo',
convert(numeric(10,1), A.CantidadPersonas)*20 as 'CFMpers',
Sb.NombreDeSubsistema as 'Nombresub',
Ia.Consumo AS 'Consumo'
from Areas A
inner join InformacionArea Ia on Ia.ID_area=A.ID_area 
inner join Subsistema Sb on Sb.ID_subsistema=Ia.ID_subsistema
where (a.Nivel=3)
)
as SourceTable 
PIVOT(max(Consumo) FOR Nombresub 
IN([Aire comprimido],[Aire Acondicionado],[Equipo audiovisual],[Equipo de Cocina],
[Equipo de oficina],[Equipo de procesos de fabricación],[Equipo de medicion],[Equipo de prueba],
[Equipo de refrigeración],[Fuentes de Voltaje],[Horno de potencia],[Iluminación Exterior],
[Iluminación Interior],[Motores electricos],[Miscelaneos],[Transformador de potencia],
[Ventilacion Forzada])
) AS PivotTable 

SELECT Nombre,tipo,cantidad,calculo,CFMpers,
convert(numeric(10,2),(isnull([Aire comprimido],0))) as 'AireComprimido'
,convert(numeric(10,2),(isnull([Aire Acondicionado],0))) as 'AireAcondicionado'
,convert(numeric(10,2),(isnull([Equipo audiovisual],0))) as 'EquipoAudiovisual'
,convert(numeric(10,2),(isnull([Equipo de Cocina],0))) as 'EquipoCocina'
,convert(numeric(10,2),(isnull([Equipo de oficina],0))) as 'EquipoOficina'
,convert(numeric(10,2),(isnull([Equipo de procesos de fabricación],0))) as 'ProcesosFabricacion'
,convert(numeric(10,2),(isnull([Equipo de medicion],0))) as 'EquipoMedicion'
,convert(numeric(10,2),(isnull([Equipo de prueba],0))) as 'EquipoPrueba'
,convert(numeric(10,2),(isnull([Equipo de refrigeración],0))) as 'EquipoRefrigeracion'
,convert(numeric(10,2),(isnull([Fuentes de Voltaje],0))) as 'FuentesVoltaje'
,convert(numeric(10,2),(isnull([Horno de potencia],0))) as 'HornoPotencia'
,convert(numeric(10,2),(isnull([Iluminación Exterior],0))) as 'IluminacionExterior'
,convert(numeric(10,2),(isnull([Iluminación Interior],0))) as 'IluminacionInterior'
,convert(numeric(10,2),(isnull([Motores electricos],0))) as 'MotoresElectricos'
,convert(numeric(10,2),(isnull([Miscelaneos],0))) as 'Miscelaneos'
,convert(numeric(10,2),(isnull([Transformador de potencia],0))) as 'TransformadorPotencia'
,convert(numeric(10,2),(isnull([Ventilacion Forzada],0))) as 'VentilacionForzada'
from #Temp group by tipo,Nombre,cantidad,calculo,CFMpers,[Aire comprimido],[Aire Acondicionado]
,[Equipo audiovisual],[Equipo de Cocina],[Equipo de oficina],[Equipo de procesos de fabricación]
,[Equipo de medicion],[Equipo de prueba],[Equipo de refrigeración],[Fuentes de Voltaje]
,[Horno de potencia],[Iluminación Exterior],[Iluminación Interior],[Motores electricos]
,[Miscelaneos],[Transformador de potencia],[Ventilacion Forzada]


end


--------------------------------------------------------------------------------------------
--EXEC sp_eQUESTNivel2 
GO
/****** Object:  StoredProcedure [dbo].[sp_TablaEQUEST_PRUEBA2]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_TablaEQUEST_PRUEBA2]
@ListaNombreA varchar(1000)
as
begin

 -- create temp table for branches in process.           
 DECLARE @ListaNombreA_Table TABLE (NombreA varchar(100))
  DECLARE @TotalCalculo numeric(10,2) 
-- set ListaTiposA list to process.         
 INSERT INTO @ListaNombreA_Table        
 EXECUTE qp_sys_ParseNumbersString @InputString = @ListaNombreA, @Separator = ',' 

 if object_id('tempdb..#Temp') > 0 
  begin
	drop table #Temp
  end
 --if #Temp 

select *
INTO #Temp from (
Select A.NombreDeArea as 'Nombre',
A.TipoArea as 'tipo',
Convert(decimal(5,0),A.CantidadPersonas)  as 'cantidad',
A.CalcArea as 'calculo',
convert(numeric(10,1), A.CantidadPersonas)*20 as 'CFMpers',
isnull(Sb.NombreDeSubsistema,0.00)  as 'Nombresub',
convert(numeric(10,2),Ia.Consumo ) AS 'Consumo'
from Areas A
inner join InformacionArea Ia on Ia.ID_area=A.ID_area 
inner join Subsistema Sb on Sb.ID_subsistema=Ia.ID_subsistema
inner join @ListaNombreA_Table lt
on lt.NombreA = a.NombreDeArea
)

as SourceTable 
PIVOT(max(Consumo) FOR Nombresub 
IN([Aire comprimido],[Aire Acondicionado],[Equipo audiovisual],[Equipo de Cocina],
[Equipo de oficina],[Equipo de procesos de fabricación],[Equipo de medicion ],[Equipo de prueba],
[Equipo de refrigeración],[Fuentes de Voltaje],[Horno de potencia],[Iluminación Exterior],
[Iluminación Interior],[Motores electricos],[Miscelaneos],[Transformador de potencia],
[Ventilacion Forzada])
) AS PivotTable  



select @TotalCalculo=sum(convert(numeric(10,1),calculo))  from #Temp 

select tipo,(sum(convert(numeric(10,1),calculo))/@TotalCalculo)*100  as 'Porcentaje', 
(sum(convert(numeric(10,1),calculo)) / sum(convert(numeric(10,1),cantidad))) as 'FT2/Personas',
sum(CFMpers) as 'CFM/Pers'
,(sum(convert(numeric(10,2),(isnull([Aire comprimido],0))))/ sum(convert(numeric(10,1),calculo))) as 'AireComprimido'
,(sum(convert(numeric(10,2),(isnull([Aire Acondicionado],0))))/ sum(convert(numeric(10,1),calculo))) as 'AireAcondicionado'
,(sum(convert(numeric(10,2),(isnull([Equipo audiovisual],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoAudiovisual'
,(sum(convert(numeric(10,2),(isnull([Equipo de Cocina],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoCocina'
,(sum(convert(numeric(10,2),(isnull([Equipo de oficina],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoOficina'
,(sum(convert(numeric(10,2),(isnull([Equipo de procesos de fabricación],0))))/ sum(convert(numeric(10,1),calculo))) as 'ProcesosFabricacion'
,(sum(convert(numeric(10,2),(isnull([Equipo de medicion ],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoMedicion'
,(sum(convert(numeric(10,2),(isnull([Equipo de prueba],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoPrueba'
,(sum(convert(numeric(10,2),(isnull([Equipo de refrigeración],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoRefrigeracion'
,(sum(convert(numeric(10,2),(isnull([Fuentes de Voltaje],0))))/ sum(convert(numeric(10,1),calculo))) as 'FuentesVoltaje'
,(sum(convert(numeric(10,2),(isnull([Horno de potencia],0))))/ sum(convert(numeric(10,1),calculo))) as 'HornoPotencia'
,(sum(convert(numeric(10,2),(isnull([Iluminación Exterior],0))))/ sum(convert(numeric(10,1),calculo))) as 'IluminacionExterior'
,(sum(convert(numeric(10,2),(isnull([Iluminación Interior],0))))/ sum(convert(numeric(10,1),calculo))) as 'IluminaciónInterior'
,(sum(convert(numeric(10,2),(isnull([Motores electricos],0))))/ sum(convert(numeric(10,1),calculo))) as 'MotoresElectricos'
,(sum(convert(numeric(10,2),(isnull([Miscelaneos],0))))/ sum(convert(numeric(10,1),calculo))) as 'Miscelaneos'
,(sum(convert(numeric(10,2),(isnull([Transformador de potencia],0))))/ sum(convert(numeric(10,1),calculo))) as 'TransformadorPotencia'
,(sum(convert(numeric(10,2),(isnull([Ventilacion Forzada],0))))/ sum(convert(numeric(10,1),calculo))) as 'VentilacionForzada'
from #Temp group by tipo

end
--------------------------------------------------------------------------------------------
--EXEC sp_TablaEQUEST_PRUEBA2 @ListaNombreA ='E4N1 Salon audiovisual ,E4N2 Auditorium Embajada Americana,E3N1 Automatizacion,E3N2 Arquitectura de Computadoras'
-------------------------------------------------------------------------------------------



GO
/****** Object:  StoredProcedure [dbo].[SPdeleteinfo]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPdeleteinfo]
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
	   DELETE FROM InformacionArea;
	   DELETE FROM Areas;	   
	   DELETE FROM Subsistema;
	   DELETE FROM Edificios;
    END TRY
    BEGIN CATCH
	   SELECT ERROR_MESSAGE();
	   IF @@TRANCOUNT > 0
		  ROLLBACK TRANSACTION;
    END CATCH

    IF @@TRANCOUNT > 0
	   COMMIT TRANSACTION;
END

GO
/****** Object:  StoredProcedure [dbo].[st_getAreaList]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getAreaList]
as
select a.ID_area as 'IDarea',
a.NombreDeArea as 'NombreArea',
a.TipoArea as 'TipoArea',
a.Largo as 'Largo',
a.Ancho as 'Ancho',
a.CalcArea as 'CalcArea',
a.CantidadPersonas as 'CantidadPersonas',
a.Nivel as 'Nivel'
from Areas a
order by a.NombreDeArea asc






GO
/****** Object:  StoredProcedure [dbo].[st_getAreaType]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getAreaType]
@NombreAreaPr varchar(100)
as
select 
a.TipoArea as 'Tipo',
a.CantidadPersonas as 'CantidadPersonas'
from Areas a
where a.NombreDeArea = @NombreAreaPr 






GO
/****** Object:  StoredProcedure [dbo].[st_getEdificioList]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getEdificioList]
as
select e.ID_edificio as 'IDedificio',
e.NombreDeEdificio as 'NombreEdificio'
from Edificios e
order by e.NombreDeEdificio asc







GO
/****** Object:  StoredProcedure [dbo].[st_getSubsistemaList]    Script Date: 11/8/2022 21:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getSubsistemaList]
as
select s.ID_subsistema as 'IDsubsistema',
s.NombreDeSubsistema as 'NombreSubsistema'
from Subsistema s
order by s.NombreDeSubsistema asc






GO
