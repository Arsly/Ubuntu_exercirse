-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2020 年 01 月 18 日 11:23
-- 伺服器版本: 5.7.28-0ubuntu0.16.04.2
-- PHP 版本： 7.0.33-0ubuntu0.16.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `host`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Contract_Data`
--

CREATE TABLE `Contract_Data` (
  `CT_ID` int(11) NOT NULL,
  `CT_Name` varchar(255) NOT NULL,
  `EMP_ID` int(11) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `S_ID` int(11) NOT NULL,
  `E_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Contract_Data`
--

INSERT INTO `Contract_Data` (`CT_ID`, `CT_Name`, `EMP_ID`, `C_ID`, `S_ID`, `E_ID`) VALUES
(1, '組裝電腦', 1, 1, 1, 1),
(2, '課程上線', 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `Customer_Data`
--

CREATE TABLE `Customer_Data` (
  `C_ID` int(11) NOT NULL,
  `C_Name` varchar(255) NOT NULL,
  `C_R` varchar(255) NOT NULL,
  `C_Phone` int(10) NOT NULL,
  `C_Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Customer_Data`
--

INSERT INTO `Customer_Data` (`C_ID`, `C_Name`, `C_R`, `C_Phone`, `C_Address`) VALUES
(1, '大眾電腦', '林oo', 924150058, '624嘉義縣大林鎮南華路一段57號'),
(2, '燦坤電腦', '蔡oo', 924150059, '624嘉義縣大林鎮南華路一段58號'),
(3, '順發電腦', '韓oo', 924150020, '624嘉義縣大林鎮南華路一段20號'),
(4, '原價屋', '周oo', 924150021, '624嘉義縣大林鎮南華路一段21號');

-- --------------------------------------------------------

--
-- 資料表結構 `Employee_Data`
--

CREATE TABLE `Employee_Data` (
  `Emp_ID` int(11) NOT NULL,
  `Emp_Name` varchar(255) NOT NULL,
  `Emp_Phone` int(10) NOT NULL,
  `Emp_Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Employee_Data`
--

INSERT INTO `Employee_Data` (`Emp_ID`, `Emp_Name`, `Emp_Phone`, `Emp_Address`) VALUES
(1, '林xx', 928325331, '台南市永康區中華路11號'),
(2, '許xx', 928325332, '台南市永康區中華路12號'),
(3, '楊xx', 928325333, '台南市永康區中華路13號'),
(4, '王xx', 928325334, '台南市永康區中華路14號'),
(5, '李xx', 928325335, '台南市永康區中華路15號');

-- --------------------------------------------------------

--
-- 資料表結構 `Enterprise_Data`
--

CREATE TABLE `Enterprise_Data` (
  `Enter_ID` int(11) NOT NULL,
  `Enter_Name` varchar(255) NOT NULL,
  `Enter_Phone` varchar(255) NOT NULL,
  `Enter_Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Enterprise_Data`
--

INSERT INTO `Enterprise_Data` (`Enter_ID`, `Enter_Name`, `Enter_Phone`, `Enter_Address`) VALUES
(1, '華碩電腦', '0924150056', '622嘉義縣大林鎮南華路一段55號'),
(2, '巨匠電腦', '0924150057', '623嘉義縣大林鎮南華路一段56號');

-- --------------------------------------------------------

--
-- 資料表結構 `Service_Data`
--

CREATE TABLE `Service_Data` (
  `S_ID` int(11) NOT NULL,
  `S_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `Service_Data`
--

INSERT INTO `Service_Data` (`S_ID`, `S_Name`) VALUES
(1, '主機板製造'),
(2, '教具製造');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `Contract_Data`
--
ALTER TABLE `Contract_Data`
  ADD PRIMARY KEY (`CT_ID`);

--
-- 資料表索引 `Customer_Data`
--
ALTER TABLE `Customer_Data`
  ADD PRIMARY KEY (`C_ID`);

--
-- 資料表索引 `Employee_Data`
--
ALTER TABLE `Employee_Data`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- 資料表索引 `Enterprise_Data`
--
ALTER TABLE `Enterprise_Data`
  ADD PRIMARY KEY (`Enter_ID`);

--
-- 資料表索引 `Service_Data`
--
ALTER TABLE `Service_Data`
  ADD PRIMARY KEY (`S_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
