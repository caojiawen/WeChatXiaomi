-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-01-22 13:31:30
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `xiaomi`
--

-- --------------------------------------------------------

--
-- 表的结构 `mi_cart`
--

CREATE TABLE `mi_cart` (
  `id` int(11) NOT NULL,
  `mid` varchar(255) NOT NULL,
  `mName` varchar(255) NOT NULL,
  `mPrice` varchar(255) NOT NULL,
  `mPic` varchar(255) NOT NULL,
  `mSize` varchar(255) NOT NULL,
  `mColor` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `selected` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mi_cart`
--

INSERT INTO `mi_cart` (`id`, `mid`, `mName`, `mPrice`, `mPic`, `mSize`, `mColor`, `count`, `selected`) VALUES
(1, '11', '小米MIX 3', '3299', 'http://localhost:5050/images/Details/redmi/Banner/banner1.webp', '6GB+128GB', '宝石蓝', 1, '1'),
(2, '11', '小米MIX 3', '4999', 'http://localhost:5050/images/Details/redmi/Banner/banner1.webp', '故宫特别版 10GB+256GB', '宝石蓝', 1, '1'),
(3, '11', '小米MIX 3', '3299', 'http://localhost:5050/images/Details/redmi/Banner/banner1.webp', '6GB+128GB', '宝石蓝', 1, '1');

-- --------------------------------------------------------

--
-- 表的结构 `mi_classify_left`
--

CREATE TABLE `mi_classify_left` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mi_classify_left`
--

INSERT INTO `mi_classify_left` (`id`, `name`, `pid`) VALUES
(1, '新品', 'new'),
(2, '众筹', 'raise'),
(3, '手机', 'phone'),
(4, '电视', 'tv'),
(5, '电脑', 'laptop'),
(6, '家电', 'appliance'),
(7, '路由', 'router'),
(8, '出行', 'travel'),
(9, '穿戴', 'wear'),
(10, '智能', 'smart'),
(11, '电源', 'adapter'),
(12, '健康', 'health'),
(13, '灯具', 'lamp'),
(14, '儿童', 'kids'),
(15, '插线板', 'panel'),
(16, '音频', 'audio'),
(17, '耳机', 'headset'),
(18, '音箱', 'voicebox'),
(19, '箱包', 'bags'),
(20, '生活', 'life'),
(21, '配件', 'part'),
(22, '家装', 'Home'),
(23, '礼品', 'gift'),
(24, '服务', 'service'),
(25, '会员卡', 'card');

-- --------------------------------------------------------

--
-- 表的结构 `mi_classify_right`
--

CREATE TABLE `mi_classify_right` (
  `id` int(11) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `className` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mi_classify_right`
--

INSERT INTO `mi_classify_right` (`id`, `pid`, `name`, `pic`, `title`, `className`) VALUES
(1, 'new', '', '', '手机', 'phone'),
(2, 'new', '红米Note 7', 'http://localhost:5050/images/classIfy/new/phone1.png', '', 'phone'),
(3, 'new', '小米MIX 3', 'http://localhost:5050/images/classIfy/new/phone2.png', '', 'phone'),
(4, 'new', '小米8 青春版', 'http://localhost:5050/images/classIfy/new/phone3.png', '', 'phone'),
(5, 'new', '小米8 屏幕指纹版', 'http://localhost:5050/images/classIfy/new/phone4.png', '', 'phone'),
(6, 'new', '', '', '电视', 'tv'),
(7, 'new', '75英寸 4S', 'http://localhost:5050/images/classIfy/new/tv1.jpg', '', 'tv'),
(8, 'new', '58英寸电视4A', 'http://localhost:5050/images/classIfy/new/tv2.jpg', '', 'tv'),
(9, 'new', '40英寸 电视4C', 'http://localhost:5050/images/classIfy/new/tv3.jpg', '', 'tv'),
(10, 'new', '43英寸 4X', 'http://localhost:5050/images/classIfy/new/tv4.jpg', '', 'tv'),
(11, 'new', '65\"电视4旗舰版', 'http://localhost:5050/images/classIfy/new/tv5.jpg', '', 'tv'),
(12, 'new', '55英寸 4X', 'http://localhost:5050/images/classIfy/new/tv6.jpg', '', 'tv'),
(13, 'new', '', '', '电脑', ''),
(14, 'new', '', 'http://localhost:5050/images/classIfy/new/computer1.jpg', '', 'computer'),
(15, 'new', '', 'http://localhost:5050/images/classIfy/new/computer2.jpg', '', 'computer'),
(16, 'new', '', 'http://localhost:5050/images/classIfy/new/computer3.png', '', 'computer');

-- --------------------------------------------------------

--
-- 表的结构 `mi_detail_comment`
--

CREATE TABLE `mi_detail_comment` (
  `id` int(11) NOT NULL,
  `mid` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userImg` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `pic2` varchar(255) NOT NULL,
  `pic3` varchar(255) DEFAULT NULL,
  `zanCount` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `reply` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mi_detail_comment`
--

INSERT INTO `mi_detail_comment` (`id`, `mid`, `userName`, `userImg`, `content`, `pic`, `pic2`, `pic3`, `zanCount`, `time`, `reply`) VALUES
(1, '111', '南渡', 'http://localhost:5050/images/Details/XiaoMi8/userImage.webp', '哇，终于拿到小米8了，特别开心，客服小姐姐可以回我吗？', 'http://localhost:5050/images/Details/XiaoMi8/comment/content1.webp', 'http://localhost:5050/images/Details/XiaoMi8/comment/content2.webp', NULL, '3', '2018-12-12', '看到这里，客服妹子不禁发出了杠铃般的笑声~~~盒盒盒盒盒盒盒~~O(∩...'),
(2, '111', '南渡', 'http://localhost:5050/images/Details/XiaoMi8/userImage.webp', '抢了好久，终于抢到了，用起来真的很流畅，很喜欢的一款', 'http://localhost:5050/images/Details/XiaoMi8/comment/content1.webp', 'http://localhost:5050/images/Details/XiaoMi8/comment/content2.webp', NULL, '14', '2018-12-02', '看到这里，客服妹子不禁发出了杠铃般的笑声~~~盒盒盒盒盒盒盒~~O(∩...'),
(3, '111', '南渡', 'http://localhost:5050/images/Details/XiaoMi8/userImage.webp', '哇，终于拿到小米8了，特别开心，客服小姐姐可以回我吗？', 'http://localhost:5050/images/Details/XiaoMi8/comment/content1.webp', 'http://localhost:5050/images/Details/XiaoMi8/comment/content2.webp', NULL, '3', '2018-12-12', '看到这里，客服妹子不禁发出了杠铃般的笑声~~~盒盒盒盒盒盒盒~~O(∩...'),
(4, '111', '南渡', 'http://localhost:5050/images/Details/XiaoMi8/userImage.webp', '抢了好久，终于抢到了，用起来真的很流畅，很喜欢的一款', 'http://localhost:5050/images/Details/XiaoMi8/comment/content1.webp', 'http://localhost:5050/images/Details/XiaoMi8/comment/content2.webp', NULL, '14', '2018-12-02', '看到这里，客服妹子不禁发出了杠铃般的笑声~~~盒盒盒盒盒盒盒~~O(∩...'),
(5, '111', '南渡', 'http://localhost:5050/images/Details/XiaoMi8/userImage.webp', '抢了好久，终于抢到了，用起来真的很流畅，很喜欢的一款', 'http://localhost:5050/images/Details/XiaoMi8/comment/content1.webp', 'http://localhost:5050/images/Details/XiaoMi8/comment/content2.webp', NULL, '14', '2018-12-02', '看到这里，客服妹子不禁发出了杠铃般的笑声~~~盒盒盒盒盒盒盒~~O(∩...'),
(7, '1', 'demo凌', 'http://localhost:5050/images/Details/Mi8Youth/comment/photo/photo1.webp', '拍照没得说！！超喜欢！', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list1.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list2.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list3.webp', '111', '2018-12-12', ''),
(8, '1', 'demo凌', 'http://localhost:5050/images/Details/Mi8Youth/comment/photo/photo2.webp', '拍照没得说！！超喜欢！', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list1.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list2.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list3.webp', '111', '2018-12-12', ''),
(9, '1', 'demo凌', 'http://localhost:5050/images/Details/Mi8Youth/comment/photo/photo3.webp', '拍照没得说！！超喜欢！', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list1.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list2.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list3.webp', '111', '2018-12-12', '~~~盒盒盒盒盒盒盒~~O(∩...'),
(10, '1', 'demo凌', 'http://localhost:5050/images/Details/Mi8Youth/comment/photo/photo4.webp', '拍照没得说！！超喜欢！', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list1.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list2.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list3.webp', '111', '2018-12-12', ''),
(11, '1', 'demo凌', 'http://localhost:5050/images/Details/Mi8Youth/comment/photo/photo5.webp', '拍照没得说！！超喜欢！', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list1.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list2.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list3.webp', '111', '2018-12-12', ''),
(12, '11', 'demo凌', 'http://localhost:5050/images/Details/Mi8Youth/comment/photo/photo1.webp', '拍照没得说！！超喜欢！', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list1.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list2.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list3.webp', '111', '2018-12-12', ''),
(13, '11', 'demo凌', 'http://localhost:5050/images/Details/Mi8Youth/comment/photo/photo2.webp', '拍照没得说！！超喜欢！', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list1.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list2.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list3.webp', '111', '2018-12-12', ''),
(14, '11', 'demo凌', 'http://localhost:5050/images/Details/Mi8Youth/comment/photo/photo3.webp', '拍照没得说！！超喜欢！', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list1.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list2.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list3.webp', '111', '2018-12-12', '~~~盒盒盒盒盒盒盒~~O(∩...'),
(15, '11', 'demo凌', 'http://localhost:5050/images/Details/Mi8Youth/comment/photo/photo4.webp', '拍照没得说！！超喜欢！', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list1.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list2.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list3.webp', '111', '2018-12-12', ''),
(16, '11', 'demo凌', 'http://localhost:5050/images/Details/Mi8Youth/comment/photo/photo5.webp', '拍照没得说！！超喜欢！', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list1.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list2.webp', 'http://localhost:5050/images/Details/Mi8Youth/comment/images/list3.webp', '111', '2018-12-12', '');

-- --------------------------------------------------------

--
-- 表的结构 `mi_detail_img`
--

CREATE TABLE `mi_detail_img` (
  `id` int(11) NOT NULL,
  `mid` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `imgTitle` varchar(255) DEFAULT NULL,
  `imgSub` varchar(255) DEFAULT NULL,
  `classIfy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mi_detail_img`
--

INSERT INTO `mi_detail_img` (`id`, `mid`, `pic`, `imgTitle`, `imgSub`, `classIfy`) VALUES
(1, '111', 'http://localhost:5050/images/Details/XiaoMi8/Banner/banner1.webp', '', '', 'banner'),
(2, '111', 'http://localhost:5050/images/Details/XiaoMi8/Banner/banner2.webp', '', '', 'banner'),
(3, '111', 'http://localhost:5050/images/Details/XiaoMi8/Banner/banner3.webp', '', '', 'banner'),
(4, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon1.png', '超大屏', '6.21英寸', 'icon'),
(5, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon2.png', '双摄像头', '双1200万像素', 'icon'),
(6, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon3.png', '持久待机', '3000mAh', 'icon'),
(7, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon4.png', '极速畅玩', '8GB', 'icon'),
(8, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon5.png', '超大屏', '6.21英寸', 'icon'),
(9, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon6.png', '双摄像头', '双1200万像素', 'icon'),
(10, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon7.png', '持久待机', '3000mAh', 'icon'),
(11, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon8.png', '极速畅玩', '8GB', 'icon'),
(12, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon9.png', '持久待机', '3000mAh', 'icon'),
(13, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon10.png', '极速畅玩', '8GB', 'icon'),
(14, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list1.webp', '', '', 'param'),
(15, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list2.webp', '', '', 'param'),
(16, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list3.webp', '', '', 'param'),
(17, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list4.webp', '', '', 'param'),
(18, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list5.webp', '', '', 'param'),
(19, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list6.webp', '', '', 'param'),
(20, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list7.webp', '', '', 'param'),
(21, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list8.jpg', '', '', 'param'),
(22, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list9.webp', '', '', 'param'),
(23, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list10.webp', '', '', 'param'),
(24, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list11.webp', '', '', 'param'),
(25, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list12.webp', '', '', 'param'),
(26, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list13.webp', '', '', 'param'),
(27, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list14.webp', '', '', 'param'),
(28, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list15.webp', '', '', 'param'),
(29, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list16.webp', '', '', 'param'),
(30, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list17.webp', '', '', 'param'),
(31, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list18.webp', '', '', 'param'),
(32, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list19.webp', '', '', 'param'),
(33, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list20.webp', '', '', 'param'),
(34, '111', 'http://localhost:5050/images/Details/XiaoMi8/Param/list21.jpg', '', '', 'param'),
(35, '1', 'http://localhost:5050/images/Details/Mi8Youth/Banner/banner1.webp', '', '', 'banner'),
(36, '1', 'http://localhost:5050/images/Details/Mi8Youth/Banner/banner2.webp', '', '', 'banner'),
(37, '1', 'http://localhost:5050/images/Details/Mi8Youth/Banner/banner3.webp', '', '', 'banner'),
(38, '1', 'http://localhost:5050/images/Details/Mi8Youth/Banner/banner4.webp', '', '', 'banner'),
(39, '1', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon1.png', '超大屏', '6.21英寸', 'icon'),
(40, '1', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon2.png', '双摄像头', '双1200万像素', 'icon'),
(41, '1', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon3.png', '持久待机', '3000mAh', 'icon'),
(42, '1', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon4.png', '极速畅玩', '8GB', 'icon'),
(43, '1', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon5.png', '超大屏', '6.21英寸', 'icon'),
(44, '1', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon6.png', '双摄像头', '双1200万像素', 'icon'),
(45, '1', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon7.png', '持久待机', '3000mAh', 'icon'),
(46, '1', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon8.png', '极速畅玩', '8GB', 'icon'),
(47, '1', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon9.png', '持久待机', '3000mAh', 'icon'),
(48, '1', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon10.png', '极速畅玩', '8GB', 'icon'),
(49, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list1.webp', '', '', 'param'),
(50, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list2.webp', '', '', 'param'),
(51, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list3.webp', '', '', 'param'),
(52, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list4.webp', '', '', 'param'),
(53, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list5.webp', '', '', 'param'),
(54, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list6.webp', '', '', 'param'),
(56, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list8.webp', '', '', 'param'),
(57, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list9.webp', '', '', 'param'),
(58, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list10.webp', '', '', 'param'),
(59, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list11.webp', '', '', 'param'),
(60, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list12.webp', '', '', 'param'),
(61, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list13.webp', '', '', 'param'),
(62, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list14.webp', '', '', 'param'),
(63, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list15.webp', '', '', 'param'),
(64, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list16.webp', '', '', 'param'),
(65, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list17.webp', '', '', 'param'),
(66, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list18.webp', '', '', 'param'),
(67, '1', 'http://localhost:5050/images/Details/Mi8Youth/Param/list19.jpg', '', '', 'param'),
(68, '11', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon1.png', '超大屏', '6.21英寸', 'icon'),
(69, '11', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon2.png', '双摄像头', '双1200万像素', 'icon'),
(70, '11', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon3.png', '持久待机', '3000mAh', 'icon'),
(71, '11', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon4.png', '极速畅玩', '8GB', 'icon'),
(72, '11', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon5.png', '超大屏', '6.21英寸', 'icon'),
(73, '11', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon6.png', '双摄像头', '双1200万像素', 'icon'),
(74, '11', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon7.png', '持久待机', '3000mAh', 'icon'),
(75, '11', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon8.png', '极速畅玩', '8GB', 'icon'),
(76, '11', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon9.png', '持久待机', '3000mAh', 'icon'),
(77, '11', 'http://localhost:5050/images/Details/XiaoMi8/Param/icon10.png', '极速畅玩', '8GB', 'icon'),
(78, '11', 'http://localhost:5050/images/Details/redmi/Banner/banner1.webp', '', '', 'banner'),
(79, '11', 'http://localhost:5050/images/Details/redmi/Banner/banner2.webp', '', '', 'banner'),
(80, '11', 'http://localhost:5050/images/Details/redmi/Banner/banner3.webp', '', '', 'banner'),
(81, '11', 'http://localhost:5050/images/Details/redmi/Banner/banner4.webp', '', '', 'banner'),
(82, '11', 'http://localhost:5050/images/Details/redmi/Param/list1.webp', '', '', 'param'),
(83, '11', 'http://localhost:5050/images/Details/redmi/Param/list2.webp', '', '', 'param'),
(84, '11', 'http://localhost:5050/images/Details/redmi/Param/list3.webp', '', '', 'param'),
(85, '11', 'http://localhost:5050/images/Details/redmi/Param/list4.webp', '', '', 'param'),
(86, '11', 'http://localhost:5050/images/Details/redmi/Param/list5.webp', '', '', 'param'),
(87, '11', 'http://localhost:5050/images/Details/redmi/Param/list6.webp', '', '', 'param'),
(88, '11', 'http://localhost:5050/images/Details/redmi/Param/list7.webp', '', '', 'param'),
(89, '11', 'http://localhost:5050/images/Details/redmi/Param/list8.webp', '', '', 'param'),
(90, '11', 'http://localhost:5050/images/Details/redmi/Param/list9.webp', '', '', 'param'),
(91, '11', 'http://localhost:5050/images/Details/redmi/Param/list10.webp', '', '', 'param'),
(92, '11', 'http://localhost:5050/images/Details/redmi/Param/list11.webp', '', '', 'param'),
(93, '11', 'http://localhost:5050/images/Details/redmi/Param/list12.webp', '', '', 'param'),
(94, '11', 'http://localhost:5050/images/Details/redmi/Param/list13.webp', '', '', 'param'),
(95, '11', 'http://localhost:5050/images/Details/redmi/Param/list14.webp', '', '', 'param'),
(96, '11', 'http://localhost:5050/images/Details/redmi/Param/list15.webp', '', '', 'param'),
(97, '11', 'http://localhost:5050/images/Details/redmi/Param/list16.webp', '', '', 'param'),
(98, '11', 'http://localhost:5050/images/Details/redmi/Param/list17.webp', '', '', 'param'),
(99, '11', 'http://localhost:5050/images/Details/redmi/Param/list18.webp', '', '', 'param'),
(100, '11', 'http://localhost:5050/images/Details/redmi/Param/list19.webp', '', '', 'param'),
(101, '11', 'http://localhost:5050/images/Details/redmi/Param/list20.webp', '', '', 'param'),
(102, '11', 'http://localhost:5050/images/Details/redmi/Param/list21.webp', '', '', 'param'),
(103, '11', 'http://localhost:5050/images/Details/redmi/Param/list22.webp', '', '', 'param'),
(104, '11', 'http://localhost:5050/images/Details/redmi/Param/list23.webp', '', '', 'param'),
(105, '11', 'http://localhost:5050/images/Details/redmi/Param/list24.jpg', '', '', 'param');

-- --------------------------------------------------------

--
-- 表的结构 `mi_detail_param`
--

CREATE TABLE `mi_detail_param` (
  `id` int(11) NOT NULL,
  `mid` varchar(255) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `accidentName` varchar(255) DEFAULT NULL,
  `accidentPrice` varchar(255) DEFAULT NULL,
  `prolongName` varchar(255) DEFAULT NULL,
  `prolongPrice` varchar(255) DEFAULT NULL,
  `classIfy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mi_detail_param`
--

INSERT INTO `mi_detail_param` (`id`, `mid`, `size`, `price`, `color`, `count`, `accidentName`, `accidentPrice`, `prolongName`, `prolongPrice`, `classIfy`) VALUES
(1, '111', '8GB+128GB', '3399', '', NULL, '', '', '', '', 'size'),
(2, '111', '', '', '暮光色', NULL, '', '', '', '', 'color'),
(3, '111', '', '', '', NULL, '意外保障服务', '299', '', '', 'accident'),
(4, '111', '', '', '', NULL, '碎屏保障服务', '159', '', '', 'accident'),
(5, '111', '', '', '', NULL, '', '', '延长保修服务', '99', 'prolong'),
(6, '111', '', '', '透明', NULL, '', '', '', '', 'color'),
(7, '111', '6GB+128GB', '2999', '', NULL, '', '', '', '', 'size'),
(9, '1', '', '', '透明', NULL, '', '', '', '', 'color'),
(10, '1', '', '', '', NULL, '意外保障服务', '299', '', '', 'accident'),
(11, '1', '', '', '', NULL, '碎屏保障服务', '159', '', '', 'accident'),
(12, '1', '', '', '', NULL, '', '', '延长保修服务', '99', 'prolong'),
(15, '1', '', '', '暮光色', NULL, '', '', '', '', 'color'),
(16, '1', '8GB+128GB', '3399', '', NULL, '', '', '', '', 'size'),
(17, '1', '6GB+128GB', '2999', '', NULL, '', '', '', '', 'size'),
(18, '11', '', '', '', NULL, '意外保障服务', '299', '', '', 'accident'),
(19, '11', '', '', '', NULL, '碎屏保障服务', '159', '', '', 'accident'),
(20, '11', '', '', '', NULL, '', '', '延长保修服务', '99', 'prolong'),
(21, '11', '', '', '宝石蓝', NULL, '', '', '', '', 'color'),
(22, '11', '', '', '黑色', NULL, '', '', '', '', 'color'),
(23, '11', '6GB+128GB', '3299', '', NULL, '', '', '', '', 'size'),
(24, '11', '8GB+128GB', '3599', '', NULL, '', '', '', '', 'size'),
(25, '11', '故宫特别版 10GB+256GB', '4999', '', NULL, '', '', '', '', 'size'),
(26, '11', '8GB+256GB', '3999', '', NULL, '', '', '', '', 'size');

-- --------------------------------------------------------

--
-- 表的结构 `mi_detail_title`
--

CREATE TABLE `mi_detail_title` (
  `id` int(11) NOT NULL,
  `mid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `discounts1` varchar(255) NOT NULL,
  `discounts2` varchar(255) NOT NULL,
  `newPrice` varchar(255) NOT NULL,
  `pastPrice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mi_detail_title`
--

INSERT INTO `mi_detail_title` (`id`, `mid`, `title`, `subtitle`, `discounts1`, `discounts2`, `newPrice`, `pastPrice`) VALUES
(1, '111', '小米8 屏幕指纹版', '全球首款 压感屏幕指纹 / 双频GPS超精准定位 / 支持红外人脸识别 / 骁龙845 AIE 旗舰处理器', '「8GB+128GB立省200，到手价3399元」', '「6GB+128GB赠贴膜」', '3399', '3599'),
(2, '1', '小米8 青春版', '潮流镜面渐变色 / 2400万自拍旗舰 / 7.5mm超薄机身 / 6.26\"小刘海全面屏 / AI裸妆美颜 / 骁龙660AIE处理器', '「6GB+64GB 全色系1499元」', '', '1999', ''),
(3, '11', '小米MIX 3', '磁动力滑盖全面屏  / 前后旗舰 AI 双摄 / 四曲面彩色陶瓷机身 / 高效 10W 无线充电', '', '', '3599', '');

-- --------------------------------------------------------

--
-- 表的结构 `mi_index`
--

CREATE TABLE `mi_index` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `NewPrice` varchar(255) DEFAULT NULL,
  `PastPrice` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  `classIfy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mi_index`
--

INSERT INTO `mi_index` (`id`, `mid`, `pic`, `title`, `subtitle`, `NewPrice`, `PastPrice`, `className`, `classIfy`) VALUES
(1, 0, 'http://localhost:5050/images/Index/Banner/banner1.webp', NULL, NULL, NULL, NULL, NULL, 'banner'),
(2, 0, 'http://localhost:5050/images/Index/Banner/banner2.jpg', NULL, NULL, NULL, NULL, NULL, 'banner'),
(3, 0, 'http://localhost:5050/images/Index/Banner/banner3.webp', NULL, NULL, NULL, NULL, NULL, 'banner'),
(4, 0, 'http://localhost:5050/images/Index/IconList/icon-1.webp', NULL, NULL, NULL, NULL, NULL, 'icon'),
(5, 0, 'http://localhost:5050/images/Index/IconList/icon-2.webp', NULL, NULL, NULL, NULL, NULL, 'icon'),
(6, 0, 'http://localhost:5050/images/Index/IconList/icon-3.webp', NULL, NULL, NULL, NULL, NULL, 'icon'),
(7, 0, 'http://localhost:5050/images/Index/IconList/icon-4.webp', NULL, NULL, NULL, NULL, NULL, 'icon'),
(8, 0, 'http://localhost:5050/images/Index/IconList/icon-5.webp', NULL, NULL, NULL, NULL, NULL, 'icon'),
(9, 0, 'http://localhost:5050/images/Index/IconList/icon-6.webp', NULL, NULL, NULL, NULL, NULL, 'icon'),
(12, 0, 'http://localhost:5050/images/Index/IconList/icon-7.webp', NULL, NULL, NULL, NULL, NULL, 'icon'),
(13, 0, 'http://localhost:5050/images/Index/IconList/icon-8.webp', NULL, NULL, NULL, NULL, NULL, 'icon'),
(14, 0, 'http://localhost:5050/images/Index/IconList/icon-9.webp', NULL, NULL, NULL, NULL, NULL, 'icon'),
(15, 0, 'http://localhost:5050/images/Index/IconList/icon-10.webp', NULL, NULL, NULL, NULL, NULL, 'icon'),
(16, 11, 'http://localhost:5050/images/Index/Recommend/recommend1.jpg', NULL, NULL, NULL, NULL, NULL, 'recommend'),
(17, 0, 'http://localhost:5050/images/Index/Recommend/recommend2.webp', NULL, NULL, NULL, NULL, NULL, 'recommend'),
(18, 0, 'http://localhost:5050/images/Index/Recommend/recommend3.webp', NULL, NULL, NULL, NULL, NULL, 'recommend'),
(20, 0, 'http://localhost:5050/images/Index/Advertising/advertising1.jpg', NULL, NULL, NULL, NULL, NULL, 'advertising'),
(21, 0, 'http://localhost:5050/images/Index/Advertising/advertising2.jpg', NULL, NULL, NULL, NULL, NULL, 'advertising'),
(22, 0, 'http://localhost:5050/images/Index/Advertising/advertising3.jpg', NULL, NULL, NULL, NULL, NULL, 'advertising'),
(23, 0, 'http://localhost:5050/images/Index/Advertising/advertising4.webp', NULL, NULL, NULL, NULL, NULL, 'advertising'),
(24, 0, 'http://localhost:5050/images/Index/Advertising/advertising5.jpg', NULL, NULL, NULL, NULL, NULL, 'advertising'),
(25, 0, 'http://localhost:5050/images/Index/Advertising/advertising6.webp', NULL, NULL, NULL, NULL, NULL, 'advertising'),
(26, 0, 'http://localhost:5050/images/Index/Advertising/advertising7.webp', NULL, NULL, NULL, NULL, NULL, 'advertising'),
(27, 0, 'http://localhost:5050/images/Index/overBalance/overbalance1.webp', '', '', '', NULL, NULL, 'overBalance'),
(28, 1, 'http://localhost:5050/images/Index/overBalance/Images/ItemImage1.webp', '小米8 青春版', '潮流镜面渐变色，自拍旗舰', '1399起', NULL, NULL, 'overBalance'),
(29, 111, 'http://localhost:5050/images/Index/overBalance/Images/ItemImage2.webp', '小米8 屏幕指纹版', '压感屏幕指纹，潮流外观', '2999起', NULL, NULL, 'overBalance'),
(30, 0, 'http://localhost:5050/images/Index/overBalance/Images/ItemImage3.webp', '黑鲨游戏手机 Helo', '双液冷，更能打', '3199起', NULL, NULL, 'overBalance'),
(31, 0, 'http://localhost:5050/images/Index/overBalance/Images/ItemImage4.webp', '红米6', '小屏高性能的双摄手机', '729起', '', NULL, 'overBalance'),
(32, 0, 'http://localhost:5050/images/Index/overBalance/Images/ItemImage5.webp', '红米6A', '好用好看不贵', '569起', '599', NULL, 'overBalance'),
(33, 0, 'http://localhost:5050/images/Index/overBalance/Images/ItemImage6.webp', '小米6X', '轻薄美观的拍照手机', '1249起', '1799', NULL, 'overBalance'),
(34, 0, 'http://localhost:5050/images/Index/overBalance/Images/ItemImage7.webp', '小米8 SE', '三星 AMOLED 全面屏', '1699起', '1999', NULL, 'overBalance'),
(35, 0, 'http://localhost:5050/images/Index/overBalance/Images/ItemImage8.webp', '小米平板4', '追剧神器 / 支持AI人脸识别', '1099起', NULL, NULL, 'overBalance'),
(36, 0, 'http://localhost:5050/images/Index/xiaoMiTV/tv1.jpg', NULL, NULL, NULL, NULL, '更多小米电视产品 >', 'xiaomiTV'),
(37, 0, 'http://localhost:5050/images/Index/xiaoMiTV/images/list1.jpg', '小米电视4C 40英寸', 'FHD全高清屏，钢琴烤漆', '1199', '1599', NULL, 'xiaomiTV'),
(38, 0, 'http://localhost:5050/images/Index/xiaoMiTV/images/list2.webp', '小米电视4C 55英寸', '4K HDR，人工智能系统', '2199', '2599', NULL, 'xiaomiTV'),
(39, 0, 'http://localhost:5050/images/Index/xiaoMiTV/images/list3.jpg', '小米电视4A 32英寸', '人工智能系统，高清液晶屏', '799', '999', NULL, 'xiaomiTV'),
(40, 0, 'http://localhost:5050/images/Index/xiaoMiTV/images/list4.webp', '小米电视4C 43英寸', 'FHD全高清屏，钢琴烤漆', '1299', '1599', NULL, 'xiaomiTV'),
(41, 0, 'http://localhost:5050/images/Index/xiaoMiTV/images/list5.webp', '小米电视4A 50英寸', '4K HDR，人工智能语音系统', '1899', '2199', NULL, 'xiaomiTV'),
(42, 0, 'http://localhost:5050/images/Index/xiaoMiTV/images/list6.webp', '小米电视4A 58英寸', '4K HDR，人工智能语音系统', '2499', '2999', NULL, 'xiaomiTV'),
(43, 0, 'http://localhost:5050/images/Index/Notebook/notbook.jpg', NULL, NULL, NULL, NULL, '更多小米笔记本产品 >', 'Notebook'),
(44, 0, 'http://localhost:5050/images/Index/Notebook/images/list1.webp', '15.6\" i5 8G MX110', '全面均衡的国民轻薄本', '4599', NULL, NULL, 'Notebook'),
(45, 0, 'http://localhost:5050/images/Index/Notebook/images/list2.webp', '13.3\" 四核i7 MX150', '第8代四核i7处理器 独显', '5999', NULL, NULL, 'Notebook'),
(46, 0, 'http://localhost:5050/images/Index/Notebook/images/list3.webp', '15.6\" i7 MX150', '高性能独显 第八代处理器', '6999', NULL, NULL, 'Notebook'),
(47, 0, 'http://localhost:5050/images/Index/Notebook/images/list4.webp', '13.3\" 四核i7 MX150 ', '带独立显卡的轻薄笔记本', '5999', NULL, NULL, 'Notebook'),
(48, 0, 'http://localhost:5050/images/Index/Notebook/images/list5.webp', '15.6\"8代i7 16G 1060', '性能怪兽 信仰级游戏体验', '8999', NULL, NULL, 'Notebook'),
(49, 0, 'http://localhost:5050/images/Index/Notebook/images/list6.webp', '12.5\" M3 4G 128G 银色', '轻薄长续航，超窄边框', '3599', NULL, NULL, 'Notebook'),
(50, 0, 'http://localhost:5050/images/Index/NewProduct/new.webp', NULL, NULL, NULL, NULL, '更多新品 >', 'newProduct'),
(51, 0, 'http://localhost:5050/images/Index/NewProduct/images/list1.webp', '米兔儿童书包2', '校园生活好伴侣', '199起', NULL, NULL, 'newProduct'),
(52, 0, 'http://localhost:5050/images/Index/NewProduct/images/list2.webp', '米家空调', '大1匹，静音，快速制冷热', '1599', '1699', NULL, 'newProduct'),
(53, 0, 'http://localhost:5050/images/Index/NewProduct/images/list3.webp', '米家互联网洗烘一体机10kg', '洗得净、烘得干，全家衣物一台就够了', '2499', NULL, NULL, 'newProduct'),
(54, 0, 'http://localhost:5050/images/Index/NewProduct/images/list4.webp', '米家互联网空调（一级能效）', '1.5匹，全直流变频', '2499', '2599', NULL, 'newProduct'),
(55, 0, 'http://localhost:5050/images/Index/NewProduct/images/list5.webp', '小米移动电源3 20000mAh 高配版', '大容量，一个就够用', '199', NULL, NULL, 'newProduct'),
(56, 0, 'http://localhost:5050/images/Index/NewProduct/images/list6.webp', '小米小爱音箱HD', '震撼嘹亮 音智同享', '599', NULL, NULL, 'newProduct'),
(57, 0, 'http://localhost:5050/images/Index/MiAi/AI.webp', NULL, NULL, NULL, NULL, '更多米家智能产品 >', 'MIAI'),
(58, 0, 'http://localhost:5050/images/Index/MiAi/images/list1.jpg', '米家台灯Pro', '全桌面立体光照', '349', NULL, NULL, 'MIAI'),
(59, 0, 'http://localhost:5050/images/Index/MiAi/images/list2.webp', '米家声波电动牙刷', '高效能磁悬浮声波马达，强动力刷的干净  ', '179', '199', NULL, 'MIAI'),
(60, 0, 'http://localhost:5050/images/Index/MiAi/images/list3.webp', '米家自动洗手机套装', '伸手出泡，抑菌有效', '79', NULL, NULL, 'MIAI'),
(61, 0, 'http://localhost:5050/images/Index/Rests/list1.webp', NULL, NULL, NULL, NULL, NULL, 'rests'),
(62, 0, 'http://localhost:5050/images/Index/Rests/list2.webp', NULL, NULL, NULL, NULL, NULL, 'rests'),
(63, 0, 'http://localhost:5050/images/Index/Rests/list3.webp', NULL, NULL, NULL, NULL, NULL, 'rests'),
(64, 0, 'http://localhost:5050/images/Index/Rests/list4.webp', NULL, NULL, NULL, NULL, NULL, 'rests'),
(65, 0, 'http://localhost:5050/images/Index/Rests/list5.webp', NULL, NULL, NULL, NULL, NULL, 'rests'),
(66, 0, 'http://localhost:5050/images/Index/Rests/list6.webp', NULL, NULL, NULL, NULL, NULL, 'rests'),
(67, 0, 'http://localhost:5050/images/Index/StarItem/starItem.jpg', NULL, NULL, NULL, NULL, NULL, 'starItem'),
(68, 0, 'http://localhost:5050/images/Index/StarItem/images/list1.jpg', '小米手环3 ', '全新OLED可触摸大屏', '159', '169', NULL, 'starItem'),
(69, 0, 'http://localhost:5050/images/Index/StarItem/images/list2.jpg', '小米盒子4', '人工智能语音机顶盒，海量片源', '299', '', NULL, 'starItem'),
(70, 0, 'http://localhost:5050/images/Index/StarItem/images/list3.jpg', '小米米家小白智能摄像机增强版', '智能看护， AI你所爱', '369', '399', NULL, 'starItem'),
(71, 0, 'http://localhost:5050/images/Index/StarItem/images/list4.jpg', '小米净水器1A（厨下式）', '小身材节省空间，大流量直出纯净水', '1399', '1499', NULL, 'starItem'),
(72, 0, 'http://localhost:5050/images/Index/StarItem/images/list5.jpg', '华来小方智能摄像机 1S', '1080P清晰画质，安全看家', '99', '', NULL, 'starItem'),
(73, 0, 'http://localhost:5050/images/Index/StarItem/images/list6.jpg', '九号平衡车', '年轻人的酷玩具', '1949', '1999', NULL, 'starItem');

--
-- 转储表的索引
--

--
-- 表的索引 `mi_cart`
--
ALTER TABLE `mi_cart`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `mi_classify_left`
--
ALTER TABLE `mi_classify_left`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `mi_classify_right`
--
ALTER TABLE `mi_classify_right`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `mi_detail_comment`
--
ALTER TABLE `mi_detail_comment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `mi_detail_img`
--
ALTER TABLE `mi_detail_img`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `mi_detail_param`
--
ALTER TABLE `mi_detail_param`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `mi_detail_title`
--
ALTER TABLE `mi_detail_title`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `mi_index`
--
ALTER TABLE `mi_index`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `mi_cart`
--
ALTER TABLE `mi_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `mi_classify_left`
--
ALTER TABLE `mi_classify_left`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `mi_classify_right`
--
ALTER TABLE `mi_classify_right`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `mi_detail_comment`
--
ALTER TABLE `mi_detail_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `mi_detail_img`
--
ALTER TABLE `mi_detail_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- 使用表AUTO_INCREMENT `mi_detail_param`
--
ALTER TABLE `mi_detail_param`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `mi_detail_title`
--
ALTER TABLE `mi_detail_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `mi_index`
--
ALTER TABLE `mi_index`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
