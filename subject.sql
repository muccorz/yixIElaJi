-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2022-11-11 13:56:22
-- 服务器版本： 5.7.28
-- PHP 版本： 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `bgm_subject`
--

-- --------------------------------------------------------

--
-- 表的结构 `subject`
--

CREATE TABLE `subject` (
  `id` int(32) NOT NULL COMMENT 'title:IDss',
  `type` int(2) NOT NULL COMMENT 'title:Type example:2 1:book 2:anime 3:music 4:game 5:dramaMovie',
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT 'title:Name',
  `summary` varchar(8192) COLLATE utf8_unicode_ci NOT NULL COMMENT 'title:Summary',
  `nsfw` tinyint(1) NOT NULL COMMENT 'title:Nsfw',
  `date` char(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'title:Date air date in YYYY-MM-DD format',
  `images` json NOT NULL COMMENT 'Images { large* Large > [...] common* Common〉[。。。 medium* Medium [... small* Small [...1 grid* Grid > [...] }',
  `total_episodes` int(255) NOT NULL COMMENT 'title:Total Episodes',
  `rating` json NOT NULL COMMENT 'Rating  rank* Rank > [...1 total* Total [... count* Count〉{。。。} score* Score [...1 }',
  `collection` json NOT NULL COMMENT 'Collection{ wish* Wish> [...] collect* Collect I...1 doing* Doing > [...] on hold* On Hold I...] dropped* Dropped I...] }',
  `collection_type` int(5) DEFAULT NULL COMMENT 'wish:1 doing:2 collect:3 dropped:4 on_hold:5',
  `collection_time` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'title:Date air date in YYYY-MM-DD format',
  `user_rating` int(10) DEFAULT NULL COMMENT 'title:rating(int)',
  `collectionBool` tinyint(1) DEFAULT NULL COMMENT 'title:collectBool'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `subject`
--

INSERT INTO `subject` (`id`, `type`, `name`, `summary`, `nsfw`, `date`, `images`, `total_episodes`, `rating`, `collection`, `collection_type`, `collection_time`, `user_rating`, `collectionBool`) VALUES
(118783, 2, 'すべてがFになる THE PERFECT INSIDER', '孤島の研究所で、少女時代から完全に隔離された生活を送る\r\n天才プログラマ・真賀田四季。\r\n四季に一目会いたいと、研究所を訪れた\r\n那古野大学准教授・犀川創平と学生・西之園萌絵は\r\nそこである事件に遭遇する。\r\n彼らが目にしたのは、\r\n誰も出入りできないはずの四季の部屋から現れた、\r\nウエディングドレスを纏い両手両足を切断された死体だった―。\r\n不可思議な密室殺人に犀川と萌絵が挑む。', 0, '2015-10-08', '{\"grid\": \"https://lain.bgm.tv/pic/cover/g/a2/a8/118783_4Ze6G.jpg\", \"large\": \"https://lain.bgm.tv/pic/cover/l/a2/a8/118783_4Ze6G.jpg\", \"small\": \"https://lain.bgm.tv/pic/cover/s/a2/a8/118783_4Ze6G.jpg\", \"common\": \"https://lain.bgm.tv/pic/cover/c/a2/a8/118783_4Ze6G.jpg\", \"medium\": \"https://lain.bgm.tv/pic/cover/m/a2/a8/118783_4Ze6G.jpg\"}', 11, '{\"rank\": 2436, \"count\": {\"1\": 4, \"2\": 2, \"3\": 11, \"4\": 31, \"5\": 98, \"6\": 485, \"7\": 1014, \"8\": 610, \"9\": 112, \"10\": 24}, \"score\": 7, \"total\": 2391}', '{\"wish\": 694, \"doing\": 219, \"collect\": 3241, \"dropped\": 206, \"on_hold\": 255}', NULL, NULL, NULL, 0),
(5337, 5, 'Breaking Bad', 'Breaking Bad is an American crime drama television series created and produced by Vince Gilligan. Set and filmed in Albuquerque, New Mexico, the series follows Walter White (Bryan Cranston), an underpaid, overqualified, and dispirited high-school chemistry teacher who is struggling with a recent diagnosis of stage-three lung cancer. White turns to a life of crime and partners with a former student, Jesse Pinkman (Aaron Paul), to produce and distribute crystal meth to secure his family\'s financial future before he dies, while navigating the dangers of the criminal underworld. The show aired on AMC from January 20, 2008, to September 29, 2013, consisting of five seasons for a total of 62 episodes.', 0, '2008-01-20', '{\"grid\": \"https://lain.bgm.tv/pic/cover/g/80/73/5337_0saWw.jpg\", \"large\": \"https://lain.bgm.tv/pic/cover/l/80/73/5337_0saWw.jpg\", \"small\": \"https://lain.bgm.tv/pic/cover/s/80/73/5337_0saWw.jpg\", \"common\": \"https://lain.bgm.tv/pic/cover/c/80/73/5337_0saWw.jpg\", \"medium\": \"https://lain.bgm.tv/pic/cover/m/80/73/5337_0saWw.jpg\"}', 7, '{\"rank\": 282, \"count\": {\"1\": 0, \"2\": 0, \"3\": 0, \"4\": 0, \"5\": 4, \"6\": 35, \"7\": 109, \"8\": 268, \"9\": 96, \"10\": 33}, \"score\": 7.9, \"total\": 545}', '{\"wish\": 104, \"doing\": 65, \"collect\": 754, \"dropped\": 11, \"on_hold\": 32}', NULL, NULL, NULL, 0),
(163164, 3, 'サクラノ詩 サウンドトラックCD', 'PCソフト「サクラノ詩 -櫻の森の上を舞う-」サウンドトラック!!\r\nゲーム本編で使用したBGM（全44曲）を収録!!!', 0, '2015-12-27', '{\"grid\": \"https://lain.bgm.tv/pic/cover/g/8e/8d/163164_r2LV4.jpg\", \"large\": \"https://lain.bgm.tv/pic/cover/l/8e/8d/163164_r2LV4.jpg\", \"small\": \"https://lain.bgm.tv/pic/cover/s/8e/8d/163164_r2LV4.jpg\", \"common\": \"https://lain.bgm.tv/pic/cover/c/8e/8d/163164_r2LV4.jpg\", \"medium\": \"https://lain.bgm.tv/pic/cover/m/8e/8d/163164_r2LV4.jpg\"}', 44, '{\"rank\": 2, \"count\": {\"1\": 3, \"2\": 2, \"3\": 0, \"4\": 3, \"5\": 8, \"6\": 13, \"7\": 38, \"8\": 115, \"9\": 222, \"10\": 575}, \"score\": 9.3, \"total\": 979}', '{\"wish\": 236, \"doing\": 138, \"collect\": 1162, \"dropped\": 7, \"on_hold\": 16}', NULL, NULL, NULL, 0),
(137458, 4, 'FINAL FANTASY VII REMAKE', '1997年にPlayStation@で発売された『FINAL FANTASY VIIの主要スタッフるFINAL FANTASY VII REMAKE』\r\n壮大な物語や魅力的なキャラクター、当時の最先端技術が駆使された映像で多くの人を魅了した不朽の名作が、時を経て「新たな物語」として生まれ変わります。\r\nコマンドバトルと直感的アクションが融合することで戦路性は高くなり、現代のグラフィック技術によって\r\nFINAL FANTASY VII』の世界をリアルに再現、再生しております。', 0, '2020-04-10', '{\"grid\": \"https://lain.bgm.tv/pic/cover/g/6e/32/137458_fwH60.jpg\", \"large\": \"https://lain.bgm.tv/pic/cover/l/6e/32/137458_fwH60.jpg\", \"small\": \"https://lain.bgm.tv/pic/cover/s/6e/32/137458_fwH60.jpg\", \"common\": \"https://lain.bgm.tv/pic/cover/c/6e/32/137458_fwH60.jpg\", \"medium\": \"https://lain.bgm.tv/pic/cover/m/6e/32/137458_fwH60.jpg\"}', 0, '{\"rank\": 286, \"count\": {\"1\": 1, \"2\": 1, \"3\": 2, \"4\": 6, \"5\": 7, \"6\": 31, \"7\": 128, \"8\": 271, \"9\": 250, \"10\": 83}, \"score\": 8.2, \"total\": 780}', '{\"wish\": 450, \"doing\": 150, \"collect\": 865, \"dropped\": 17, \"on_hold\": 49}', 1, '2022-11-11', 1, 1);

--
-- 转储表的索引
--

--
-- 表的索引 `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
