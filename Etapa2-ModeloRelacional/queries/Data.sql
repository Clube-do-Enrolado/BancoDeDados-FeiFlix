--============ Usuario ============ 

INSERT INTO public.usuario
VALUES
(1,'endomamoro@hotmail.com','1234__da231567','premium'),
(2,'acosta@gmail.com','123ASD12--48A9626941','comum'),
(3,'afrente@hotmail.com','76543242*332','comum'),
(4,'zaka@hotmail.com','366347adsa6847','premium'),
(5,'rubatima20@yahoo.com','32fsfsd8471#3123','premium'),
(6,'vitaolinux@gmail.com','kjdfasbkl2ba@#sjk','premium'),
(7,'mamaroando@hotmail.com','kjdl24023982ba@#sjk','comum'),
(8,'superome@fei.edu.br','24241jkb23hj5vbj','premium'),
(9,'batima@batcave.com','123u91jkah1uij**7','comum'),
(10,'mestredosmagos@fei.edu.br','eusoups','premium');

--============ Perfil ============ 
INSERT INTO public.Perfil
VALUES
(1, 1, 'Ré Zamalho', 'imgZe/img', array['Romance', 'Comédia'], array['Terror','Ação']),
(2, 2, 'Vitor Acosta', 'imgVitao/img', array['Romance', 'Comédia'], array['Terror','Anime']),
(3, 3, 'Vitor Afrente', 'imgVitaoAfr/img', array['Romance', 'Anime'], array['Terror','Suspense']),
(4, 4, 'Rafael Zaka', 'imgZaka/img', array['Ação', 'Ficção'], array['Anime','Documentário']),
(5, 5, 'Rubens Wayne', 'imgRubat/img', array['Romance', 'Guerra'], array['Ação', 'Anime']),
(6, 6, 'Vitor Linux', 'imgVitaoLinux/img', array['Ficção', 'Drama'], array['Desenho', 'Clássico']),
(7, 7, 'Ando Mamoru', 'imgAndo/img', array['Romance', 'Ficção'], array['Aventura', 'Guerra']),
(8, 8, 'Super Homem', 'imgSuperome/img', array['Clássico', 'Policial'], array['Nacional', 'Fantasia']),
(9, 8, 'Super Homem', 'imgSuperome/img', array['Clássico', 'Científico'], array['Blockbuster', 'Fantasia']),
(10, 9, 'Bruce Wayne', 'imgBruce/img', array['Ação', 'Found-footage'], array['Terror', 'Fantasia']),
(11, 10, 'Paulo Sérgio', 'imgPS/img', array['Terror', 'Found-footage'], array['Clássico', 'Suspense']);

--============ Roteirista ============ 
INSERT INTO public.roteirista
VALUES
(1,'John Doe', '45', 'Clássico'),
(2,'Antonio Dilac', '64', 'Terror'),
(3,'Jordana Glow', '39', 'Aventura'),
(4,'Mario Gotze', '41', 'Fantasia'),
(5,'Steve Wozniak', '72', 'Ficção'),
(6,'Clara Baptiste', '67', 'Clássico'),
(7,'John Nicks', '57', 'Suspense'),
(8,'Mia Clark', '50', 'Aventura'),
(9,'Paul Myer', '87', 'Guerra'),
(10,'Maria Floyd', '48', 'Clássico');

--============ Diretor ============ 
INSERT INTO public.diretor
VALUES
(1, 'Steven Spielberg', '30', 'Indiana Jones e Os Caçadores da Arca Perdida'),
(2, 'Stanley Kubrick', '37', 'Spartacus'),
(3, 'Bernardo Bertolucci', '46', 'O último imperador'),
(4, 'Jean-Luc Godard', '34', 'Alphaville'),
(5, 'Quentin Tarantino', '43', 'Django Livre'),
(6, 'Martin Scorsese', '58', 'Taxi Driver'),
(7, 'Alfred Hitchcock', '41', 'Psicose'),
(8, 'Tim Burton', '29', 'Alice no País das Maravilhas'),
(9, 'Woody Allen', '39', 'Manhattan'),
(10, 'Francis Ford Coppola', '90', 'O Poderoso Chefão');

--============ Ator ============ 
INSERT INTO public.ator
VALUES
(1, 'John Travolta', 8.6, '57'),
(2, 'Chris Hemsworth', 7.9, '38'),
(3, 'Johnny Depp', 8.5, '47'),
(4, 'Angelina Jolie', 9.1, '51'),
(5, 'Tilda Swinton', 8.2, '48'),
(6, 'Robert De Niro', 7.0, '40'),
(7, 'Leonardo DiCaprio', 9.8, '37'),
(8, 'Morgan Freeman', 8.9, '60'),
(9, 'Scarlett Johansson', 10.0, '45'),
(10, 'Samuel L. Jackson', 7.8, '57');

--============ Produção Audiovisual ============ 
INSERT INTO public.prod_audiovisual
VALUES
(1, '2013-09-29',13800, 'Breaking Bad', '8.5', 'Série'),
(2, '2020-08-14',114, 'Project Power', '7.3', 'Filme'),
(3, '2019-01-17',129, 'Glass', '9.5', 'Filme'),
(4, '2003-08-29',143, 'Piratas do Caribe: A Maldição do Pérola Negra', '10.0', 'Filme'),
(5, '2016-11-25',133, 'Animais Fantásticos e Onde Habitam', '9.3', 'Filme'),
(6, '2001-11-23',159, 'Harry Potter e a Pedra Filosofal', '10.0', 'Filme'),
(7, '2019-05-20',2551, 'F is for Family', '7.2', 'Série'),
(8, '2006-02-5',1875, 'Death Note', '6.52', 'Série'),
(9, '2015-02-05',99, 'Bob Esponja: Um Herói Fora DÁgua', '8.5', 'Filme'),
(10, '2008-04-30',126, 'Homem de Ferro', '9.2', 'Filme'),
(11, '2010-05-12',7600, 'Bear Grylls - A prova de tudo', '7.8', 'Documentário');

--============ Produtoras ============ 
INSERT INTO public.produtora
VALUES
(35681453983305, 'Warner Bros', '529', 'Rua dos Curiosos', '53866020', 'Santo Xandão', 'Batcaverna do Sul', 'Estados Desuinidos'),
(95230489123823, 'Universal Studio', '153', 'Av. Hamburgão', '11530058', 'Noitedema', 'Rio de Dezemebro', 'Edmanha'),
(40059109337834, 'Marvel', '60', 'Rua dos Enrolados', '15647880', 'São Berrante dos Gados', 'São Poyo', 'Canarrecebe'),
(10389064523238, 'Fox', '145', 'Av. Fome Guerra e Destruição', '18992030', 'São Joguei no Chão', 'Gados Gerais', 'Barzil'),
(05644512389423, 'Disney', '22', 'Av. Conhecimento por Fé', '02254082', 'Noitedema', 'Rio de Dezemebro', 'Edmanha'),
(99283354520856, 'Pixar', '1022', 'Rua Garça de Papel', '12244029', 'Santo Xandão', 'Batcaverna do Sul', 'Estados Desuinidos'),
(05445084665473, 'Constantin Film', '103', 'Rua da Rasteira', '33600830', 'Noitedema', 'Rio de Dezemebro', 'Edmanha'),
(11288608833798, 'Paramount', '15', 'Rua do Pior de Diadema', '06673099', 'Santo Xandão', 'Batcaverna do Sul', 'Estados Desuinidos'),
(22563348412972, 'Lucasfilm Ltd.', '291', 'Av. Sofrer é Bom', '00488610', 'Santo Xandão', 'Batcaverna do Sul', 'Estados Desuinidos'),
(18308230984893, 'Bad Robot Productions', '43', 'Rua do Apocalipse', '18860231', 'São Berrante dos Gados', 'São Poyo', 'Canarrecebe');

--============ Ator - Prod ============ 
insert into public.prod_audio_ator
values
(1,6),
(1,7),
(1,8),
(1,9),
(1,1),
(2,7),
(3,4),
(4,5),
(5,2),
(6,1),
(7,3),
(8,10),
(9,8),
(10,9),
(11,6);

--============ Diretor - Prod ============ 
insert into public.prod_audio_diretor
values
(1,5),
(2,6),
(3,2),
(4,9),
(5,7),
(6,10),
(7,3),
(8,8),
(9,1),
(10,4);

--============ Roteirista - Prod ============ 
insert into public.prod_audio_roteirista
values
(1,8),
(2,2),
(3,1),
(4,6),
(5,9),
(6,10),
(7,5),
(8,3),
(9,4),
(10,7);

--============ Perfil - Prod ============ 
insert into public.perfil_prod
values
(1,3,'2020-06-13 10:34:09 AM'),
(2,7, '2020-03-18 02:23:52 PM'),
(3,2, '2020-09-12 05:56:45 PM'),
(4,8, '2020-11-02 11:34:06 AM'),
(5,1, '2019-12-25 06:37:52 PM'),
(6,9, '2020-04-19 01:54:38 PM'),
(7,10, '2020-06-12 09:46:06 AM'),
(8,8, '2020-01-30 01:12:12 PM'),
(9,4, '2020-02-23 08:38:29 AM'),
(10,5, '2020-05-17 10:32:05 AM'),
(3,9,'2020-01-03 10:04:30 AM'),
(10,3,'2020-01-21 09:20:01 AM'),
(7,6,'2020-01-22 09:05:56 AM'),
(4,6,'2020-01-25 04:40:31 PM'),
(4,9,'2020-01-30 05:31:56 AM'),
(4,7,'2020-02-01 01:01:22 AM'),
(8,10,'2020-02-04 09:10:47 AM'),
(11,8,'2020-02-04 02:39:40 PM'),
(1,6,'2020-02-06 01:02:15 AM'),
(8,5,'2020-02-12 12:50:34 PM'),
(6,3,'2020-02-13 12:19:05 AM'),
(11,2,'2020-02-13 11:17:59 AM'),
(3,2,'2020-02-18 05:40:56 AM'),
(7,1,'2020-02-19 11:12:11 AM'),
(5,5,'2020-02-25 07:45:29 AM'),
(11,6,'2020-02-26 07:05:30 PM'),
(11,7,'2020-03-02 08:42:15 PM'),
(10,3,'2020-03-04 11:17:14 AM'),
(8,8,'2020-03-04 01:36:39 PM'),
(2,6,'2020-03-11 07:06:04 PM'),
(10,8,'2020-03-14 11:06:08 PM'),
(7,10,'2020-03-16 10:06:52 PM'),
(8,7,'2020-03-18 12:45:46 PM'),
(11,1,'2020-03-19 12:48:03 PM'),
(5,10,'2020-03-20 08:40:24 AM'),
(11,5,'2020-03-22 02:03:54 AM'),
(2,5,'2020-03-22 11:27:17 PM'),
(1,5,'2020-03-26 03:32:07 AM'),
(4,2,'2020-03-27 01:33:37 PM'),
(4,5,'2020-04-01 12:24:33 AM'),
(2,10,'2020-04-06 03:24:52 AM'),
(3,8,'2020-04-07 06:26:36 AM'),
(1,2,'2020-04-12 11:23:28 PM'),
(9,3,'2020-04-16 06:22:14 AM'),
(2,4,'2020-04-23 07:49:29 PM'),
(3,6,'2020-04-24 05:52:32 AM'),
(5,2,'2020-04-24 07:09:41 AM'),
(7,6,'2020-04-24 09:48:21 PM'),
(5,10,'2020-04-26 12:20:45 AM'),
(11,1,'2020-04-26 02:32:25 AM'),
(9,2,'2020-04-27 05:09:57 PM'),
(10,10,'2020-04-28 05:04:19 AM'),
(11,2,'2020-05-01 12:39:02 AM'),
(11,6,'2020-05-10 07:48:11 PM'),
(11,9,'2020-05-19 09:10:13 PM'),
(5,3,'2020-05-24 11:12:08 PM'),
(9,1,'2020-05-27 12:31:58 AM'),
(1,4,'2020-05-28 05:34:44 PM'),
(8,1,'2020-05-31 11:52:20 PM'),
(5,10,'2020-06-01 02:04:51 AM'),
(4,10,'2020-06-01 08:50:49 PM'),
(11,2,'2020-06-02 04:26:13 PM'),
(8,3,'2020-06-11 04:46:54 AM'),
(7,6,'2020-06-14 11:08:19 AM'),
(9,5,'2020-06-16 02:48:06 PM'),
(7,4,'2020-06-21 12:46:29 AM'),
(10,4,'2020-06-22 09:05:35 PM'),
(9,2,'2020-06-25 10:53:12 AM'),
(5,3,'2020-06-25 05:15:24 PM'),
(8,2,'2020-07-01 09:24:17 AM'),
(10,8,'2020-07-04 12:56:15 PM'),
(3,2,'2020-07-13 02:11:12 PM'),
(2,5,'2020-07-14 01:31:58 PM'),
(2,8,'2020-07-21 07:24:20 AM'),
(3,10,'2020-07-21 05:21:28 PM'),
(1,9,'2020-07-24 09:14:00 AM'),
(4,10,'2020-07-30 05:48:04 PM'),
(5,3,'2020-08-03 02:31:39 PM'),
(1,6,'2020-08-06 09:28:03 PM'),
(7,7,'2020-08-11 09:18:57 PM'),
(6,1,'2020-08-13 07:15:12 PM'),
(7,4,'2020-08-15 12:04:13 PM'),
(4,9,'2020-08-15 11:33:12 PM'),
(11,9,'2020-08-16 11:08:43 PM'),
(3,5,'2020-08-19 06:42:58 PM'),
(8,9,'2020-08-21 08:33:11 AM'),
(10,5,'2020-08-21 01:22:24 PM'),
(3,8,'2020-08-24 06:14:48 AM'),
(9,3,'2020-08-27 08:47:14 PM'),
(9,1,'2020-08-28 06:14:24 AM'),
(2,9,'2020-09-02 06:08:57 PM'),
(5,6,'2020-09-14 09:59:30 PM'),
(10,3,'2020-09-20 01:24:23 PM'),
(11,4,'2020-09-29 07:52:47 AM'),
(7,1,'2020-09-30 05:45:07 PM'),
(2,10,'2020-10-03 12:02:32 PM'),
(4,9,'2020-10-09 03:22:23 AM'),
(10,4,'2020-10-10 11:17:12 AM'),
(10,4,'2020-10-12 12:43:00 AM'),
(2,9,'2020-10-15 08:20:31 PM'),
(11,5,'2020-10-19 03:02:43 PM'),
(8,7,'2020-10-19 09:34:58 PM'),
(6,2,'2020-10-24 01:39:53 AM'),
(11,4,'2020-10-31 07:07:49 PM'),
(1,8,'2020-11-02 07:02:19 AM'),
(7,3,'2020-11-02 06:22:17 PM'),
(2,5,'2020-11-08 12:13:54 PM'),
(5,5,'2020-11-10 07:52:01 PM'),
(6,5,'2020-11-13 03:25:02 PM'),
(1,1,'2020-11-14 01:48:53 PM');

--============================ Documentario ======================================

INSERT INTO public.documentario
VALUES
(11, 'Aventura', 4);


--=========================== Serie ==============================================

INSERT INTO public.serie
VALUES
(1, 'Drama', 6),
(7, 'Comédia', 5),
(8, 'Mistério', 2);

--========================== FILME ===============================================

INSERT INTO public.filme
VALUES
(2, 'Ação'),
(3, 'Suspense'),
(4, 'Aventura'),
(5, 'Fantasia'),
(6, 'Fantasia'),
(9, 'Aventura'),
(10, 'Ação');

--===================== PRODUTORA E PRODUCAO ===================
INSERT INTO public.prod_audio_produtora
VALUES
(9, 35681453983305),
(3, 95230489123823),
(10,40059109337834),
(11,10389064523238),
(5, 05644512389423),
(6, 05644512389423),
(7, 99283354520856),
(4, 05445084665473),
(8, 11288608833798),
(2, 22563348412972),
(1, 18308230984893);
