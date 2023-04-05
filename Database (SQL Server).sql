drop database AniAniplex;
create database AniAniplex;
use AniAniplex;
create table USERS(
    user_id int identity(201001, 1) primary key,
    user_name nvarchar(50),
    user_account varchar(20),
    user_password varchar(16),
    user_email varchar(64),
    user_image varchar(150),
    user_gender bit,
    user_title nvarchar(15),
    user_description nvarchar(max),
    user_RegistraionDate datetime
)

create table SHARE_SOCIAL(
    share_id int identity primary key,
    share_date datetime,
    share_content nvarchar(max),
    share_type nvarchar(20),
    share_user int,
    share_movie int
)

create table FAVORITES(
    favorite_id int identity primary key,
    favorite_date datetime,
    favorite_user int,
    favorite_movie int
)

create table MOVIES(
    movie_id int identity(3859001, 1) primary key,
    movie_nameVN nvarchar(max),
    movie_nameJP nvarchar(max),
    movie_image varchar(255),
    movie_poster varchar(255),
    movie_description nvarchar(max),
    movie_showtimes nvarchar(50),
    movie_status nvarchar(50),
    movie_director nvarchar(50),
    movie_country nvarchar(16),
    movie_followers int,
    movie_views int,
    movie_episode int,
    movie_language nvarchar(16),
    movie_studio nvarchar(24),
    movie_season nvarchar(20),
    movie_year datetime
)

create table MOVIE_EPISODE(
    id int identity,
    movie_id int,
    movie_episode_number int,
    movie_episode_link varchar(255),
    movie_episode_date datetime
)

create table CATEGORY(
    id int identity primary key,
	movie_id_category int,
    category_name nvarchar(50),
)


insert into USERS(user_name, user_account, user_password, user_email, user_image, user_gender, user_title, user_description, user_RegistraionDate) values
(N'Ngô Mạnh Hùng', 'hhungnm', 'hhungnm', 'hhungnm@gmail.com', 'https://cdn.discordapp.com/attachments/1059014105777848341/1089228845040816259/pixel_4.jpg', 1, N'Administrator', N'Năm tháng ấy trôi qua thật nhanh', '2023-3-25'),
(N'Trần Thị Hà Vi', 'havi', 'z7havi!6', 'tranthihavi@gmail.com', 'https://cdn.discordapp.com/attachments/1059014105777848341/1089228843673469049/pixel_1.jpg', 0, N'Member', N'Hãy sống hết mình mỗi ngày.', '2023-3-10'),
(N'Trần Hà My', 'hamy', '7LhamyXV', 'tranhamy@gmail.com', 'https://cdn.discordapp.com/attachments/1059014105777848341/1089228844415860857/pixel_2.png', 0, N'Member', N'Cuộc sống không chỉ là về sự tồn tại, mà còn về cách chúng ta trải nghiệm và tận hưởng nó', '2023-2-25'),
(N'Nguyễn Hải Anh', 'haianh', 'xhaianhh', 'nguyenhaianh@gmail.com', 'https://cdn.discordapp.com/attachments/1059014105777848341/1089228843904147526/pixel_1.png', 0, N'Member', N'Hãy trân trọng mỗi khoảnh khắc, bởi chúng ta không biết ngày mai sẽ ra sao.', '2023-2-20'),
(N'Lê Anh Tuấn', 'anhtuan', 'anhtuanD', 'leanhtuan@gmail.com', 'https://cdn.discordapp.com/attachments/1059014105777848341/1089228844172595422/pixel_2.jpg', 1, N'Member', N'Tạo dựng những kỷ niệm đáng nhớ và sống để không hối tiếc về những gì đã trải qua.', '2023-2-15')
-- (N'', '', '', '@gmail.com', '', 0, N'', N'', '2023-3-25'),

insert into MOVIES(movie_nameVN, movie_nameJP, movie_image, movie_poster, movie_description, movie_showtimes, movie_status, movie_director, movie_country, movie_followers, movie_views, movie_episode, movie_language, movie_studio, movie_season, movie_year) values
(N'Cuộc Sống Nông Dân Ở Thế Giới Khác', N'Isekai Nonbiri Nouka, Farming Life in Another World', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237387/AniAniplex/images/animevsub-cDQCDt5v9X_rtmtch.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237387/AniAniplex/images/animevsub-Ob2uhpiLRh_gt8td1.png', N'Qua đời vì bệnh tật ở tuổi 39, Machio Hiraku được trao cơ hội đến một thế giới khác. Khi được Thượng đế hỏi ông mong muốn điều gì, ông chọn có một cơ thể khỏe mạnh, điều ước thứ hai, ông chọn cuộc sống bình yên, điều ước thứ ba là có thể biết tiếng địa phương và điều ước cuối cùng là có thể trở thành một nông dân.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 4047, 2211060, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-11-11 04:54:04'),
(N'Thiên Sứ Nhà Bên', N'Otonari no Tenshi-sama ni Itsunomanika Dame Ningen ni Sareteita Ken, The Angel Next Door Spoils Me Rotten', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237380/AniAniplex/images/animevsub-UN1VhCTcIz_dvqgum.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237380/AniAniplex/images/animevsub-VzNyDhjTzC_q0rqnj.jpg', N'Hàng xóm kế bên căn hộ của Fujimiya Amane chính là nữ sinh xinh đẹp nhất trường cậu, Shiina Mahiru. Họ vốn chẳng có mối liên hệ nào cho đến một ngày mưa tầm tã, Amane tình nguyện đưa chiếc ô của mình cho cô bạn hàng xóm xinh đẹp tựa thiên thần, cả hai đã bắt đầu tương tác với nhau theo một cách kì quặc. Chẳng thể chịu được lối sinh hoạt cẩu thả khi sống một mình của Amane, Mahiru đã quyết định sẽ chăm sóc cậu từ những điều nhỏ nhất. Một Mahiru thiếu thốn sự gắn kết với gia đình đang dần mở lòng hơn, cùng với một Amane hay tự ti đang ngày một đổi thay theo chiều hướng tích cực. Khoảng cách giữa hai con người không chút thành thật ấy đang từng bước thu hẹp lại...', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 9161, 2118160, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-12-15 23:02:24'),
(N'Tensei shitara Slime Datta Ken Movie: Guren no Kizuna-hen', N'Chuyển sinh thành Slime Movie, That Time I Got Reincarnated as a Slime: The Movie - Scarlet Bond, TenSura, That Time I Got Reincarnated as a Slime Movie', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237385/AniAniplex/images/animevsub-iDvWCparAc_o1lpgx.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237387/AniAniplex/images/animevsub-RtMNrPD9eP_hcdura.jpg', N'Phần Movie của Tensei shitara Slime Datta Ken..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 8542, 1928872, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-12-09 11:07:50'),
(N'Cuộc Cách Mạng Ma Thuật Của Công Chúa Chuyển Sinh Và Tiểu Thư Thiên Tài', N'Tensei Oujo to Tensai Reijou no Mahou Kakumei, The Magical Revolution of the Reincarnated Princess and the Genius Young Lady, Tenten Kakumei', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237388/AniAniplex/images/animevsub-SKobxDEvm6_ittkwh.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237384/AniAniplex/images/animevsub-XStfOjvBYS_hasbz6.jpg', N'Bất chấp việc được cho là kém cỏi với phép thuật thông thường, Công chúa Anisphia đã bất chấp kỳ vọng của tầng lớp quý tộc bằng cách phát triển "ma thuật học", một lý thuyết ma thuật độc đáo dựa trên ký ức từ kiếp trước của cô. Một ngày nọ, cô chứng kiến ​​nữ quý tộc tài giỏi Euphyllia bị tước bỏ danh hiệu quốc vương tiếp theo của vương quốc một cách bất công. Đó là khi Anisphia vạch ra một kế hoạch để giúp Euphyllia lấy lại danh tiếng của mình - điều này đã khiến họ sống cùng nhau và cùng nghiên cứu phép thuật! Tuy nhiên, hai người phụ nữ này không biết rằng cuộc gặp gỡ tình cờ của họ sẽ thay đổi không chỉ tương lai của chính họ mà còn của cả thế giới..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 2232, 1412014, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-11-29 00:22:23'),
(N'Itai no wa Iya nano de Bougyoryoku ni Kyokufuri Shitai to Omoimasu. II', N'BOFURI: I Don"t Want to Get Hurt, so I"ll Max Out My Defense Season 2, BOFURI: I Don"t Want to Get Hurt, so I"ll Max Out My Defense 2nd Season, I hate being in pain, so I think I"ll make a full defense build 2, I Hate Getting Hurt, So', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237383/AniAniplex/images/animevsub-qZFc0dx13g_ljyuye.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237387/AniAniplex/images/animevsub-WL0L1hkIzp_zst3ns.jpg', N'Xin chú ý, phần 2 của Itai no wa Iya nano de Bougyoryoku ni Kyokufuri Shitai to Omoimasu..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 4970, 2874676, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-11-27 13:28:38'),
(N'Ẩm Thực Dã Ngoại Tại Dị Giới Với Kỹ Năng Không Tưởng', N'Tondemo Skill de Isekai Hourou Meshi, Campfire Cooking in Another World with my Absurd Skill, Regarding the Display of an Outrageous Skill Which Has Incredible Powers', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237382/AniAniplex/images/animevsub-EGLWMCSU4P_zcrm32.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237386/AniAniplex/images/animevsub-9b056nFpz8_zukp3q.jpg', N'Mukouda Tsuyomi, một chàng trai Nhật Bản hiện đại được triệu hồi sang thế giới của kiếm và ma thuật... Cứ tưởng sẽ có những chuyến phiêu lưu vĩ đại đang chờ đợi mình nhưng thực ra Makouda chỉ là một thường dân bị dính vào lễ [Triệu hồi Anh Hùng]. Nhận ra bản chất thật sự của việc triệu hồi anh hùng, Makouda đã rời đi và tự sinh sống tại thế giới mới với skill độc đáo [Siêu thị trực tuyến]. Và trên hết, hàng loạt những kẻ kỳ lạ bị thu hút bởi thức ăn từ thế giới hiện đại đã xuất hiện. Từ đó cuộc phiêu lưu của anh chàng bắt đầu..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 7590, 3920028, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-11-06 15:21:24'),
(N'Phù Thủy Băng Kiếm Sẽ Thống Trị Thế Giới', N'Hyouken no Majutsushi ga Sekai wo Suberu, The Iceblade Sorcerer Shall Rule the World', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237383/AniAniplex/images/animevsub-PIdwxrLlcn_yoq3pv.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237383/AniAniplex/images/animevsub-wAHP9sgxOr_yleg8p.jpg', N'Học viện ma thuật Aold có tiếng đã đào tạo rất nhiều pháp sư mạnh mẽ. Chàng trai Ray White quyết định nhập học vào đây với tư cách học sinh duy nhất đến từ một gia đình bình thường khi năm học mới bắt đầu. Xung quanh cậu là những quý tộc và những gia đình pháp sư khinh bỉ cậu. Nhưng họ không biết. Cậu là người đã đạt được rất nhiều thành tựu trong trận chiến ở Viễn Đông trước đây, và giờ được xem là người mạnh nhất trong 7 đại pháp sư của thế giới. Mặc dù bị xem thường với tư cách một pháp sư, cậu cuối cùng cũng phô diễn sức mạnh cho những kẻ xung quanh..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 5878, 3128401, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-12-01 00:58:56'),
(N'Chuyển Sinh Để Nâng cao Kỹ Năng: Vua Anh Hùng Trở Thành Kỵ Sĩ Học Việc Mạnh Nhất Thế Giới', N'Eiyuuou, Bu wo Kiwameru Tame Tenseisu: Soshite, Sekai Saikyou no Minarai Kishi♀, Reborn to Master the Blade: From Hero-King to Extraordinary Squire ♀', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237381/AniAniplex/images/animevsub-hOOUUzsV26_n72diq.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237382/AniAniplex/images/animevsub-YKqwxHUqqH_fktmk7.jpg', N'Với sự phù hộ của Nữ thần, ngài đã trở thành Thánh Hiệp Sĩ và dựng xây nên một Đế chế. Thời gian thấm thoát trôi, ngài dần trở nên già nua, và khi thiên đàng đang vẫy gọi, thì bỗng một Nữ thần xuất hiện, hỏi về ước nguyện cuối cùng của ngài. Ngài ước được tái sinh trong tương lai. Ngài đã dành trọn cả cuộc đời cho người dân của mình, nên đã không còn thời gian để hoàn thiện võ nghệ. Vì thế lần này, ngài đã ước được sống cho chính mình, tôi luyện cơ thể đến cực hạn. Nữ thần tuân theo mong muốn của ngài. Trong tương lai xa, Nhà vua sẽ tái sinh trở thành con gái của một gia đình Hiệp sĩ nổi tiếng. Và trong một số trường hợp, cô được coi là một thất bại của Hiệp Sĩ, tuy nhiên... Kể từ đó, huyền thoại về một môn đồ Hiệp Sĩ mạnh nhất, xinh đẹp nhất trên thế giới đã bắt đầu..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 3392, 4486717, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-12-16 12:42:54'),
(N'Suy Luận Hư Cấu Mùa 2', N'Kyokou Suiri SS2, Kyokou Suiri 2nd Season, In/Spectre Season 2, In/Spectre 2nd Season, Kyokou Suiri Season 2', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237380/AniAniplex/images/animevsub-CWb2bUMVSn_jlc7qe.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237384/AniAniplex/images/animevsub-N2Hv16lsyC_npvzih.jpg', N'Mùa thứ 2 của Kyokou Suiri..', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 7169, 3193158, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-11-23 10:16:24'),
(N'Âm Dương Sư Mạnh Nhất Chuyển Sinh', N'Saikyou Onmyouji no Isekai Tenseiki, The Reincarnation of the Strongest Exorcist in Another World, The Reincarnation of the Strongest Onmyouji in Another World', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237378/AniAniplex/images/animevsub-w7DFa3WhAo_gths8b.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237374/AniAniplex/images/animevsub-GM4Ekg6VY5_k8iup7.jpg', N'Bộ tiểu thuyết gốc tập trung vào Haruyoshi, người được mệnh danh là một Âm Dương sư mạnh nhất trên thế giới. Sau đó, anh bị bạn bè của mình phản bội và bên bờ vực của cái chết, anh mong muốn được hạnh phúc trong cuộc đời tiếp theo của mình. Ngay lúc đó, anh đã thử một câu thần chú tái sinh bí mật. Phép thuật thành công và anh được đầu thai, nhưng bằng cách nào đó nó ở một thế giới khác. Anh được chuyển sinh vào một gia đình pháp sư nổi tiếng, nhưng được đánh giá là không có khả năng phép thuật. Tuy nhiên, anh sớm nhận ra rằng phép thuật trong thế giới này chẳng là gì so với các Âm Dương thuật cũ của mình và anh tuyên bố rằng bản thân không cần phép thuật. Do đó, anh bắt đầu cuộc sống dễ dàng của mình trong một thế giới khác với Âm Dương thuật và vô số sinh vật yêu quái cũng phục tùng anh ta.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 9782, 4831277, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-11-21 15:57:25'),
(N'DanMachi IV Part 2', N'Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka IV: Fuka Shou - Yakusai-hen, Is It Wrong to Try to Pick Up Girls in a Dungeon? IV Part 2, DanMachi 4th Season Part 2, Is It Wrong That I Want to Meet You in a Dungeon 4th Season Part 2', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237376/AniAniplex/images/animevsub-hVLo01ZYes_vtdjin.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237377/AniAniplex/images/animevsub-5st0gqWy1L_f75yxz.jpg', N'Phần 4 Part 2 của DanMachi.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 2040, 3317053, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-11-02 23:12:14'),
(N'Học Viện Ma Vương 2', N'Học Viện Ma Vương SS2, Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou II, The Misfit of Demon King Academy II, Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237381/AniAniplex/images/animevsub-vaTH9lSxMg_nvsgxo.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237379/AniAniplex/images/animevsub-SN3jKFqE0a_scbfh1.png', N'Phần 2 Học Viện Ma Vương, Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou. nè!.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 7065, 1491591, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-12-28 14:38:35'),
(N'Ta Muốn Trở Thành Chúa Tể Bóng Tối!', N'Kage no Jitsuryokusha ni Naritakute!, The Eminence in Shadow, Shadow Garden, Tao Muốn Làm Chúa Hề Bóng Tối', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237375/AniAniplex/images/animevsub-PeZHKapawP_ng4sfp.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237375/AniAniplex/images/animevsub-VQywVOiNu1_fqeyps.jpg', N'Như bao người ngưỡng mộ những anh hùng khi còn nhỏ, nhân vật chính của chúng ta lại ngưỡng mộ những con người trong bóng tối. Sau khi giấu đi khả năng thật sự và sống 1 cuộc đời tầm thường của 1 thường dân vào ban ngày trong khi trải qua những khóa huấn luyện điên rồ vào ban đêm, anh ta cuối cùng cũng được chuyển sinh sang thê giới khác. Người đàn ông ấy, người mà chỉ phô diễn sức mạnh trong bóng tối, những người hầu cận và cùng với đó là tổ chức lớn mạnh của anh… Đây là câu chuyện về một chàng trai, người luôn khao khát sức mạnh trong màn đêm, trị vì thế giới ngầm ở thế giới khác.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 6661, 1378512, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-11-07 06:53:49'),
(N'Mahouka Koukou no Rettousei: Raihousha-hen', N'The Irregular at Magic High School: Visitor Arc', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237373/AniAniplex/images/animevsub-UsmSNURxEV_cnscl2.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237374/AniAniplex/images/animevsub-daCfJGd28x_rxykim.jpg', N'Bạn cùng lớp của Shiba Miyuki, Kitayama Shizuku đang trên đường đi du học. Đối với các pháp sư, điều này bình thường là không thể, vì cho phép gen của một người có thể sử dụng ma thuật bên ngoài biên giới của đất nước họ tương đương với việc từ bỏ bí mật quốc gia. Nhưng nó được phép xảy ra trong một chương trình trao đổi trường hợp. Và đó là cách Angelina Kudou Shields đến Nhật Bản từ USNA để học tại trường Đệ Nhất.Khoảng thời gian Lina đến Nhật Bản, các pháp sư bắt đầu bị tấn công bởi một sinh vật bí ẩn khiến nạn nhân của anh ta bị rút hết máu. Liệu Tatsuya có thể khám phá ra danh tính của "Ma cà rồng"?', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 2493, 4273032, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-12-21 15:01:25'),
(N'Thất Nghiệp Chuyển Sinh 2', N'Mushoku Tensei: Isekai Ittara Honki Dasu 2nd Season, Mushoku Tensei: Jobless Reincarnation Part 2', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237378/AniAniplex/images/animevsub-NZsnbVRDc1_kkflz6.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237373/AniAniplex/images/animevsub-SqrP6t8qKM_rbwvap.jpg', N'Một tên NEET 34 tuổi đã bị đuổi khỏi nhà sau cái chết của gia đình hắn. Hắn ngăn chặn một nhóm người thiếu niên ra khỏi một chiếc xe tải đang chạy và đã đẩy một người trong nhóm người đó ra thành công trước khi hắn chết. Tỉnh dậy trong cơ thể của một đứa trẻ, hắn nhận ra mình đã được chuyển sinh tới thế giới của kiếm và phép thuật. Trong khi hắn vẫn giữ lại cái tính biến thái, hắn quyết tâm sẽ trở nên thành công ở cuộc sống mới, với cái tên Rudeus Greyrat. Bởi vì tính cách năng động và rèn luyện ở tuổi trẻ, Rudeus trở nên điêu luyện với phép thuật. Trong khi còn nhỏ, cậu trở thành học sinh của Roxy Migurdia, bạn của Sylphiette, và là giáo viên của Eris Boreas Greyrat. Sau đó, thảm họa dịch chuyển đã chia cắt mọi người trên khắp thế giới, và Rudeus quyết tâm sẽ đưa Eris về nhà. Cuộc hành trình của cậu bắt đầu, Rudeus nhận được lời khuyên từ một vật thể tự xưng là Thần Con người và làm bạn với Ruijerd Supardia. Sau khi đưa Eris về nhà thành công, sự hiểu nhầm của Rudeus đã khiến tim cậu tan nát. Hai năm sau đó, sự kiện Eris bỏ Rudeus và ra đi đã khiến cậu bị liệt dương. Cậu nhập học ở Đại học Phép thuật Ranoa theo lời khuyên từ Thần Con người để chữa chứng bệnh của cậu. Ở đây, cậu đã gặp lại Sylphiette, người đã chữa chứng bệnh của cậu và họ đám cưới ngay sau đó. Rudeus nhận được nhiệm vụ tham gia cha của cậu để cứu mẹ cậu, và bất tuân lời khuyên của Thần Con người để làm như thế. Sau nhiệm vụ, cậu phát triển quan hệ của mình với Roxy và muốn cô trở thành vợ thứ hai của mình. Cậu sau đó gặp được bản thể tương lai của cậu, người đã cảnh báo cậu rằng Thần Con người sẽ giết chết tất cả những người mà cậu yêu thương. Để khiến Thần Con người không giết gia đình cậu, Rudeus cố gắng lựa chọn một trong hai để giết chết, đó là Thần Rồng Orsted nhưng đã thất bại; thay vào đó, Rudeus yêu cầu liên minh với Orsted, đổi lại hắn phải bảo vệ gia đình cậu. Sau đó, Rudeus nhận Eris là vợ thứ ba của mình. Sêri sau đó tiếp diễn với hàng loạt các lời thoại tự sự dựa trên công việc của Rudeus với Orsted để chắc chắn được mục đích chính xác của Thần Con người, cũng như đời sống hàng ngày và yêu thương gia đình của cậu. Sau khi tấn công Rudeus thất bại, Thần Con người bỏ cuộc, thay vào đó là tấn công con cháu của cậu. Rudeus sau đó sống yên bình cho tới khi cậu mất vào năm 74 tuổi.', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 2840, 3101207, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-12-14 07:14:32'),
(N'Tháng Tư Là Lời Nói Dối Của Em', N'Your Lie in April, Shigatsu wa Kimi no Uso', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237372/AniAniplex/images/animevsub-zowXSv8bxw_igxrlf.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237371/AniAniplex/images/animevsub-RrftgoMUJK_vzrogd.jpg', N'Câu chuyện kể về Arima Kosei, một thần đồng piano. Nhưng kể từ sau chấn động tâm lí do cái sự qua đời của mẹ cậu, Kosei đã không thể nghe thấy bất kì âm thanh nào. Cứ tưởng là cậu sẽ không bao giờ động vào những phím piano nữa nhưng đó là trước khi cậu đã gặp Miyazono Kawori...', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 1598, 1871654, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-12-05 21:33:20'),
(N'Nhà Có Năm Nàng Dâu Movie', N'5-toubun no Hanayome Movie, Gotoubun no Hanayome, The Five Wedded Brides, The Quintessential Quintuplets', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237372/AniAniplex/images/animevsub-Kk4DweCgPY_rxwyu2.jpg', 'https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680237372/AniAniplex/images/animevsub-2WMYLSN6Tv_ulgh2u.jpg', N'Nhà Có Năm Nàng Dâu Movie -  Movie của 5 tô bún nhé!!', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 6955, 1874703, 12, N'VietSub', N'Zero-G', N'Mùa Đông', '2022-12-14 17:41:21')
-- (N'Cuộc', N'Iseka', 'http', 'httpg', N'nông', N'Thứ Sáu vào lúc 21 giờ 45 phút hàng tuần', N'Phim đang chiếu/Cập Nhật Tập 11 VietSub', N'Kuraya Ryouichi', N'Nhật Bản', 4141, 2064175, 12, N'VietSub', N'Zero-G', N'Mùa Đông', ''),

insert into MOVIE_EPISODE(movie_id, movie_episode_number, movie_episode_link, movie_episode_date) values
('3859001', 1, '', '2022-12-11 03:19:59'),
('3859001', 2, '', '2023-01-31 19:32:15'),
('3859002', 1, '', '2022-12-17 11:56:54'),
('3859002', 2, '', '2023-03-10 02:42:04'),
('3859003', 1, '', '2023-03-12 12:56:29'),
('3859004', 1, 'https://www.youtube.com/embed/oiR99s5g63E', '2023-03-10 19:48:27'),
('3859004', 2, 'https://www.youtube.com/embed/_TyL5BrozVk', '2023-03-10 11:17:29'),
('3859004', 3, 'https://www.youtube.com/embed/relH1l8ihTU', '2023-02-14 20:35:19'),
('3859005', 1, '', '2023-03-01 22:45:14'),
('3859005', 2, '', '2022-12-16 18:08:15'),
('3859006', 1, '', '2022-12-17 18:58:25'),
('3859006', 2, '', '2023-01-27 18:49:39'),
('3859007', 1, '', '2022-12-26 03:05:41'),
('3859007', 2, '', '2023-02-10 03:36:38'),
('3859008', 1, '', '2023-02-18 21:25:57'),
('3859008', 2, '', '2023-02-01 18:46:58'),
('3859009', 1, '', '2023-01-26 08:50:35'),
('3859009', 2, '', '2023-02-17 16:08:04'),
('3859010', 1, '', '2023-02-03 11:38:54'),
('3859010', 2, '', '2022-12-14 05:52:16'),
('3859011', 1, '', '2023-02-15 07:23:08'),
('3859011', 2, '', '2023-03-10 14:34:19'),
('3859012', 1, '', '2023-03-09 15:20:20'),
('3859012', 2, '', '2023-02-28 06:39:00'),
('3859013', 1, '', '2022-12-02 05:48:04'),
('3859013', 2, '', '2023-01-07 06:59:54'),
('3859014', 1, '', '2023-01-04 03:36:34'),
('3859014', 2, '', '2023-03-01 16:12:08'),
('3859015', 1, '', '2023-01-09 15:29:11'),
('3859015', 2, '', '2023-02-22 09:01:48'),
('3859016', 1, '', '2022-12-08 20:15:59'),
('3859016', 2, '', '2023-01-22 03:58:09'),
('3859017', 1, 'https://www.youtube.com/embed/qPSEBIprzsY', '2023-01-04 20:18:41')

insert into CATEGORY(movie_id_category, category_name) values
('3859001', N'Anime Bộ'),
('3859001', N'Seinen'),
('3859001', N'Romance'),
('3859001', N'Slice of Life'),
('3859001', N'Harem'),
('3859001', N'Fantasy'),
('3859001', N'Adventure'),
('3859002', N'Anime bộ'),
('3859002', N'School'),
('3859002', N'Romance'),
('3859002', N'Slice of Life'),
('3859002', N'Comedy'),
('3859003', N'Anime lẻ'),
('3859003', N'Phim chiếu rạp'),
('3859003', N'Fantasy'),
('3859003', N'Demons'),
('3859003', N'Comedy'),
('3859003', N'Adventure'),
('3859003', N'Magic'),
('3859003', N'Action'),
('3859004', N'Anime bộ'),
('3859004', N'Shoujo Ai'),
('3859004', N'Fantasy'),
('3859004', N'Comedy'),
('3859004', N'Magic'),
('3859005', N'Anime bộ'),
('3859005', N'Slice of Life'),
('3859005', N'Game'),
('3859005', N'Comedy'),
('3859005', N'Fantasy'),
('3859005', N'Adventure'),
('3859005', N'Action'),
('3859006', N'Anime bộ'),
('3859006', N'Slice of Life'),
('3859006', N'Fantasy'),
('3859006', N'Comedy'),
('3859006', N'Adventure'),
('3859006', N'Action'),
('3859007', N'Anime bộ'),
('3859007', N'School'),
('3859007', N'Fantasy'),
('3859007', N'Action'),
('3859008', N'Anime bộ'),
('3859008', N'Fantasy'),
('3859008', N'Comedy'),
('3859008', N'Adventure'),
('3859008', N'Action'),
('3859009', N'Anime bộ'),
('3859009', N'Shounen'),
('3859009', N'Romance'),
('3859009', N'Supernatural'),
('3859009', N'Demons'),
('3859009', N'Comedy'),
('3859009', N'Mystery'),
('3859010', N'Anime bộ'),
('3859010', N'Supernatural'),
('3859010', N'Fantasy'),
('3859010', N'Adventure'),
('3859010', N'Action'),
('3859011', N'Anime bộ'),
('3859011', N'Romance'),
('3859011', N'Fantasy'),
('3859011', N'Comedy'),
('3859011', N'Adventure'),
('3859011', N'Action'),
('3859012', N'Anime bộ'),
('3859012', N'School'),
('3859012', N'Fantasy'),
('3859012', N'Demons'),
('3859012', N'Magic'),
('3859012', N'Action'),
('3859013', N'Anime bộ'),
('3859013', N'Fantasy'),
('3859013', N'Comedy'),
('3859013', N'Action'),
('3859014', N'Anime bộ'),
('3859014', N'Sci-Fi'),
('3859014', N'School'),
('3859014', N'Romance'),
('3859014', N'Supernatural'),
('3859014', N'Magic'),
('3859014', N'Action'),
('3859015', N'Anime bộ'),
('3859015', N'Fantasy'),
('3859015', N'Ecchi'),
('3859015', N'Drama'),
('3859015', N'Magic'),
('3859015', N'Action'),
('3859016', N'Anime bộ'),
('3859016', N'Shounen'),
('3859016', N'School'),
('3859016', N'Romance'),
('3859016', N'Drama'),
('3859016', N'Music')

insert into FAVORITES(favorite_date, favorite_user, favorite_movie) values
('2023-02-16 12:41:36', '201001', '3859009'),
('2023-02-19 14:33:11', '201001', '3859006'),
('2023-01-18 05:03:41', '201001', '3859001'),
('2023-02-28 04:29:35', '201001', '3859016'),
('2023-02-08 04:18:24', '201001', '3859004'),
('2023-02-24 19:07:29', '201001', '3859002'),
('2023-03-25 21:55:45', '201001', '3859008'),
('2023-03-13 02:00:27', '201001', '3859016'),
('2023-01-17 06:30:50', '201001', '3859010'),
('2023-01-03 02:18:15', '201001', '3859007'),
('2023-01-08 06:46:19', '201001', '3859013'),
('2023-03-17 07:28:58', '201001', '3859015'),
('2023-01-06 02:20:25', '201002', '3859014'),
('2023-02-11 04:29:05', '201002', '3859005'),
('2023-03-01 14:32:58', '201002', '3859010'),
('2023-01-07 18:48:36', '201002', '3859006'),
('2023-03-16 06:32:53', '201002', '3859013'),
('2023-03-04 15:08:08', '201002', '3859007'),
('2023-03-13 09:46:52', '201002', '3859003'),
('2023-02-27 22:06:45', '201002', '3859011'),
('2023-02-06 23:45:56', '201003', '3859003'),
('2023-01-07 03:49:12', '201003', '3859014'),
('2023-01-08 04:11:05', '201003', '3859008'),
('2023-03-01 05:55:38', '201003', '3859013'),
('2023-03-17 05:58:19', '201003', '3859015'),
('2023-03-01 05:32:44', '201003', '3859012'),
('2023-03-12 11:06:01', '201003', '3859004'),
('2023-01-02 11:56:58', '201003', '3859005'),
('2023-03-14 12:46:57', '201003', '3859016'),
('2023-02-09 14:59:24', '201003', '3859009'),
('2023-03-14 07:36:22', '201004', '3859005'),
('2023-01-14 23:42:08', '201004', '3859002'),
('2023-01-06 10:23:07', '201004', '3859003'),
('2023-01-06 19:16:45', '201004', '3859006'),
('2023-03-25 06:14:28', '201004', '3859001'),
('2023-03-19 07:36:35', '201004', '3859015'),
('2023-03-14 01:57:05', '201004', '3859013'),
('2023-02-07 10:10:48', '201005', '3859008'),
('2023-01-09 19:44:21', '201005', '3859014'),
('2023-01-31 21:04:54', '201005', '3859004'),
('2023-02-25 08:31:34', '201005', '3859009'),
('2023-02-27 21:46:20', '201005', '3859006'),
('2023-01-16 21:59:40', '201005', '3859010'),
('2023-03-25 00:38:22', '201005', '3859003'),
('2023-02-16 06:03:39', '201005', '3859011'),
('2023-02-05 00:28:25', '201005', '3859015'),
('2023-02-23 11:41:13', '201005', '3859005'),
('2023-03-15 14:11:03', '201005', '3859001'),
('2023-01-18 22:42:33', '201005', '3859016'),
('2023-02-06 21:47:16', '201005', '3859013')

insert into SHARE_SOCIAL(share_date, share_content, share_type, share_user, share_movie) values
('2022-12-03 05:50:31', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201005', '3859014'),
('2023-03-06 04:12:30', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201004', '3859005'),
('2022-12-04 04:53:18', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201001', '3859012'),
('2022-12-19 19:17:43', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201005', '3859002'),
('2023-03-06 13:36:22', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201001', '3859004'),
('2023-02-25 07:51:16', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201002', '3859006'),
('2023-01-26 03:01:27', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201005', '3859015'),
('2023-03-01 13:00:31', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201005', '3859001'),
('2023-03-09 09:19:33', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201004', '3859005'),
('2022-12-01 18:47:52', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201002', '3859014'),
('2023-01-10 23:50:27', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201002', '3859015'),
('2022-12-08 17:11:18', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201005', '3859006'),
('2022-12-30 02:11:31', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201003', '3859003'),
('2022-12-21 23:28:15', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201002', '3859004'),
('2023-03-26 19:48:30', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201003', '3859011'),
('2022-12-21 05:58:43', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201001', '3859015'),
('2023-01-23 03:23:09', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201001', '3859002'),
('2023-03-09 07:04:08', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201003', '3859010'),
('2022-12-27 15:42:15', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201005', '3859014'),
('2023-02-01 19:17:07', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201002', '3859002'),
('2023-03-04 06:38:01', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201004', '3859009'),
('2023-01-14 18:13:32', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201002', '3859005'),
('2022-12-24 03:40:55', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201003', '3859010'),
('2023-03-15 11:16:12', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201001', '3859007'),
('2022-12-04 03:27:00', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201001', '3859005'),
('2023-03-21 10:22:20', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201001', '3859012'),
('2023-02-19 05:50:20', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201002', '3859005'),
('2023-02-22 18:22:17', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201001', '3859013'),
('2023-01-08 15:03:08', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201002', '3859003'),
('2023-03-18 18:58:40', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, dicta ipsum. Esse vitae dignissimos deserunt at molestias quisquam nostrum voluptates, inventore aliquid eligendi harum explicabo, laboriosam odit. Voluptas, eum odio.', null, '201001', '3859016')


ALTER TABLE CATEGORY ADD CONSTRAINT fk_movie_id_category FOREIGN KEY (movie_id_category) REFERENCES MOVIES (movie_id);
ALTER TABLE FAVORITES ADD CONSTRAINT fk_favorite_user FOREIGN KEY (favorite_user) REFERENCES USERS (user_id);
ALTER TABLE FAVORITES ADD CONSTRAINT fk_favorite_movie FOREIGN KEY (favorite_movie) REFERENCES MOVIES (movie_id);
ALTER TABLE SHARE_SOCIAL ADD CONSTRAINT fk_share_user FOREIGN KEY (share_user) REFERENCES USERS (user_id);
ALTER TABLE SHARE_SOCIAL ADD CONSTRAINT fk_share_movie FOREIGN KEY (share_movie) REFERENCES MOVIES (movie_id);
ALTER TABLE MOVIE_EPISODE ADD CONSTRAINT fk_movie_episode_number FOREIGN KEY (movie_id) REFERENCES MOVIES (movie_id);