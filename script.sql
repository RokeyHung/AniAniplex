USE [master]
GO
create database [AniAniplex];
USE [AniAniplex]
CREATE TABLE [dbo].[CATEGORY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id_category] [int] NULL,
	[category_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[categoryList]    Script Date: 4/6/2023 6:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[categoryList] as
SELECT 
      [category_name]
  FROM [AniAniplex].[dbo].[CATEGORY]
  group by [category_name]
GO
/****** Object:  Table [dbo].[FAVORITES]    Script Date: 4/6/2023 6:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAVORITES](
	[favorite_id] [int] IDENTITY(1,1) NOT NULL,
	[favorite_date] [datetime] NULL,
	[favorite_user] [int] NULL,
	[favorite_movie] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[favorite_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MOVIE_EPISODE]    Script Date: 4/6/2023 6:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOVIE_EPISODE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[movie_id] [int] NULL,
	[movie_episode_number] [int] NULL,
	[movie_episode_link] [varchar](255) NULL,
	[movie_episode_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MOVIES]    Script Date: 4/6/2023 6:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOVIES](
	[movie_id] [int] IDENTITY(3859001,1) NOT NULL,
	[movie_nameVN] [nvarchar](max) NULL,
	[movie_nameJP] [nvarchar](max) NULL,
	[movie_image] [varchar](255) NULL,
	[movie_poster] [varchar](255) NULL,
	[movie_description] [nvarchar](max) NULL,
	[movie_showtimes] [nvarchar](50) NULL,
	[movie_status] [nvarchar](50) NULL,
	[movie_director] [nvarchar](50) NULL,
	[movie_country] [nvarchar](16) NULL,
	[movie_followers] [int] NULL,
	[movie_views] [int] NULL,
	[movie_episode] [int] NULL,
	[movie_language] [nvarchar](16) NULL,
	[movie_studio] [nvarchar](24) NULL,
	[movie_season] [nvarchar](20) NULL,
	[movie_year] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SHARE_SOCIAL]    Script Date: 4/6/2023 6:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHARE_SOCIAL](
	[share_id] [int] IDENTITY(1,1) NOT NULL,
	[share_date] [datetime] NULL,
	[share_content] [nvarchar](max) NULL,
	[share_type] [nvarchar](20) NULL,
	[share_user] [int] NULL,
	[share_movie] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[share_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 4/6/2023 6:57:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[user_id] [int] IDENTITY(201001,1) NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[user_account] [varchar](20) NULL,
	[user_password] [varchar](16) NULL,
	[user_email] [varchar](64) NULL,
	[user_image] [varchar](150) NULL,
	[user_gender] [bit] NULL,
	[user_title] [nvarchar](15) NULL,
	[user_description] [nvarchar](max) NULL,
	[user_RegistraionDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CATEGORY] ON 

INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (1, 3859001, N'Anime Bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (2, 3859001, N'Seinen')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (3, 3859001, N'Romance')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (4, 3859001, N'Slice of Life')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (5, 3859001, N'Harem')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (6, 3859001, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (7, 3859001, N'Adventure')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (8, 3859002, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (9, 3859002, N'School')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (10, 3859002, N'Romance')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (11, 3859002, N'Slice of Life')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (12, 3859002, N'Comedy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (13, 3859003, N'Anime lẻ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (14, 3859003, N'Phim chiếu rạp')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (15, 3859003, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (16, 3859003, N'Demons')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (17, 3859003, N'Comedy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (18, 3859003, N'Adventure')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (19, 3859003, N'Magic')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (20, 3859003, N'Action')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (21, 3859004, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (22, 3859004, N'Shoujo Ai')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (23, 3859004, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (24, 3859004, N'Comedy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (25, 3859004, N'Magic')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (26, 3859005, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (27, 3859005, N'Slice of Life')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (28, 3859005, N'Game')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (29, 3859005, N'Comedy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (30, 3859005, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (31, 3859005, N'Adventure')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (32, 3859005, N'Action')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (33, 3859006, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (34, 3859006, N'Slice of Life')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (35, 3859006, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (36, 3859006, N'Comedy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (37, 3859006, N'Adventure')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (38, 3859006, N'Action')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (39, 3859007, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (40, 3859007, N'School')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (41, 3859007, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (42, 3859007, N'Action')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (43, 3859008, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (44, 3859008, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (45, 3859008, N'Comedy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (46, 3859008, N'Adventure')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (47, 3859008, N'Action')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (48, 3859009, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (49, 3859009, N'Shounen')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (50, 3859009, N'Romance')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (51, 3859009, N'Supernatural')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (52, 3859009, N'Demons')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (53, 3859009, N'Comedy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (54, 3859009, N'Mystery')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (55, 3859010, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (56, 3859010, N'Supernatural')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (57, 3859010, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (58, 3859010, N'Adventure')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (59, 3859010, N'Action')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (60, 3859011, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (61, 3859011, N'Romance')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (62, 3859011, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (63, 3859011, N'Comedy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (64, 3859011, N'Adventure')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (65, 3859011, N'Action')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (66, 3859012, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (67, 3859012, N'School')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (68, 3859012, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (69, 3859012, N'Demons')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (70, 3859012, N'Magic')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (71, 3859012, N'Action')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (72, 3859013, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (73, 3859013, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (74, 3859013, N'Comedy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (75, 3859013, N'Action')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (76, 3859014, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (77, 3859014, N'Sci-Fi')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (78, 3859014, N'School')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (79, 3859014, N'Romance')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (80, 3859014, N'Supernatural')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (81, 3859014, N'Magic')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (82, 3859014, N'Action')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (83, 3859015, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (84, 3859015, N'Fantasy')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (85, 3859015, N'Ecchi')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (86, 3859015, N'Drama')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (87, 3859015, N'Magic')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (88, 3859015, N'Action')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (89, 3859016, N'Anime bộ')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (90, 3859016, N'Shounen')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (91, 3859016, N'School')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (92, 3859016, N'Romance')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (93, 3859016, N'Drama')
INSERT [dbo].[CATEGORY] ([id], [movie_id_category], [category_name]) VALUES (94, 3859016, N'Music')
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
GO
SET IDENTITY_INSERT [dbo].[FAVORITES] ON 

INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (1, CAST(N'2023-02-16T12:41:36.000' AS DateTime), 201001, 3859009)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (2, CAST(N'2023-02-19T14:33:11.000' AS DateTime), 201001, 3859006)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (3, CAST(N'2023-01-18T05:03:41.000' AS DateTime), 201001, 3859001)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (4, CAST(N'2023-02-28T04:29:35.000' AS DateTime), 201001, 3859016)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (5, CAST(N'2023-02-08T04:18:24.000' AS DateTime), 201001, 3859004)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (6, CAST(N'2023-02-24T19:07:29.000' AS DateTime), 201001, 3859002)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (7, CAST(N'2023-03-25T21:55:45.000' AS DateTime), 201001, 3859008)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (9, CAST(N'2023-01-17T06:30:50.000' AS DateTime), 201001, 3859010)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (10, CAST(N'2023-01-03T02:18:15.000' AS DateTime), 201001, 3859007)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (11, CAST(N'2023-01-08T06:46:19.000' AS DateTime), 201001, 3859013)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (12, CAST(N'2023-03-17T07:28:58.000' AS DateTime), 201001, 3859015)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (13, CAST(N'2023-01-06T02:20:25.000' AS DateTime), 201002, 3859014)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (14, CAST(N'2023-02-11T04:29:05.000' AS DateTime), 201002, 3859005)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (15, CAST(N'2023-03-01T14:32:58.000' AS DateTime), 201002, 3859010)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (16, CAST(N'2023-01-07T18:48:36.000' AS DateTime), 201002, 3859006)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (17, CAST(N'2023-03-16T06:32:53.000' AS DateTime), 201002, 3859013)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (18, CAST(N'2023-03-04T15:08:08.000' AS DateTime), 201002, 3859007)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (19, CAST(N'2023-03-13T09:46:52.000' AS DateTime), 201002, 3859003)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (20, CAST(N'2023-02-27T22:06:45.000' AS DateTime), 201002, 3859011)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (21, CAST(N'2023-02-06T23:45:56.000' AS DateTime), 201003, 3859003)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (22, CAST(N'2023-01-07T03:49:12.000' AS DateTime), 201003, 3859014)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (23, CAST(N'2023-01-08T04:11:05.000' AS DateTime), 201003, 3859008)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (24, CAST(N'2023-03-01T05:55:38.000' AS DateTime), 201003, 3859013)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (25, CAST(N'2023-03-17T05:58:19.000' AS DateTime), 201003, 3859015)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (26, CAST(N'2023-03-01T05:32:44.000' AS DateTime), 201003, 3859012)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (27, CAST(N'2023-03-12T11:06:01.000' AS DateTime), 201003, 3859004)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (28, CAST(N'2023-01-02T11:56:58.000' AS DateTime), 201003, 3859005)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (29, CAST(N'2023-03-14T12:46:57.000' AS DateTime), 201003, 3859016)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (30, CAST(N'2023-02-09T14:59:24.000' AS DateTime), 201003, 3859009)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (31, CAST(N'2023-03-14T07:36:22.000' AS DateTime), 201004, 3859005)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (32, CAST(N'2023-01-14T23:42:08.000' AS DateTime), 201004, 3859002)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (33, CAST(N'2023-01-06T10:23:07.000' AS DateTime), 201004, 3859003)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (34, CAST(N'2023-01-06T19:16:45.000' AS DateTime), 201004, 3859006)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (35, CAST(N'2023-03-25T06:14:28.000' AS DateTime), 201004, 3859001)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (36, CAST(N'2023-03-19T07:36:35.000' AS DateTime), 201004, 3859015)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (37, CAST(N'2023-03-14T01:57:05.000' AS DateTime), 201004, 3859013)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (38, CAST(N'2023-02-07T10:10:48.000' AS DateTime), 201005, 3859008)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (39, CAST(N'2023-01-09T19:44:21.000' AS DateTime), 201005, 3859014)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (40, CAST(N'2023-01-31T21:04:54.000' AS DateTime), 201005, 3859004)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (41, CAST(N'2023-02-25T08:31:34.000' AS DateTime), 201005, 3859009)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (42, CAST(N'2023-02-27T21:46:20.000' AS DateTime), 201005, 3859006)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (43, CAST(N'2023-01-16T21:59:40.000' AS DateTime), 201005, 3859010)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (44, CAST(N'2023-03-25T00:38:22.000' AS DateTime), 201005, 3859003)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (45, CAST(N'2023-02-16T06:03:39.000' AS DateTime), 201005, 3859011)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (46, CAST(N'2023-02-05T00:28:25.000' AS DateTime), 201005, 3859015)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (47, CAST(N'2023-02-23T11:41:13.000' AS DateTime), 201005, 3859005)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (48, CAST(N'2023-03-15T14:11:03.000' AS DateTime), 201005, 3859001)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (49, CAST(N'2023-01-18T22:42:33.000' AS DateTime), 201005, 3859016)
INSERT [dbo].[FAVORITES] ([favorite_id], [favorite_date], [favorite_user], [favorite_movie]) VALUES (50, CAST(N'2023-02-06T21:47:16.000' AS DateTime), 201005, 3859013)
SET IDENTITY_INSERT [dbo].[FAVORITES] OFF
GO
SET IDENTITY_INSERT [dbo].[MOVIE_EPISODE] ON 

INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (1, 3859001, 1, N'https://www.youtube.com/embed/V3wcFVX5PGs', CAST(N'2022-12-11T03:19:59.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (2, 3859001, 2, N'https://www.youtube.com/embed/DTil5QCQkZk', CAST(N'2023-01-31T19:32:15.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (3, 3859002, 1, N'https://www.youtube.com/embed/ckXXDi6HC8Q', CAST(N'2022-12-17T11:56:54.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (4, 3859002, 2, N'https://www.youtube.com/embed/9fE3wFPFvvM', CAST(N'2023-03-10T02:42:04.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (5, 3859003, 1, N'https://www.youtube.com/embed/LDZQXsr_Gl0', CAST(N'2023-03-12T12:56:29.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (6, 3859004, 1, N'https://www.youtube.com/embed/oiR99s5g63E', CAST(N'2023-03-10T19:48:27.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (7, 3859004, 2, N'https://www.youtube.com/embed/_TyL5BrozVk', CAST(N'2023-03-10T11:17:29.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (8, 3859004, 3, N'https://www.youtube.com/embed/relH1l8ihTU', CAST(N'2023-02-14T20:35:19.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (9, 3859007, 1, N'https://www.youtube.com/embed/uBwhg7IRpkc', CAST(N'2022-12-26T03:05:41.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (10, 3859007, 2, N'https://www.youtube.com/embed/Kaz6MFjYqxw', CAST(N'2023-02-10T03:36:38.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (11, 3859008, 2, N'https://www.youtube.com/embed/TVi5C6kQjkQ', CAST(N'2023-02-01T18:46:58.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (12, 3859009, 1, N'https://www.youtube.com/embed/ajjZ-9gW6e8', CAST(N'2023-01-26T08:50:35.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (13, 3859009, 2, N'https://www.youtube.com/embed/SJye3J7qSec', CAST(N'2023-02-17T16:08:04.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (14, 3859009, 3, N'https://www.youtube.com/embed/so5-RxW1of0', CAST(N'2023-02-17T16:08:04.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (15, 3859010, 1, N'https://www.youtube.com/embed/1XHHsvJxF2E', CAST(N'2023-02-03T11:38:54.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (16, 3859010, 2, N'https://www.youtube.com/embed/WEjIdwpojMg', CAST(N'2022-12-14T05:52:16.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (17, 3859013, 1, N'https://www.youtube.com/embed/N9xHWd2qR5I', CAST(N'2022-12-02T05:48:04.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (18, 3859013, 2, N'https://www.youtube.com/embed/gau5GyBjoZw', CAST(N'2023-01-07T06:59:54.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (19, 3859013, 3, N'https://www.youtube.com/embed/S_k8yn1pyDY', CAST(N'2023-01-07T06:59:54.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (20, 3859014, 1, N'https://www.youtube.com/embed/BIUw-PG9hIU', CAST(N'2023-01-04T03:36:34.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (21, 3859015, 1, N'https://www.youtube.com/embed/MPpBhLUQVmE', CAST(N'2023-01-09T15:29:11.000' AS DateTime))
INSERT [dbo].[MOVIE_EPISODE] ([id], [movie_id], [movie_episode_number], [movie_episode_link], [movie_episode_date]) VALUES (22, 3859017, 1, N'https://www.youtube.com/embed/qPSEBIprzsY', CAST(N'2023-01-04T20:18:41.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[MOVIE_EPISODE] OFF
GO
SET IDENTITY_INSERT [dbo].[MOVIES] ON 

INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859001, N'Cuộc Sống Nông Dân Ở Thế Giới Khác', N'Isekai Nonbiri Nouka, Farming Life in Another World', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237387/AniAniplex/images/animevsub-cDQCDt5v9X_rtmtch.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237387/AniAniplex/images/animevsub-Ob2uhpiLRh_gt8td1.png', N'Qua đời vì bệnh tật ở tuổi 39, Machio Hiraku được trao cơ hội đến một thế giới khác. Khi được Thượng đế hỏi ông mong muốn điều gì, ông chọn có một cơ thể khỏe mạnh, điều ước thứ hai, ông chọn cuộc sống bình yên, điều ước thứ ba là có thể biết tiếng địa phương và điều ước cuối cùng là có thể trở thành một nông dân.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 4047, 2211060, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-11-11T04:54:04.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859002, N'Thiên Sứ Nhà Bên', N'Otonari no Tenshi-sama ni Itsunomanika Dame Ningen ni Sareteita Ken, The Angel Next Door Spoils Me Rotten', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237380/AniAniplex/images/animevsub-UN1VhCTcIz_dvqgum.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237380/AniAniplex/images/animevsub-VzNyDhjTzC_q0rqnj.jpg', N'Hàng xóm kế bên căn hộ của Fujimiya Amane chính là nữ sinh xinh đẹp nhất trường cậu, Shiina Mahiru. Họ vốn chẳng có mối liên hệ nào cho đến một ngày mưa tầm tã, Amane tình nguyện đưa chiếc ô của mình cho cô bạn hàng xóm xinh đẹp tựa thiên thần, cả hai đã bắt đầu tương tác với nhau theo một cách kì quặc. Chẳng thể chịu được lối sinh hoạt cẩu thả khi sống một mình của Amane, Mahiru đã quyết định sẽ chăm sóc cậu từ những điều nhỏ nhất. Một Mahiru thiếu thốn sự gắn kết với gia đình đang dần mở lòng hơn, cùng với một Amane hay tự ti đang ngày một đổi thay theo chiều hướng tích cực. Khoảng cách giữa hai con người không chút thành thật ấy đang từng bước thu hẹp lại...', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 9161, 2118160, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-12-15T23:02:24.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859003, N'Tensei shitara Slime Datta Ken Movie: Guren no Kizuna-hen', N'Chuyển sinh thành Slime Movie, That Time I Got Reincarnated as a Slime: The Movie - Scarlet Bond, TenSura, That Time I Got Reincarnated as a Slime Movie', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237385/AniAniplex/images/animevsub-iDvWCparAc_o1lpgx.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237387/AniAniplex/images/animevsub-RtMNrPD9eP_hcdura.jpg', N'Phần Movie của Tensei shitara Slime Datta Ken..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 8542, 1928872, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-12-09T11:07:50.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859004, N'Cuộc Cách Mạng Ma Thuật Của Công Chúa Chuyển Sinh Và Tiểu Thư Thiên Tài', N'Tensei Oujo to Tensai Reijou no Mahou Kakumei, The Magical Revolution of the Reincarnated Princess and the Genius Young Lady, Tenten Kakumei', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237388/AniAniplex/images/animevsub-SKobxDEvm6_ittkwh.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237384/AniAniplex/images/animevsub-XStfOjvBYS_hasbz6.jpg', N'Bất chấp việc được cho là kém cỏi với phép thuật thông thường, Công chúa Anisphia đã bất chấp kỳ vọng của tầng lớp quý tộc bằng cách phát triển "ma thuật học", một lý thuyết ma thuật độc đáo dựa trên ký ức từ kiếp trước của cô. Một ngày nọ, cô chứng kiến ​​nữ quý tộc tài giỏi Euphyllia bị tước bỏ danh hiệu quốc vương tiếp theo của vương quốc một cách bất công. Đó là khi Anisphia vạch ra một kế hoạch để giúp Euphyllia lấy lại danh tiếng của mình - điều này đã khiến họ sống cùng nhau và cùng nghiên cứu phép thuật! Tuy nhiên, hai người phụ nữ này không biết rằng cuộc gặp gỡ tình cờ của họ sẽ thay đổi không chỉ tương lai của chính họ mà còn của cả thế giới..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 2232, 1412014, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-11-29T00:22:23.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859005, N'Itai no wa Iya nano de Bougyoryoku ni Kyokufuri Shitai to Omoimasu. II', N'BOFURI: I Don"t Want to Get Hurt, so I"ll Max Out My Defense Season 2, BOFURI: I Don"t Want to Get Hurt, so I"ll Max Out My Defense 2nd Season, I hate being in pain, so I think I"ll make a full defense build 2, I Hate Getting Hurt, So', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237383/AniAniplex/images/animevsub-qZFc0dx13g_ljyuye.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237387/AniAniplex/images/animevsub-WL0L1hkIzp_zst3ns.jpg', N'Xin chú ý, phần 2 của Itai no wa Iya nano de Bougyoryoku ni Kyokufuri Shitai to Omoimasu..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 4970, 2874676, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-11-27T13:28:38.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859006, N'Ẩm Thực Dã Ngoại Tại Dị Giới Với Kỹ Năng Không Tưởng', N'Tondemo Skill de Isekai Hourou Meshi, Campfire Cooking in Another World with my Absurd Skill, Regarding the Display of an Outrageous Skill Which Has Incredible Powers', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237382/AniAniplex/images/animevsub-EGLWMCSU4P_zcrm32.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237386/AniAniplex/images/animevsub-9b056nFpz8_zukp3q.jpg', N'Mukouda Tsuyomi, một chàng trai Nhật Bản hiện đại được triệu hồi sang thế giới của kiếm và ma thuật... Cứ tưởng sẽ có những chuyến phiêu lưu vĩ đại đang chờ đợi mình nhưng thực ra Makouda chỉ là một thường dân bị dính vào lễ [Triệu hồi Anh Hùng]. Nhận ra bản chất thật sự của việc triệu hồi anh hùng, Makouda đã rời đi và tự sinh sống tại thế giới mới với skill độc đáo [Siêu thị trực tuyến]. Và trên hết, hàng loạt những kẻ kỳ lạ bị thu hút bởi thức ăn từ thế giới hiện đại đã xuất hiện. Từ đó cuộc phiêu lưu của anh chàng bắt đầu..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 7590, 3920028, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-11-06T15:21:24.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859007, N'Phù Thủy Băng Kiếm Sẽ Thống Trị Thế Giới', N'Hyouken no Majutsushi ga Sekai wo Suberu, The Iceblade Sorcerer Shall Rule the World', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237383/AniAniplex/images/animevsub-PIdwxrLlcn_yoq3pv.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237383/AniAniplex/images/animevsub-wAHP9sgxOr_yleg8p.jpg', N'Học viện ma thuật Aold có tiếng đã đào tạo rất nhiều pháp sư mạnh mẽ. Chàng trai Ray White quyết định nhập học vào đây với tư cách học sinh duy nhất đến từ một gia đình bình thường khi năm học mới bắt đầu. Xung quanh cậu là những quý tộc và những gia đình pháp sư khinh bỉ cậu. Nhưng họ không biết. Cậu là người đã đạt được rất nhiều thành tựu trong trận chiến ở Viễn Đông trước đây, và giờ được xem là người mạnh nhất trong 7 đại pháp sư của thế giới. Mặc dù bị xem thường với tư cách một pháp sư, cậu cuối cùng cũng phô diễn sức mạnh cho những kẻ xung quanh..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 5878, 3128401, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-12-01T00:58:56.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859008, N'Chuyển Sinh Để Nâng cao Kỹ Năng: Vua Anh Hùng Trở Thành Kỵ Sĩ Học Việc Mạnh Nhất Thế Giới', N'Eiyuuou, Bu wo Kiwameru Tame Tenseisu: Soshite, Sekai Saikyou no Minarai Kishi♀, Reborn to Master the Blade: From Hero-King to Extraordinary Squire ♀', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237381/AniAniplex/images/animevsub-hOOUUzsV26_n72diq.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237382/AniAniplex/images/animevsub-YKqwxHUqqH_fktmk7.jpg', N'Với sự phù hộ của Nữ thần, ngài đã trở thành Thánh Hiệp Sĩ và dựng xây nên một Đế chế. Thời gian thấm thoát trôi, ngài dần trở nên già nua, và khi thiên đàng đang vẫy gọi, thì bỗng một Nữ thần xuất hiện, hỏi về ước nguyện cuối cùng của ngài. Ngài ước được tái sinh trong tương lai. Ngài đã dành trọn cả cuộc đời cho người dân của mình, nên đã không còn thời gian để hoàn thiện võ nghệ. Vì thế lần này, ngài đã ước được sống cho chính mình, tôi luyện cơ thể đến cực hạn. Nữ thần tuân theo mong muốn của ngài. Trong tương lai xa, Nhà vua sẽ tái sinh trở thành con gái của một gia đình Hiệp sĩ nổi tiếng. Và trong một số trường hợp, cô được coi là một thất bại của Hiệp Sĩ, tuy nhiên... Kể từ đó, huyền thoại về một môn đồ Hiệp Sĩ mạnh nhất, xinh đẹp nhất trên thế giới đã bắt đầu..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 3392, 4486717, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-12-16T12:42:54.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859009, N'Suy Luận Hư Cấu Mùa 2', N'Kyokou Suiri SS2, Kyokou Suiri 2nd Season, In/Spectre Season 2, In/Spectre 2nd Season, Kyokou Suiri Season 2', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237380/AniAniplex/images/animevsub-CWb2bUMVSn_jlc7qe.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237384/AniAniplex/images/animevsub-N2Hv16lsyC_npvzih.jpg', N'Mùa thứ 2 của Kyokou Suiri..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 7169, 3193158, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-11-23T10:16:24.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859010, N'Âm Dương Sư Mạnh Nhất Chuyển Sinh', N'Saikyou Onmyouji no Isekai Tenseiki, The Reincarnation of the Strongest Exorcist in Another World, The Reincarnation of the Strongest Onmyouji in Another World', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237378/AniAniplex/images/animevsub-w7DFa3WhAo_gths8b.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237374/AniAniplex/images/animevsub-GM4Ekg6VY5_k8iup7.jpg', N'Bộ tiểu thuyết gốc tập trung vào Haruyoshi, người được mệnh danh là một Âm Dương sư mạnh nhất trên thế giới. Sau đó, anh bị bạn bè của mình phản bội và bên bờ vực của cái chết, anh mong muốn được hạnh phúc trong cuộc đời tiếp theo của mình. Ngay lúc đó, anh đã thử một câu thần chú tái sinh bí mật. Phép thuật thành công và anh được đầu thai, nhưng bằng cách nào đó nó ở một thế giới khác. Anh được chuyển sinh vào một gia đình pháp sư nổi tiếng, nhưng được đánh giá là không có khả năng phép thuật. Tuy nhiên, anh sớm nhận ra rằng phép thuật trong thế giới này chẳng là gì so với các Âm Dương thuật cũ của mình và anh tuyên bố rằng bản thân không cần phép thuật. Do đó, anh bắt đầu cuộc sống dễ dàng của mình trong một thế giới khác với Âm Dương thuật và vô số sinh vật yêu quái cũng phục tùng anh ta.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 9782, 4831277, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-11-21T15:57:25.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859011, N'DanMachi IV Part 2', N'Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka IV: Fuka Shou - Yakusai-hen, Is It Wrong to Try to Pick Up Girls in a Dungeon? IV Part 2, DanMachi 4th Season Part 2, Is It Wrong That I Want to Meet You in a Dungeon 4th Season Part 2', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237376/AniAniplex/images/animevsub-hVLo01ZYes_vtdjin.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237377/AniAniplex/images/animevsub-5st0gqWy1L_f75yxz.jpg', N'Phần 4 Part 2 của DanMachi.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 2040, 3317053, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-11-02T23:12:14.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859012, N'Học Viện Ma Vương 2', N'Học Viện Ma Vương SS2, Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou II, The Misfit of Demon King Academy II, Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237381/AniAniplex/images/animevsub-vaTH9lSxMg_nvsgxo.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237379/AniAniplex/images/animevsub-SN3jKFqE0a_scbfh1.png', N'Phần 2 Học Viện Ma Vương, Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou. nè!.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 7065, 1491591, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-12-28T14:38:35.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859013, N'Ta Muốn Trở Thành Chúa Tể Bóng Tối!', N'Kage no Jitsuryokusha ni Naritakute!, The Eminence in Shadow, Shadow Garden, Tao Muốn Làm Chúa Hề Bóng Tối', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237375/AniAniplex/images/animevsub-PeZHKapawP_ng4sfp.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237375/AniAniplex/images/animevsub-VQywVOiNu1_fqeyps.jpg', N'Như bao người ngưỡng mộ những anh hùng khi còn nhỏ, nhân vật chính của chúng ta lại ngưỡng mộ những con người trong bóng tối. Sau khi giấu đi khả năng thật sự và sống 1 cuộc đời tầm thường của 1 thường dân vào ban ngày trong khi trải qua những khóa huấn luyện điên rồ vào ban đêm, anh ta cuối cùng cũng được chuyển sinh sang thê giới khác. Người đàn ông ấy, người mà chỉ phô diễn sức mạnh trong bóng tối, những người hầu cận và cùng với đó là tổ chức lớn mạnh của anh… Đây là câu chuyện về một chàng trai, người luôn khao khát sức mạnh trong màn đêm, trị vì thế giới ngầm ở thế giới khác.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 6661, 1378512, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-11-07T06:53:49.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859014, N'Mahouka Koukou no Rettousei: Raihousha-hen', N'The Irregular at Magic High School: Visitor Arc', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237373/AniAniplex/images/animevsub-UsmSNURxEV_cnscl2.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237374/AniAniplex/images/animevsub-daCfJGd28x_rxykim.jpg', N'Bạn cùng lớp của Shiba Miyuki, Kitayama Shizuku đang trên đường đi du học. Đối với các pháp sư, điều này bình thường là không thể, vì cho phép gen của một người có thể sử dụng ma thuật bên ngoài biên giới của đất nước họ tương đương với việc từ bỏ bí mật quốc gia. Nhưng nó được phép xảy ra trong một chương trình trao đổi trường hợp. Và đó là cách Angelina Kudou Shields đến Nhật Bản từ USNA để học tại trường Đệ Nhất.Khoảng thời gian Lina đến Nhật Bản, các pháp sư bắt đầu bị tấn công bởi một sinh vật bí ẩn khiến nạn nhân của anh ta bị rút hết máu. Liệu Tatsuya có thể khám phá ra danh tính của "Ma cà rồng"?', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 2493, 4273032, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-12-21T15:01:25.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859015, N'Thất Nghiệp Chuyển Sinh 2', N'Mushoku Tensei: Isekai Ittara Honki Dasu 2nd Season, Mushoku Tensei: Jobless Reincarnation Part 2', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237378/AniAniplex/images/animevsub-NZsnbVRDc1_kkflz6.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237373/AniAniplex/images/animevsub-SqrP6t8qKM_rbwvap.jpg', N'Một tên NEET 34 tuổi đã bị đuổi khỏi nhà sau cái chết của gia đình hắn. Hắn ngăn chặn một nhóm người thiếu niên ra khỏi một chiếc xe tải đang chạy và đã đẩy một người trong nhóm người đó ra thành công trước khi hắn chết. Tỉnh dậy trong cơ thể của một đứa trẻ, hắn nhận ra mình đã được chuyển sinh tới thế giới của kiếm và phép thuật. Trong khi hắn vẫn giữ lại cái tính biến thái, hắn quyết tâm sẽ trở nên thành công ở cuộc sống mới, với cái tên Rudeus Greyrat. Bởi vì tính cách năng động và rèn luyện ở tuổi trẻ, Rudeus trở nên điêu luyện với phép thuật. Trong khi còn nhỏ, cậu trở thành học sinh của Roxy Migurdia, bạn của Sylphiette, và là giáo viên của Eris Boreas Greyrat. Sau đó, thảm họa dịch chuyển đã chia cắt mọi người trên khắp thế giới, và Rudeus quyết tâm sẽ đưa Eris về nhà. Cuộc hành trình của cậu bắt đầu, Rudeus nhận được lời khuyên từ một vật thể tự xưng là Thần Con người và làm bạn với Ruijerd Supardia. Sau khi đưa Eris về nhà thành công, sự hiểu nhầm của Rudeus đã khiến tim cậu tan nát. Hai năm sau đó, sự kiện Eris bỏ Rudeus và ra đi đã khiến cậu bị liệt dương. Cậu nhập học ở Đại học Phép thuật Ranoa theo lời khuyên từ Thần Con người để chữa chứng bệnh của cậu. Ở đây, cậu đã gặp lại Sylphiette, người đã chữa chứng bệnh của cậu và họ đám cưới ngay sau đó. Rudeus nhận được nhiệm vụ tham gia cha của cậu để cứu mẹ cậu, và bất tuân lời khuyên của Thần Con người để làm như thế. Sau nhiệm vụ, cậu phát triển quan hệ của mình với Roxy và muốn cô trở thành vợ thứ hai của mình. Cậu sau đó gặp được bản thể tương lai của cậu, người đã cảnh báo cậu rằng Thần Con người sẽ giết chết tất cả những người mà cậu yêu thương. Để khiến Thần Con người không giết gia đình cậu, Rudeus cố gắng lựa chọn một trong hai để giết chết, đó là Thần Rồng Orsted nhưng đã thất bại; thay vào đó, Rudeus yêu cầu liên minh với Orsted, đổi lại hắn phải bảo vệ gia đình cậu. Sau đó, Rudeus nhận Eris là vợ thứ ba của mình. Sêri sau đó tiếp diễn với hàng loạt các lời thoại tự sự dựa trên công việc của Rudeus với Orsted để chắc chắn được mục đích chính xác của Thần Con người, cũng như đời sống hàng ngày và yêu thương gia đình của cậu. Sau khi tấn công Rudeus thất bại, Thần Con người bỏ cuộc, thay vào đó là tấn công con cháu của cậu. Rudeus sau đó sống yên bình cho tới khi cậu mất vào năm 74 tuổi.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 2840, 3101207, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-12-14T07:14:32.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859016, N'Tháng Tư Là Lời Nói Dối Của Em', N'Your Lie in April, Shigatsu wa Kimi no Uso', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237372/AniAniplex/images/animevsub-zowXSv8bxw_igxrlf.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237371/AniAniplex/images/animevsub-RrftgoMUJK_vzrogd.jpg', N'Câu chuyện kể về Arima Kosei, một thần đồng piano. Nhưng kể từ sau chấn động tâm lí do cái sự qua đời của mẹ cậu, Kosei đã không thể nghe thấy bất kì âm thanh nào. Cứ tưởng là cậu sẽ không bao giờ động vào những phím piano nữa nhưng đó là trước khi cậu đã gặp Miyazono Kawori...', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 1598, 1871654, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-12-05T21:33:20.000' AS DateTime))
INSERT [dbo].[MOVIES] ([movie_id], [movie_nameVN], [movie_nameJP], [movie_image], [movie_poster], [movie_description], [movie_showtimes], [movie_status], [movie_director], [movie_country], [movie_followers], [movie_views], [movie_episode], [movie_language], [movie_studio], [movie_season], [movie_year]) VALUES (3859017, N'Nhà Có Năm Nàng Dâu Movie', N'5-toubun no Hanayome Movie, Gotoubun no Hanayome, The Five Wedded Brides, The Quintessential Quintuplets', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237372/AniAniplex/images/animevsub-Kk4DweCgPY_rxwyu2.jpg', N'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237372/AniAniplex/images/animevsub-2WMYLSN6Tv_ulgh2u.jpg', N'Nhà Có Năm Nàng Dâu Movie -  Movie của 5 tô bún nhé!!', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 6955, 1874703, 12, N'VietSub', N'Zero-G', N'Mùa Đông', CAST(N'2022-12-14T17:41:21.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[MOVIES] OFF
GO
SET IDENTITY_INSERT [dbo].[SHARE_SOCIAL] ON 

INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (1, CAST(N'2022-12-03T05:50:31.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201005, 3859014)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (2, CAST(N'2023-03-06T04:12:30.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201004, 3859005)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (3, CAST(N'2022-12-04T04:53:18.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201001, 3859012)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (4, CAST(N'2022-12-19T19:17:43.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201005, 3859002)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (5, CAST(N'2023-03-06T13:36:22.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201001, 3859004)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (6, CAST(N'2023-02-25T07:51:16.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201002, 3859006)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (7, CAST(N'2023-01-26T03:01:27.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201005, 3859015)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (8, CAST(N'2023-03-01T13:00:31.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201005, 3859001)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (9, CAST(N'2023-03-09T09:19:33.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201004, 3859005)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (10, CAST(N'2022-12-01T18:47:52.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201002, 3859014)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (11, CAST(N'2023-01-10T23:50:27.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201002, 3859015)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (12, CAST(N'2022-12-08T17:11:18.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201005, 3859006)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (13, CAST(N'2022-12-30T02:11:31.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201003, 3859003)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (14, CAST(N'2022-12-21T23:28:15.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201002, 3859004)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (15, CAST(N'2023-03-26T19:48:30.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201003, 3859011)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (16, CAST(N'2022-12-21T05:58:43.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201001, 3859015)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (17, CAST(N'2023-01-23T03:23:09.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201001, 3859002)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (18, CAST(N'2023-03-09T07:04:08.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201003, 3859010)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (19, CAST(N'2022-12-27T15:42:15.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201005, 3859014)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (20, CAST(N'2023-02-01T19:17:07.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201002, 3859002)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (21, CAST(N'2023-03-04T06:38:01.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201004, 3859009)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (22, CAST(N'2023-01-14T18:13:32.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201002, 3859005)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (23, CAST(N'2022-12-24T03:40:55.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201003, 3859010)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (24, CAST(N'2023-03-15T11:16:12.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201001, 3859007)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (25, CAST(N'2022-12-04T03:27:00.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201001, 3859005)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (26, CAST(N'2023-03-21T10:22:20.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201001, 3859012)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (27, CAST(N'2023-02-19T05:50:20.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201002, 3859005)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (28, CAST(N'2023-02-22T18:22:17.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201001, 3859013)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (29, CAST(N'2023-01-08T15:03:08.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201002, 3859003)
INSERT [dbo].[SHARE_SOCIAL] ([share_id], [share_date], [share_content], [share_type], [share_user], [share_movie]) VALUES (30, CAST(N'2023-03-18T18:58:40.000' AS DateTime), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', NULL, 201001, 3859016)
SET IDENTITY_INSERT [dbo].[SHARE_SOCIAL] OFF
GO
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([user_id], [user_name], [user_account], [user_password], [user_email], [user_image], [user_gender], [user_title], [user_description], [user_RegistraionDate]) VALUES (201001, N'Ngô Mạnh Hùng', N'hhungnm', N'hhungnm', N'hhungnm@gmail.com', N'https://cdn.discordapp.com/attachments/1059014105777848341/1089228845040816259/pixel_4.jpg', 1, N'Administrator', N'Năm tháng ấy trôi qua thật nhanh', CAST(N'2023-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[USERS] ([user_id], [user_name], [user_account], [user_password], [user_email], [user_image], [user_gender], [user_title], [user_description], [user_RegistraionDate]) VALUES (201002, N'Trần Thị Hà Vi', N'havi', N'z7havi!6', N'tranthihavi@gmail.com', N'https://cdn.discordapp.com/attachments/1059014105777848341/1089228843673469049/pixel_1.jpg', 0, N'Member', N'Hãy sống hết mình mỗi ngày.', CAST(N'2023-03-10T00:00:00.000' AS DateTime))
INSERT [dbo].[USERS] ([user_id], [user_name], [user_account], [user_password], [user_email], [user_image], [user_gender], [user_title], [user_description], [user_RegistraionDate]) VALUES (201003, N'Trần Hà My', N'hamy', N'7LhamyXV', N'tranhamy@gmail.com', N'https://cdn.discordapp.com/attachments/1059014105777848341/1089228844415860857/pixel_2.png', 0, N'Member', N'Cuộc sống không chỉ là về sự tồn tại, mà còn về cách chúng ta trải nghiệm và tận hưởng nó', CAST(N'2023-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[USERS] ([user_id], [user_name], [user_account], [user_password], [user_email], [user_image], [user_gender], [user_title], [user_description], [user_RegistraionDate]) VALUES (201004, N'Nguyễn Hải Anh', N'haianh', N'xhaianhh', N'nguyenhaianh@gmail.com', N'https://cdn.discordapp.com/attachments/1059014105777848341/1089228843904147526/pixel_1.png', 0, N'Member', N'Hãy trân trọng mỗi khoảnh khắc, bởi chúng ta không biết ngày mai sẽ ra sao.', CAST(N'2023-02-20T00:00:00.000' AS DateTime))
INSERT [dbo].[USERS] ([user_id], [user_name], [user_account], [user_password], [user_email], [user_image], [user_gender], [user_title], [user_description], [user_RegistraionDate]) VALUES (201005, N'Lê Anh Tuấn', N'anhtuan', N'anhtuanD', N'leanhtuan@gmail.com', N'https://cdn.discordapp.com/attachments/1059014105777848341/1089228844172595422/pixel_2.jpg', 1, N'Member', N'Tạo dựng những kỷ niệm đáng nhớ và sống để không hối tiếc về những gì đã trải qua.', CAST(N'2023-02-15T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[USERS] OFF
GO
ALTER TABLE [dbo].[CATEGORY]  WITH CHECK ADD  CONSTRAINT [fk_movie_id_category] FOREIGN KEY([movie_id_category])
REFERENCES [dbo].[MOVIES] ([movie_id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[CATEGORY] CHECK CONSTRAINT [fk_movie_id_category]
GO
ALTER TABLE [dbo].[FAVORITES]  WITH CHECK ADD  CONSTRAINT [fk_favorite_movie] FOREIGN KEY([favorite_movie])
REFERENCES [dbo].[MOVIES] ([movie_id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[FAVORITES] CHECK CONSTRAINT [fk_favorite_movie]
GO
ALTER TABLE [dbo].[FAVORITES]  WITH CHECK ADD  CONSTRAINT [fk_favorite_user] FOREIGN KEY([favorite_user])
REFERENCES [dbo].[USERS] ([user_id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[FAVORITES] CHECK CONSTRAINT [fk_favorite_user]
GO
ALTER TABLE [dbo].[MOVIE_EPISODE]  WITH CHECK ADD  CONSTRAINT [fk_movie_episode_number] FOREIGN KEY([movie_id])
REFERENCES [dbo].[MOVIES] ([movie_id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[MOVIE_EPISODE] CHECK CONSTRAINT [fk_movie_episode_number]
GO
ALTER TABLE [dbo].[SHARE_SOCIAL]  WITH CHECK ADD  CONSTRAINT [fk_share_movie] FOREIGN KEY([share_movie])
REFERENCES [dbo].[MOVIES] ([movie_id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[SHARE_SOCIAL] CHECK CONSTRAINT [fk_share_movie]
GO
ALTER TABLE [dbo].[SHARE_SOCIAL]  WITH CHECK ADD  CONSTRAINT [fk_share_user] FOREIGN KEY([share_user])
REFERENCES [dbo].[USERS] ([user_id]) ON DELETE CASCADE;
GO
ALTER TABLE [dbo].[SHARE_SOCIAL] CHECK CONSTRAINT [fk_share_user]
GO
USE [AniAniplex]
GO

/****** Object:  View [dbo].[categoryList]    Script Date: 4/12/2023 4:24:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[categoryList] as
SELECT 
      [category_name]
  FROM [AniAniplex].[dbo].[CATEGORY]
  group by [category_name]
GO

USE [AniAniplex]
GO

/****** Object:  View [dbo].[EpisodeNewUpdate]    Script Date: 4/12/2023 4:25:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


/****** Script for SelectTopNRows command from SSMS  ******/
CREATE view [dbo].[EpisodeNewUpdate] as
SELECT    dbo.MOVIES.movie_id,      dbo.MOVIES.movie_nameVN, MAX(dbo.MOVIE_EPISODE.movie_episode_date) AS latest_episode_date, MAX(dbo.MOVIE_EPISODE.movie_episode_number) AS latest_episode_number,
                         dbo.MOVIES.movie_views
FROM            dbo.MOVIE_EPISODE INNER JOIN
                         dbo.MOVIES ON dbo.MOVIE_EPISODE.movie_id = dbo.MOVIES.movie_id
GROUP BY dbo.MOVIES.movie_nameVN, dbo.MOVIES.movie_id, dbo.MOVIES.movie_views
GO

create trigger delete_movie on MOVIES instead of delete as
begin
	delete from MOVIE_EPISODE where movie_id in (select movie_id from deleted);
	delete from CATEGORY where [movie_id_category] in (select movie_id from deleted);
	delete from FAVORITES where favorite_movie in (select movie_id from deleted);
	delete from SHARE_SOCIAL where share_movie in (select movie_id from deleted);
	delete from MOVIES where movie_id in (select movie_id from deleted);
end

create trigger delete_user on USERS instead of delete as
begin
	delete from FAVORITES where favorite_user in (select user_id from deleted);
	delete from SHARE_SOCIAL where share_user in (select user_id from deleted);
	delete from USERS where user_id in (select user_id from deleted);
end