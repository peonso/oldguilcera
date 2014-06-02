-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1:3306

-- Tempo de Geração: 04/05/2014 às 21:55
-- Versão do servidor: 5.5.33
-- Versão do PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Banco de dados: `guilcera`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `premend` int(10) unsigned NOT NULL DEFAULT '0',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `warned` tinyint(1) NOT NULL DEFAULT '0',
  `warnings` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111112 ;

--
-- Fazendo dump de dados para tabela `accounts`
--

INSERT INTO `accounts` (`id`, `password`, `email`, `premend`, `blocked`, `deleted`, `warned`, `warnings`) VALUES
(1, '1', 'sampleaccount@hotmail.com', 1401748808, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bans`
--

CREATE TABLE `bans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT 'this field defines if its ip, account, player, or any else ban',
  `value` int(10) unsigned NOT NULL COMMENT 'ip, player guid, account number',
  `param` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'mask',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL,
  `added` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`value`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `global_storage`
--

CREATE TABLE `global_storage` (
  `key` int(10) unsigned NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `groups`
--

CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'group name',
  `flags` bigint(20) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL,
  `maxdepotitems` int(11) NOT NULL,
  `maxviplist` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `groups`
--

INSERT INTO `groups` (`id`, `name`, `flags`, `access`, `maxdepotitems`, `maxviplist`) VALUES
(1, 'player', 0, 0, 1000, 100),
(2, 'Gamemaster', 603554057, 3, 1000, 100);

-- --------------------------------------------------------

--
-- Estrutura para tabela `guilds`
--

CREATE TABLE `guilds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'guild name - nothing else needed here',
  `ownerid` int(11) NOT NULL,
  `creationdata` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `guild_ranks`
--

CREATE TABLE `guild_ranks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guild_id` int(10) unsigned NOT NULL COMMENT 'guild',
  `name` varchar(255) NOT NULL COMMENT 'rank name',
  `level` int(11) NOT NULL COMMENT 'rank level - leader, vice, member, maybe something else',
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `houses`
--

CREATE TABLE `houses` (
  `id` int(10) unsigned NOT NULL,
  `owner` int(11) NOT NULL,
  `paid` int(10) unsigned NOT NULL DEFAULT '0',
  `warnings` int(11) NOT NULL DEFAULT '0',
  `lastwarning` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `houses`
--

INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `lastwarning`) VALUES
(3, 0, 0, 0, 1399156795),
(6, 0, 0, 0, 1399156795),
(7, 0, 0, 0, 1399156795),
(8, 0, 0, 0, 1399156795);

-- --------------------------------------------------------

--
-- Estrutura para tabela `house_lists`
--

CREATE TABLE `house_lists` (
  `house_id` int(10) unsigned NOT NULL,
  `listid` int(11) NOT NULL,
  `list` text NOT NULL,
  KEY `house_id` (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `map_store`
--

CREATE TABLE `map_store` (
  `house_id` int(10) unsigned NOT NULL,
  `data` blob NOT NULL,
  UNIQUE KEY `house_id` (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `map_store`
--

INSERT INTO `map_store` (`house_id`, `data`) VALUES
(3, 0xcf00da000701000000ba0400d500d9000701000000da061400000000150000000000d500da000701000000db061400000000150000000000d400dc000701000000e0061400000000150000000000d500dc000701000000e1061400000000150000000000),
(6, 0xbf00de000701000000e0061400000000150000000000bf00e0000701000000e0061400000000150000000000bf00e2000701000000e0061400000000150000000000c000de000701000000e1061400000000150000000000c000e0000701000000e1061400000000150000000000c000e2000701000000e1061400000000150000000000c500e1000701000000c30400c100e4000701000000c50400),
(7, 0xd500de000701000000da061400000000150000000000d500df000701000000db061400000000150000000000cf00e0000701000000c30400d400e2000701000000e0061400000000150000000000d500e2000701000000e1061400000000150000000000),
(8, 0xcf00e6000701000000c30400d000e4000701000000da061400000000150000000000d000e5000701000000db061400000000150000000000d500e4000701000000da061400000000150000000000d500e5000701000000db061400000000150000000000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `nicaw_accounts`
--

CREATE TABLE `nicaw_accounts` (
  `account_id` int(10) unsigned NOT NULL,
  `rlname` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `comment` tinytext,
  `recovery_key` char(32) DEFAULT NULL,
  `reveal_characters` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `nicaw_accounts`
--

INSERT INTO `nicaw_accounts` (`account_id`, `rlname`, `location`, `comment`, `recovery_key`, `reveal_characters`) VALUES
(111111, '', '', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `nicaw_account_logs`
--

CREATE TABLE `nicaw_account_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `ip` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Fazendo dump de dados para tabela `nicaw_account_logs`
--

INSERT INTO `nicaw_account_logs` (`id`, `account_id`, `ip`, `date`, `action`) VALUES
(1, 111111, 2130706433, 1399156636, 'Created'),
(2, 111111, 2130706433, 1399156668, 'Created character: Test'),
(3, 1, 2130706433, 1399158340, 'Created character: Knight Test'),
(4, 1, 2130706433, 1399158354, 'Created character: Druid Test'),
(5, 1, 2130706433, 1399158374, 'Created character: Sorc Test'),
(6, 1, 2130706433, 1399158389, 'Created character: Pala Test'),
(7, 1, 2130706433, 1399159745, 'Created character: Alpha Test');

-- --------------------------------------------------------

--
-- Estrutura para tabela `nicaw_guild_info`
--

CREATE TABLE `nicaw_guild_info` (
  `id` int(10) unsigned NOT NULL COMMENT 'guild id',
  `description` tinytext,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `nicaw_guild_invites`
--

CREATE TABLE `nicaw_guild_invites` (
  `gid` int(10) unsigned NOT NULL COMMENT 'guild id',
  `pid` int(10) unsigned NOT NULL COMMENT 'player id',
  `rank` int(10) unsigned DEFAULT NULL,
  KEY `gid` (`gid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `nicaw_news`
--

CREATE TABLE `nicaw_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `creator` varchar(25) NOT NULL,
  `date` int(11) NOT NULL,
  `text` text NOT NULL,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `nicaw_polls`
--

CREATE TABLE `nicaw_polls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `startdate` int(10) unsigned NOT NULL,
  `enddate` int(10) unsigned NOT NULL,
  `minlevel` int(10) unsigned NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `nicaw_poll_options`
--

CREATE TABLE `nicaw_poll_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL,
  `option` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `nicaw_poll_votes`
--

CREATE TABLE `nicaw_poll_votes` (
  `option_id` int(10) unsigned NOT NULL,
  `account_id` int(11) NOT NULL,
  `ip` int(11) NOT NULL,
  KEY `option_id` (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `players`
--

CREATE TABLE `players` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'users group',
  `sex` int(10) unsigned NOT NULL DEFAULT '0',
  `vocation` int(10) unsigned NOT NULL DEFAULT '0',
  `experience` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '1',
  `maglevel` int(10) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '100',
  `healthmax` int(10) unsigned NOT NULL DEFAULT '100',
  `mana` int(10) unsigned NOT NULL DEFAULT '100',
  `manamax` int(10) unsigned NOT NULL DEFAULT '100',
  `manaspent` int(10) unsigned NOT NULL DEFAULT '0',
  `direction` int(10) unsigned NOT NULL DEFAULT '0',
  `looktype` int(10) unsigned NOT NULL default '128',
  `lookhead` int(10) unsigned NOT NULL default '78',
  `lookbody` int(10) unsigned NOT NULL default '69',
  `looklegs` int(10) unsigned NOT NULL default '58',
  `lookfeet` int(10) unsigned NOT NULL default '76',
  `posx` int(11) NOT NULL DEFAULT '0',
  `posy` int(11) NOT NULL DEFAULT '0',
  `posz` int(11) NOT NULL DEFAULT '0',
  `cap` int(11) NOT NULL DEFAULT '470',
  `soul` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogout` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` int(10) unsigned NOT NULL DEFAULT '0',
  `save` tinyint(1) NOT NULL DEFAULT '1',
  `conditions` blob NOT NULL COMMENT 'drunk, poisoned etc (maybe also food and redskull)',
  `redskulltime` int(10) unsigned NOT NULL DEFAULT '0',
  `redskull` tinyint(1) NOT NULL DEFAULT '0',
  `guildnick` varchar(255) NOT NULL DEFAULT '' COMMENT 'additional nick in guild - mostly for web interfaces i think',
  `loss_experience` int(11) NOT NULL DEFAULT '10',
  `loss_mana` int(11) NOT NULL DEFAULT '10',
  `loss_skills` int(11) NOT NULL DEFAULT '10',
  `loss_items` int(11) NOT NULL DEFAULT '10',
  `rank_id` int(10) unsigned NOT NULL COMMENT 'by this field everything with guilds is done - player has a rank which belongs to certain guild',
  `town_id` int(11) NOT NULL COMMENT 'old masterpos, temple spawn point position',
  `balance` int(11) NOT NULL DEFAULT '0' COMMENT 'money balance of the player for houses paying',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `account_id` (`account_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Fazendo dump de dados para tabela `players`
--

INSERT INTO `players` (`id`, `name`, `account_id`, `group_id`, `sex`, `vocation`, `experience`, `level`, `maglevel`, `health`, `healthmax`, `mana`, `manamax`, `manaspent`, `direction`, `looktype`, `lookhead`, `lookbody`, `looklegs`, `lookfeet`, `posx`, `posy`, `posz`, `cap`, `soul`, `lastlogin`, `lastlogout`, `lastip`, `save`, `conditions`, `redskulltime`, `redskull`, `guildnick`, `loss_experience`, `loss_mana`, `loss_skills`, `loss_items`, `rank_id`, `town_id`, `balance`, `status`) VALUES
(1, 'GM Test', 1, 2, 1, 0, 100, 2, 0, 185, 185, 35, 35, 0, 2, 75, 10, 10, 10, 10, 224, 229, 7, 0, 0, 1399236697, 1399236722, 16777343, 0, '', 0, 0, '', 10, 10, 10, 10, 0, 1, 0, 0),
(2, 'Knight Test', 1, 1, 1, 4, 15757308, 100, 6, 1565, 1565, 495, 495, 191326, 2, 160, 78, 38, 76, 10, 224, 229, 7, 2770, 8, 1399236723, 1399236750, 16777343, 0, 0x010040000002ffffffff03204e0000150100000014c0d40100fe010020000002ffffffff03302d0c0004d0070000050500000006d00700000702000000fe0100010000020000000003408a030010d7000000110800000012606d000013f47e0000fe, 0, 0, '', 10, 10, 10, 10, 0, 1, 0, 0),
(3, 'Druid Test', 1, 1, 0, 2, 15699000, 100, 59, 645, 645, 2795, 2795, 0, 2, 136, 132, 88, 94, 114, 224, 229, 7, 1400, 0, 1399236663, 1399236696, 16777343, 0, 0x010040000002ffffffff0388900000150100000014c0d40100fe, 0, 0, '', 10, 10, 10, 10, 0, 1, 0, 0),
(4, 'Sorc Test', 1, 1, 1, 1, 15699000, 100, 59, 645, 645, 2795, 2795, 187201, 2, 144, 38, 94, 41, 88, 224, 229, 7, 1390, 0, 1399236783, 1399236808, 16777343, 0, 0x010040000002ffffffff03b8050100150100000014c0d40100fe, 0, 0, '', 10, 10, 10, 10, 0, 1, 0, 0),
(5, 'Pala Test', 1, 1, 0, 3, 15744120, 100, 18, 1105, 1105, 1415, 1415, 190151, 2, 137, 54, 80, 41, 68, 224, 229, 7, 2310, 5, 1399236752, 1399236782, 16777343, 0, 0x010020000002ffffffff03a0bb0d0004d0070000050400000006d00700000703000000fe0100010000020000000003082e060010d7000000110800000012307500001367d40000fe, 0, 0, '', 10, 10, 10, 10, 0, 1, 0, 0),
(6, 'Lowlevel sorc Test', 1, 1, 1, 1, 4250, 8, 0, 185, 185, 35, 35, 0, 2, 134, 60, 60, 79, 95, 224, 229, 7, 470, 0, 1399236810, 1399236861, 16777343, 1, 0x0100010000020000000003a8d2020010d7000000110600000012e02e0000134c9a0000fe010020000002ffffffff03a0440c0004d0070000050200000006d00700000705000000fe010040000002ffffffff0308c90100150100000014c0d40100fe, 0, 0, '', 10, 10, 10, 10, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_deaths`
--

CREATE TABLE `player_deaths` (
  `player_id` int(10) unsigned NOT NULL,
  `time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '1',
  `lasthit_killer` varchar(255) NOT NULL,
  `mostdamage_killer` varchar(255) NOT NULL,
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_depotitems`
--

CREATE TABLE `player_depotitems` (
  `player_id` int(10) unsigned NOT NULL,
  `depot_id` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`),
  KEY `player_id` (`player_id`,`depot_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_items`
--

CREATE TABLE `player_items` (
  `player_id` int(10) unsigned NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob COMMENT 'replaces unique_id, action_id, text, special_desc',
  UNIQUE KEY `player_id` (`player_id`,`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `player_items`
--

INSERT INTO `player_items` (`player_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(1, 103, 101, 2160, 2, 0x0f02),
(1, 104, 101, 2120, 1, ''),
(1, 105, 101, 2554, 1, ''),
(1, 106, 101, 2420, 1, ''),
(1, 107, 101, 2553, 1, ''),
(1, 108, 101, 2550, 1, ''),
(1, 109, 101, 2580, 1, ''),
(1, 110, 101, 1949, 1, 0x06140057656c636f6d6520746f204775696c636572612e130700474d2054657374),
(1, 111, 101, 2175, 1, ''),
(1, 112, 101, 1988, 1, ''),
(1, 113, 101, 1988, 1, ''),
(1, 114, 101, 1988, 1, ''),
(1, 115, 101, 1988, 1, ''),
(1, 116, 112, 2183, 1, ''),
(1, 117, 112, 2472, 1, ''),
(1, 118, 112, 2471, 1, ''),
(1, 119, 112, 2469, 1, ''),
(1, 120, 112, 2171, 1, ''),
(1, 121, 112, 2195, 1, ''),
(1, 122, 112, 2523, 1, ''),
(1, 123, 112, 2431, 1, ''),
(1, 124, 112, 2390, 1, ''),
(1, 125, 112, 2646, 1, ''),
(1, 126, 112, 2456, 1, ''),
(1, 127, 112, 2455, 1, ''),
(1, 128, 112, 2189, 1, ''),
(1, 129, 112, 2187, 1, ''),
(1, 130, 112, 2181, 1, ''),
(1, 131, 113, 2546, 100, 0x0f64),
(1, 132, 113, 2546, 100, 0x0f64),
(1, 133, 113, 2546, 100, 0x0f64),
(1, 134, 113, 2546, 100, 0x0f64),
(1, 135, 113, 2547, 100, 0x0f64),
(1, 136, 113, 2547, 100, 0x0f64),
(1, 137, 113, 2547, 100, 0x0f64),
(1, 138, 113, 2547, 100, 0x0f64),
(1, 139, 113, 2547, 100, 0x0f64),
(1, 140, 113, 2547, 100, 0x0f64),
(1, 141, 113, 2547, 100, 0x0f64),
(1, 142, 113, 2547, 100, 0x0f64),
(1, 143, 113, 2547, 100, 0x0f64),
(1, 144, 114, 2291, 100, 0x0c64),
(1, 145, 114, 2293, 100, 0x0c64),
(1, 146, 114, 2313, 100, 0x0c64),
(1, 147, 114, 2313, 100, 0x0c64),
(1, 148, 114, 2305, 100, 0x0c64),
(1, 102, 101, 2789, 100, 0x0f64),
(1, 101, 3, 1988, 1, ''),
(4, 169, 122, 2214, 1, ''),
(4, 168, 122, 2213, 1, ''),
(6, 124, 116, 2278, 100, 0x0c64),
(3, 157, 121, 2278, 100, 0x0c64),
(3, 156, 121, 2304, 100, 0x0c64),
(3, 155, 121, 2304, 100, 0x0c64),
(3, 154, 121, 2305, 100, 0x0c64),
(3, 153, 121, 2313, 100, 0x0c64),
(4, 167, 122, 2165, 1, ''),
(5, 176, 122, 2173, 1, ''),
(3, 152, 121, 2313, 100, 0x0c64),
(3, 151, 121, 2293, 100, 0x0c64),
(3, 150, 121, 2291, 100, 0x0c64),
(3, 149, 120, 2546, 100, 0x0f64),
(3, 148, 120, 2546, 100, 0x0f64),
(3, 147, 120, 2546, 100, 0x0f64),
(3, 146, 120, 2546, 100, 0x0f64),
(3, 145, 120, 2456, 1, ''),
(3, 144, 120, 2181, 1, ''),
(3, 143, 120, 2182, 1, ''),
(3, 142, 119, 2006, 7, 0x0f07),
(3, 141, 119, 2006, 7, 0x0f07),
(3, 140, 119, 2006, 7, 0x0f07),
(3, 139, 119, 2006, 7, 0x0f07),
(3, 138, 119, 2006, 7, 0x0f07),
(3, 137, 119, 2006, 7, 0x0f07),
(3, 136, 119, 2006, 7, 0x0f07),
(3, 135, 119, 2006, 7, 0x0f07),
(3, 134, 119, 2006, 7, 0x0f07),
(3, 133, 119, 2006, 7, 0x0f07),
(3, 132, 119, 2006, 7, 0x0f07),
(3, 131, 119, 2006, 7, 0x0f07),
(3, 130, 119, 2006, 7, 0x0f07),
(3, 129, 119, 2006, 7, 0x0f07),
(3, 128, 119, 2006, 7, 0x0f07),
(3, 127, 119, 2006, 7, 0x0f07),
(3, 126, 119, 2006, 7, 0x0f07),
(3, 125, 119, 2006, 7, 0x0f07),
(3, 124, 119, 2006, 7, 0x0f07),
(4, 166, 122, 2167, 1, ''),
(2, 156, 120, 2273, 72, 0x0c48),
(2, 155, 120, 2304, 99, 0x0c63),
(2, 154, 120, 2304, 97, 0x0c61),
(2, 153, 120, 2305, 99, 0x0c63),
(2, 152, 120, 2313, 99, 0x0c63),
(2, 151, 120, 2313, 84, 0x0c54),
(2, 150, 120, 2291, 99, 0x0c63),
(2, 149, 119, 2546, 100, 0x0f64),
(2, 148, 119, 2546, 100, 0x0f64),
(2, 147, 119, 2546, 100, 0x0f64),
(2, 146, 119, 2546, 100, 0x0f64),
(2, 145, 119, 2646, 1, ''),
(2, 144, 119, 2456, 1, ''),
(2, 143, 119, 2523, 1, ''),
(2, 142, 119, 2431, 1, ''),
(2, 141, 118, 2006, 7, 0x0f07),
(2, 140, 118, 2006, 7, 0x0f07),
(2, 139, 118, 2006, 7, 0x0f07),
(2, 138, 118, 2006, 7, 0x0f07),
(2, 137, 118, 2006, 7, 0x0f07),
(2, 136, 118, 2006, 7, 0x0f07),
(2, 135, 118, 2006, 7, 0x0f07),
(2, 134, 118, 2006, 7, 0x0f07),
(2, 133, 118, 2006, 7, 0x0f07),
(2, 132, 118, 2006, 7, 0x0f07),
(2, 131, 118, 2006, 7, 0x0f07),
(2, 130, 118, 2006, 7, 0x0f07),
(2, 129, 118, 2006, 7, 0x0f07),
(2, 128, 118, 2006, 7, 0x0f07),
(2, 127, 118, 2006, 7, 0x0f07),
(2, 126, 118, 2006, 7, 0x0f07),
(2, 125, 118, 2006, 7, 0x0f07),
(2, 124, 118, 2006, 7, 0x0f07),
(4, 165, 122, 2169, 1, ''),
(4, 164, 122, 2164, 20, 0x0c14),
(4, 163, 121, 2268, 100, 0x0c64),
(4, 162, 121, 2268, 100, 0x0c64),
(4, 161, 121, 2261, 100, 0x0c64),
(4, 160, 121, 2273, 100, 0x0c64),
(4, 159, 121, 2273, 100, 0x0c64),
(4, 158, 121, 2262, 100, 0x0c64),
(4, 157, 121, 2278, 100, 0x0c64),
(4, 156, 121, 2304, 100, 0x0c64),
(4, 155, 121, 2304, 100, 0x0c64),
(4, 154, 121, 2305, 100, 0x0c64),
(4, 153, 121, 2313, 100, 0x0c64),
(4, 152, 121, 2313, 100, 0x0c64),
(4, 151, 121, 2293, 100, 0x0c64),
(4, 150, 121, 2291, 100, 0x0c64),
(4, 149, 120, 2546, 100, 0x0f64),
(4, 148, 120, 2546, 100, 0x0f64),
(4, 147, 120, 2546, 100, 0x0f64),
(4, 146, 120, 2546, 100, 0x0f64),
(4, 145, 120, 2456, 1, ''),
(4, 144, 120, 2189, 1, ''),
(4, 143, 120, 2190, 1, ''),
(4, 142, 119, 2006, 7, 0x0f07),
(4, 141, 119, 2006, 7, 0x0f07),
(4, 140, 119, 2006, 7, 0x0f07),
(4, 139, 119, 2006, 7, 0x0f07),
(4, 138, 119, 2006, 7, 0x0f07),
(4, 137, 119, 2006, 7, 0x0f07),
(4, 136, 119, 2006, 7, 0x0f07),
(4, 135, 119, 2006, 7, 0x0f07),
(4, 134, 119, 2006, 7, 0x0f07),
(4, 133, 119, 2006, 7, 0x0f07),
(4, 132, 119, 2006, 7, 0x0f07),
(4, 131, 119, 2006, 7, 0x0f07),
(5, 175, 122, 2214, 1, ''),
(5, 174, 122, 2213, 1, ''),
(5, 173, 122, 2165, 1, ''),
(5, 172, 122, 2167, 1, ''),
(5, 171, 122, 2169, 1, ''),
(5, 170, 122, 2164, 20, 0x0c14),
(5, 169, 121, 2268, 92, 0x0c5c),
(5, 168, 121, 2268, 87, 0x0c57),
(5, 167, 121, 2261, 100, 0x0c64),
(5, 166, 121, 2273, 100, 0x0c64),
(5, 165, 121, 2273, 95, 0x0c5f),
(5, 164, 121, 2262, 99, 0x0c63),
(5, 163, 121, 2304, 100, 0x0c64),
(5, 162, 121, 2304, 100, 0x0c64),
(5, 161, 121, 2305, 100, 0x0c64),
(5, 159, 121, 2313, 100, 0x0c64),
(5, 160, 121, 2313, 100, 0x0c64),
(5, 158, 121, 2293, 99, 0x0c63),
(5, 157, 121, 2291, 100, 0x0c64),
(5, 156, 120, 2547, 100, 0x0f64),
(5, 155, 120, 2547, 100, 0x0f64),
(5, 154, 120, 2547, 100, 0x0f64),
(5, 153, 120, 2547, 100, 0x0f64),
(5, 152, 120, 2547, 100, 0x0f64),
(5, 151, 120, 2547, 100, 0x0f64),
(5, 150, 120, 2547, 100, 0x0f64),
(5, 149, 120, 2547, 100, 0x0f64),
(5, 148, 120, 2547, 100, 0x0f64),
(5, 147, 120, 2547, 100, 0x0f64),
(3, 123, 119, 2006, 7, 0x0f07),
(3, 122, 103, 1988, 1, ''),
(3, 121, 103, 1988, 1, ''),
(3, 120, 103, 1988, 1, ''),
(3, 119, 103, 1988, 1, ''),
(3, 118, 103, 2175, 1, ''),
(3, 117, 103, 1949, 1, 0x06140057656c636f6d6520746f204775696c636572612e130700474d2054657374),
(4, 130, 119, 2006, 7, 0x0f07),
(4, 129, 119, 2006, 7, 0x0f07),
(4, 128, 119, 2006, 7, 0x0f07),
(4, 127, 119, 2006, 7, 0x0f07),
(4, 126, 119, 2006, 7, 0x0f07),
(4, 125, 119, 2006, 7, 0x0f07),
(3, 116, 103, 2580, 1, ''),
(5, 146, 120, 2547, 100, 0x0f64),
(5, 145, 120, 2547, 100, 0x0f64),
(5, 144, 120, 2547, 12, 0x0f0c),
(5, 143, 120, 2389, 5, 0x0f05),
(5, 142, 119, 2006, 7, 0x0f07),
(4, 124, 119, 2006, 7, 0x0f07),
(4, 123, 119, 2006, 7, 0x0f07),
(4, 122, 103, 1988, 1, ''),
(3, 115, 103, 2550, 1, ''),
(3, 114, 103, 2553, 1, ''),
(3, 113, 103, 2420, 1, ''),
(3, 112, 103, 2554, 1, ''),
(3, 111, 103, 2120, 1, ''),
(3, 110, 103, 2160, 2, 0x0f02),
(3, 109, 103, 2789, 100, 0x0f64),
(3, 108, 8, 2195, 1, ''),
(3, 107, 7, 2469, 1, ''),
(3, 106, 6, 2183, 1, ''),
(3, 105, 5, 2523, 1, ''),
(3, 104, 4, 2472, 1, ''),
(3, 103, 3, 1988, 1, ''),
(3, 102, 2, 2171, 1, ''),
(3, 101, 1, 2471, 1, ''),
(2, 123, 118, 2006, 7, 0x0f07),
(2, 122, 118, 2006, 7, 0x0f07),
(2, 121, 103, 1988, 1, ''),
(2, 120, 103, 1988, 1, ''),
(2, 119, 103, 1988, 1, ''),
(2, 118, 103, 1988, 1, ''),
(2, 117, 103, 2175, 1, ''),
(2, 116, 103, 1949, 1, 0x06140057656c636f6d6520746f204775696c636572612e130700474d2054657374),
(2, 115, 103, 2580, 1, ''),
(2, 114, 103, 2550, 1, ''),
(2, 113, 103, 2553, 1, ''),
(2, 112, 103, 2420, 1, ''),
(2, 111, 103, 2554, 1, ''),
(2, 110, 103, 2120, 1, ''),
(2, 109, 103, 2160, 2, 0x0f02),
(5, 141, 119, 2006, 7, 0x0f07),
(5, 140, 119, 2006, 7, 0x0f07),
(5, 139, 119, 2006, 7, 0x0f07),
(5, 138, 119, 2006, 7, 0x0f07),
(5, 137, 119, 2006, 7, 0x0f07),
(5, 136, 119, 2006, 7, 0x0f07),
(5, 135, 119, 2006, 7, 0x0f07),
(5, 134, 119, 2006, 7, 0x0f07),
(5, 133, 119, 2006, 7, 0x0f07),
(5, 132, 119, 2006, 7, 0x0f07),
(5, 131, 119, 2006, 7, 0x0f07),
(4, 121, 103, 1988, 1, ''),
(4, 120, 103, 1988, 1, ''),
(4, 119, 103, 1988, 1, ''),
(4, 118, 103, 2175, 1, ''),
(4, 117, 103, 1949, 1, 0x06140057656c636f6d6520746f204775696c636572612e130700474d2054657374),
(4, 116, 103, 2580, 1, ''),
(4, 115, 103, 2550, 1, ''),
(4, 114, 103, 2553, 1, ''),
(4, 113, 103, 2420, 1, ''),
(4, 112, 103, 2554, 1, ''),
(4, 111, 103, 2120, 1, ''),
(4, 110, 103, 2160, 2, 0x0f02),
(4, 109, 103, 2789, 100, 0x0f64),
(4, 108, 8, 2195, 1, ''),
(4, 107, 7, 2469, 1, ''),
(4, 106, 6, 2187, 1, ''),
(4, 105, 5, 2523, 1, ''),
(4, 104, 4, 2472, 1, ''),
(4, 103, 3, 1988, 1, ''),
(5, 130, 119, 2006, 7, 0x0f07),
(5, 129, 119, 2006, 7, 0x0f07),
(5, 128, 119, 2006, 7, 0x0f07),
(5, 127, 119, 2006, 7, 0x0f07),
(4, 102, 2, 2171, 1, ''),
(4, 101, 1, 2471, 1, ''),
(3, 158, 121, 2262, 100, 0x0c64),
(6, 123, 116, 2304, 100, 0x0c64),
(6, 122, 116, 2304, 100, 0x0c64),
(6, 121, 116, 2305, 100, 0x0c64),
(6, 120, 116, 2313, 100, 0x0c64),
(6, 119, 116, 2313, 100, 0x0c64),
(6, 118, 116, 2293, 100, 0x0c64),
(6, 117, 116, 2291, 100, 0x0c64),
(6, 116, 102, 1988, 1, ''),
(6, 115, 102, 1949, 1, 0x06140057656c636f6d6520746f204775696c636572612e130700474d2054657374),
(6, 114, 102, 2580, 1, ''),
(6, 113, 102, 2553, 1, ''),
(6, 112, 102, 2420, 1, ''),
(6, 111, 102, 2554, 1, ''),
(6, 110, 102, 2120, 1, ''),
(6, 109, 102, 2160, 2, 0x0f02),
(6, 108, 102, 2789, 96, 0x0f60),
(6, 107, 8, 2643, 1, ''),
(6, 106, 7, 2649, 1, ''),
(6, 105, 6, 2530, 1, ''),
(6, 104, 5, 2190, 1, ''),
(6, 103, 4, 2484, 1, ''),
(6, 102, 3, 1988, 1, ''),
(6, 101, 1, 2480, 1, ''),
(2, 108, 103, 2789, 94, 0x0f5e),
(2, 107, 8, 2195, 1, ''),
(2, 106, 7, 2469, 1, ''),
(2, 105, 6, 2390, 1, ''),
(2, 104, 4, 2472, 1, ''),
(2, 103, 3, 1988, 1, ''),
(5, 126, 119, 2006, 7, 0x0f07),
(5, 125, 119, 2006, 7, 0x0f07),
(5, 124, 119, 2006, 7, 0x0f07),
(5, 123, 119, 2006, 7, 0x0f07),
(5, 122, 103, 1988, 1, ''),
(5, 121, 103, 1988, 1, ''),
(2, 102, 2, 2171, 1, ''),
(2, 101, 1, 2471, 1, ''),
(3, 159, 121, 2273, 100, 0x0c64),
(3, 160, 121, 2273, 100, 0x0c64),
(3, 161, 121, 2261, 100, 0x0c64),
(3, 162, 121, 2268, 100, 0x0c64),
(3, 163, 121, 2268, 100, 0x0c64),
(3, 164, 122, 2164, 20, 0x0c14),
(3, 165, 122, 2169, 1, ''),
(3, 166, 122, 2167, 1, ''),
(3, 167, 122, 2165, 1, ''),
(3, 168, 122, 2213, 1, ''),
(3, 169, 122, 2214, 1, ''),
(3, 170, 122, 2173, 1, ''),
(3, 171, 122, 2197, 1, 0x0c01),
(1, 149, 114, 2304, 100, 0x0c64),
(1, 150, 114, 2304, 100, 0x0c64),
(1, 151, 114, 2278, 100, 0x0c64),
(1, 152, 114, 2262, 100, 0x0c64),
(1, 153, 114, 2273, 100, 0x0c64),
(1, 154, 114, 2273, 100, 0x0c64),
(1, 155, 114, 2261, 100, 0x0c64),
(1, 156, 114, 2268, 100, 0x0c64),
(1, 157, 114, 2268, 100, 0x0c64),
(1, 158, 115, 2164, 20, 0x0c14),
(1, 159, 115, 2169, 1, ''),
(1, 160, 115, 2167, 1, ''),
(1, 161, 115, 2165, 1, ''),
(1, 162, 115, 2207, 1, ''),
(1, 163, 115, 2208, 1, ''),
(1, 164, 115, 2209, 1, ''),
(1, 165, 115, 2213, 1, ''),
(1, 166, 115, 2214, 1, ''),
(1, 167, 115, 2173, 1, ''),
(1, 168, 115, 2197, 1, 0x0c01),
(2, 157, 120, 2273, 100, 0x0c64),
(2, 158, 120, 2261, 100, 0x0c64),
(2, 159, 121, 2164, 20, 0x0c14),
(2, 160, 121, 2169, 1, ''),
(2, 161, 121, 2167, 1, ''),
(2, 162, 121, 2165, 1, ''),
(2, 163, 121, 2207, 1, ''),
(2, 164, 121, 2208, 1, ''),
(2, 165, 121, 2213, 1, ''),
(2, 166, 121, 2214, 1, ''),
(2, 167, 121, 2173, 1, ''),
(2, 168, 121, 2197, 1, 0x0c01),
(5, 120, 103, 1988, 1, ''),
(5, 119, 103, 1988, 1, ''),
(5, 118, 103, 2175, 1, ''),
(5, 117, 103, 1949, 1, 0x06140057656c636f6d6520746f204775696c636572612e130700474d2054657374),
(5, 116, 103, 2580, 1, ''),
(5, 115, 103, 2550, 1, ''),
(5, 114, 103, 2553, 1, ''),
(5, 113, 103, 2420, 1, ''),
(5, 112, 103, 2554, 1, ''),
(5, 111, 103, 2120, 1, ''),
(5, 110, 103, 2160, 2, 0x0f02),
(5, 109, 103, 2789, 94, 0x0f5e),
(5, 108, 10, 2547, 100, 0x0f64),
(5, 107, 8, 2195, 1, ''),
(5, 106, 7, 2469, 1, ''),
(5, 105, 6, 2455, 1, ''),
(5, 104, 4, 2472, 1, ''),
(5, 103, 3, 1988, 1, ''),
(5, 102, 2, 2171, 1, ''),
(5, 101, 1, 2471, 1, ''),
(5, 177, 122, 2197, 1, 0x0c01),
(4, 170, 122, 2173, 1, ''),
(4, 171, 122, 2197, 1, 0x0c01),
(6, 125, 116, 2262, 100, 0x0c64),
(6, 126, 116, 2273, 100, 0x0c64),
(6, 127, 116, 2273, 100, 0x0c64),
(6, 128, 116, 2261, 100, 0x0c64),
(6, 129, 116, 2268, 100, 0x0c64),
(6, 130, 116, 2268, 100, 0x0c64);

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_skills`
--

CREATE TABLE `player_skills` (
  `player_id` int(10) unsigned NOT NULL,
  `skillid` int(10) unsigned NOT NULL,
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `player_skills`
--

INSERT INTO `player_skills` (`player_id`, `skillid`, `value`, `count`) VALUES
(1, 0, 10, 0),
(1, 1, 10, 0),
(1, 2, 10, 0),
(1, 3, 10, 0),
(1, 4, 10, 0),
(1, 5, 10, 0),
(1, 6, 10, 0),
(2, 0, 10, 0),
(2, 1, 10, 0),
(2, 2, 95, 0),
(2, 3, 95, 100000),
(2, 4, 10, 0),
(2, 5, 95, 100000),
(2, 6, 10, 0),
(3, 0, 10, 0),
(3, 1, 10, 0),
(3, 2, 11, 10),
(3, 3, 10, 0),
(3, 4, 10, 0),
(3, 5, 10, 0),
(3, 6, 10, 0),
(4, 0, 10, 0),
(4, 1, 10, 0),
(4, 2, 10, 10),
(4, 3, 10, 0),
(4, 4, 10, 0),
(4, 5, 10, 0),
(4, 6, 10, 0),
(5, 0, 10, 0),
(5, 1, 10, 0),
(5, 2, 10, 10),
(5, 3, 10, 0),
(5, 4, 98, 0),
(5, 5, 10, 0),
(5, 6, 10, 0),
(6, 0, 10, 0),
(6, 1, 10, 0),
(6, 2, 10, 0),
(6, 3, 11, 0),
(6, 4, 10, 0),
(6, 5, 29, 200000),
(6, 6, 10, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_spells`
--

CREATE TABLE `player_spells` (
  `player_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_storage`
--

CREATE TABLE `player_storage` (
  `player_id` int(10) unsigned NOT NULL,
  `key` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `player_storage`
--

INSERT INTO `player_storage` (`player_id`, `key`, `value`) VALUES
(3, 7001, 1),
(1, 7001, 1),
(2, 7001, 1),
(5, 7001, 1),
(4, 7001, 1),
(6, 7001, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `player_viplist`
--

CREATE TABLE `player_viplist` (
  `player_id` int(10) unsigned NOT NULL COMMENT 'id of player whose viplist entry it is',
  `vip_id` int(10) unsigned NOT NULL COMMENT 'id of target player of viplist entry',
  KEY `player_id` (`player_id`),
  KEY `vip_id` (`vip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `server_record`
--

CREATE TABLE `server_record` (
  `record` int(10) unsigned NOT NULL,
  PRIMARY KEY (`record`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `server_record`
--

INSERT INTO `server_record` (`record`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tiles`
--

CREATE TABLE `tiles` (
  `id` int(10) unsigned NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tile_items`
--

CREATE TABLE `tile_items` (
  `tile_id` int(10) unsigned NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `itemtype` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `attributes` blob NOT NULL,
  KEY `tile_id` (`tile_id`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;