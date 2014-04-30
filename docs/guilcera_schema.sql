-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Jun 26, 2013 as 11:05 PM
-- Versão do Servidor: 5.0.51
-- Versão do PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Banco de Dados: `guilcera_schema`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL default '',
  `premend` int(10) unsigned NOT NULL default '0',
  `blocked` tinyint(1) NOT NULL default '0',
  `deleted` tinyint(1) NOT NULL default '0',
  `warned` tinyint(1) NOT NULL default '0',
  `warnings` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=136592 ;

--
-- Extraindo dados da tabela `accounts`
--

INSERT INTO `accounts` (`id`, `password`, `email`, `premend`, `blocked`, `deleted`, `warned`, `warnings`) VALUES
(2, '2', 'owner_error404@hotmail.com', 1374175558, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bans`
--

CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` int(11) NOT NULL COMMENT 'this field defines if its ip, account, player, or any else ban',
  `value` int(10) unsigned NOT NULL COMMENT 'ip, player guid, account number',
  `param` int(10) unsigned NOT NULL default '0' COMMENT 'mask',
  `active` tinyint(1) NOT NULL default '1',
  `expires` int(10) unsigned NOT NULL,
  `added` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL default '0',
  `reason` varchar(255) NOT NULL default '',
  `comment` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `type` (`type`,`value`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `bans`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `global_storage`
--

CREATE TABLE IF NOT EXISTS `global_storage` (
  `key` int(10) unsigned NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY  (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `global_storage`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL COMMENT 'group name',
  `flags` bigint(20) unsigned NOT NULL default '0',
  `access` int(11) NOT NULL,
  `maxdepotitems` int(11) NOT NULL,
  `maxviplist` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `groups`
--

INSERT INTO `groups` (`id`, `name`, `flags`, `access`, `maxdepotitems`, `maxviplist`) VALUES
(1, 'player', 0, 0, 1000, 100),
(2, 'Gamemaster', 2147483647, 3, 1000, 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `guilds`
--

CREATE TABLE IF NOT EXISTS `guilds` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL COMMENT 'guild name - nothing else needed here',
  `ownerid` int(11) NOT NULL,
  `creationdata` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `guilds`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_ranks`
--

CREATE TABLE IF NOT EXISTS `guild_ranks` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `guild_id` int(10) unsigned NOT NULL COMMENT 'guild',
  `name` varchar(255) NOT NULL COMMENT 'rank name',
  `level` int(11) NOT NULL COMMENT 'rank level - leader, vice, member, maybe something else',
  PRIMARY KEY  (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `guild_ranks`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(10) unsigned NOT NULL,
  `owner` int(11) NOT NULL,
  `paid` int(10) unsigned NOT NULL default '0',
  `warnings` int(11) NOT NULL default '0',
  `lastwarning` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `houses`
--

INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `lastwarning`) VALUES
(3, 0, 0, 0, 1372290665),
(4, 0, 0, 0, 1372290665),
(5, 0, 0, 0, 1372290665);

-- --------------------------------------------------------

--
-- Estrutura da tabela `house_lists`
--

CREATE TABLE IF NOT EXISTS `house_lists` (
  `house_id` int(10) unsigned NOT NULL,
  `listid` int(11) NOT NULL,
  `list` text NOT NULL,
  KEY `house_id` (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `house_lists`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `map_store`
--

CREATE TABLE IF NOT EXISTS `map_store` (
  `house_id` int(10) unsigned NOT NULL,
  `data` blob NOT NULL,
  UNIQUE KEY `house_id` (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `map_store`
--

INSERT INTO `map_store` (`house_id`, `data`) VALUES
(3, 0xcf00da000701000000ba0400),
(4, ''),
(5, 0xcf00e6000701000000bb0400);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nicaw_accounts`
--

CREATE TABLE IF NOT EXISTS `nicaw_accounts` (
  `account_id` int(10) unsigned NOT NULL,
  `rlname` varchar(50) default NULL,
  `location` varchar(50) default NULL,
  `comment` tinytext,
  `recovery_key` char(32) default NULL,
  `reveal_characters` tinyint(1) NOT NULL default '1',
  UNIQUE KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `nicaw_accounts`
--

INSERT INTO `nicaw_accounts` (`account_id`, `rlname`, `location`, `comment`, `recovery_key`, `reveal_characters`) VALUES
(2, 'peonso', 'brazil', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nicaw_account_logs`
--

CREATE TABLE IF NOT EXISTS `nicaw_account_logs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `account_id` int(11) NOT NULL,
  `ip` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `nicaw_account_logs`
--

INSERT INTO `nicaw_account_logs` (`id`, `account_id`, `ip`, `date`, `action`) VALUES
(1, 136591, 2130706433, 1371583533, 'Created'),
(2, 136591, 2130706433, 1371583544, 'Created character: GM Peonso'),
(3, 2, 2130706433, 1371588475, 'Created character: Top Tester Br'),
(4, 2, 2130706433, 1371776387, 'Created character: Peonso'),
(5, 2, 2130706433, 1371776467, 'Created character: Bilonga'),
(6, 2, 2130706433, 1372296975, 'Created character: Kirok');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nicaw_guild_info`
--

CREATE TABLE IF NOT EXISTS `nicaw_guild_info` (
  `id` int(10) unsigned NOT NULL COMMENT 'guild id',
  `description` tinytext,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `nicaw_guild_info`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `nicaw_guild_invites`
--

CREATE TABLE IF NOT EXISTS `nicaw_guild_invites` (
  `gid` int(10) unsigned NOT NULL COMMENT 'guild id',
  `pid` int(10) unsigned NOT NULL COMMENT 'player id',
  `rank` int(10) unsigned default NULL,
  KEY `gid` (`gid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `nicaw_guild_invites`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `nicaw_news`
--

CREATE TABLE IF NOT EXISTS `nicaw_news` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(64) NOT NULL,
  `creator` varchar(25) NOT NULL,
  `date` int(11) NOT NULL,
  `text` text NOT NULL,
  `html` tinyint(1) NOT NULL default '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `nicaw_news`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `nicaw_polls`
--

CREATE TABLE IF NOT EXISTS `nicaw_polls` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `question` varchar(255) NOT NULL,
  `startdate` int(10) unsigned NOT NULL,
  `enddate` int(10) unsigned NOT NULL,
  `minlevel` int(10) unsigned NOT NULL,
  `hidden` tinyint(1) NOT NULL default '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `nicaw_polls`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `nicaw_poll_options`
--

CREATE TABLE IF NOT EXISTS `nicaw_poll_options` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `poll_id` int(10) unsigned NOT NULL,
  `option` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `nicaw_poll_options`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `nicaw_poll_votes`
--

CREATE TABLE IF NOT EXISTS `nicaw_poll_votes` (
  `option_id` int(10) unsigned NOT NULL,
  `account_id` int(11) NOT NULL,
  `ip` int(11) NOT NULL,
  KEY `option_id` (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `nicaw_poll_votes`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL default '0' COMMENT 'users group',
  `sex` int(10) unsigned NOT NULL default '0',
  `vocation` int(10) unsigned NOT NULL default '0',
  `experience` bigint(20) unsigned NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '1',
  `maglevel` int(10) unsigned NOT NULL default '0',
  `health` int(10) unsigned NOT NULL default '100',
  `healthmax` int(10) unsigned NOT NULL default '100',
  `mana` int(10) unsigned NOT NULL default '100',
  `manamax` int(10) unsigned NOT NULL default '100',
  `manaspent` int(10) unsigned NOT NULL default '0',
  `direction` int(10) unsigned NOT NULL default '0',
  `looktype` int(10) unsigned NOT NULL default '136',
  `lookhead` int(10) unsigned NOT NULL default '10',
  `lookbody` int(10) unsigned NOT NULL default '10',
  `looklegs` int(10) unsigned NOT NULL default '10',
  `lookfeet` int(10) unsigned NOT NULL default '10',
  `posx` int(11) NOT NULL default '0',
  `posy` int(11) NOT NULL default '0',
  `posz` int(11) NOT NULL default '0',
  `cap` int(11) NOT NULL default '470',
  `soul` int(11) NOT NULL default '0',
  `lastlogin` int(10) unsigned NOT NULL default '0',
  `lastlogout` int(10) unsigned NOT NULL default '0',
  `lastip` int(10) unsigned NOT NULL default '0',
  `save` tinyint(1) NOT NULL default '1',
  `conditions` blob NOT NULL COMMENT 'drunk, poisoned etc (maybe also food and redskull)',
  `redskulltime` int(10) unsigned NOT NULL default '0',
  `redskull` tinyint(1) NOT NULL default '0',
  `guildnick` varchar(255) NOT NULL default '' COMMENT 'additional nick in guild - mostly for web interfaces i think',
  `loss_experience` int(11) NOT NULL default '10',
  `loss_mana` int(11) NOT NULL default '10',
  `loss_skills` int(11) NOT NULL default '10',
  `loss_items` int(11) NOT NULL default '10',
  `rank_id` int(10) unsigned NOT NULL COMMENT 'by this field everything with guilds is done - player has a rank which belongs to certain guild',
  `town_id` int(11) NOT NULL COMMENT 'old masterpos, temple spawn point position',
  `balance` int(11) NOT NULL default '0' COMMENT 'money balance of the player for houses paying',
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `account_id` (`account_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `players`
--

INSERT INTO `players` (`id`, `name`, `account_id`, `group_id`, `sex`, `vocation`, `experience`, `level`, `maglevel`, `health`, `healthmax`, `mana`, `manamax`, `manaspent`, `direction`, `looktype`, `lookhead`, `lookbody`, `looklegs`, `lookfeet`, `posx`, `posy`, `posz`, `cap`, `soul`, `lastlogin`, `lastlogout`, `lastip`, `save`, `conditions`, `redskulltime`, `redskull`, `guildnick`, `loss_experience`, `loss_mana`, `loss_skills`, `loss_items`, `rank_id`, `town_id`, `balance`, `status`) VALUES
(1, 'GM Error', 2, 2, 1, 0, 100, 2, 0, 185, 185, 35, 35, 100, 1, 75, 10, 10, 10, 10, 224, 229, 7, 0, 2, 1372296928, 1372296938, 16777343, 1, '', 0, 0, '', 10, 10, 10, 10, 0, 1, 0, 0),
(2, 'Top Tester Br', 2, 1, 1, 1, 3524, 7, 0, 180, 180, 5, 5, 129, 2, 131, 114, 41, 100, 60, 224, 229, 7, 470, 2, 1372296947, 1372296951, 16777343, 1, '', 0, 0, '', 10, 10, 10, 10, 0, 1, 0, 0),
(3, 'Peonso', 2, 1, 1, 4, 4200, 8, 0, 185, 185, 35, 35, 0, 2, 131, 10, 10, 10, 10, 224, 229, 7, 470, 0, 1372296953, 1372296958, 16777343, 1, '', 0, 0, '', 10, 10, 10, 10, 0, 1, 0, 0),
(4, 'Bilonga', 2, 1, 1, 4, 4200, 8, 0, 185, 185, 15, 35, 100, 2, 131, 10, 10, 10, 10, 224, 229, 7, 470, 0, 1372296786, 1372296925, 16777343, 1, '', 0, 0, '', 10, 10, 10, 10, 0, 1, 0, 0),
(5, 'Kirok', 2, 1, 1, 1, 6450, 9, 1, 190, 190, 65, 65, 310, 2, 130, 10, 10, 10, 10, 224, 229, 7, 480, 3, 1372296983, 1372297495, 16777343, 1, 0x01000100000200000000032894020010d7000000110600000012983a000013e2f00000fe, 0, 0, '', 10, 10, 10, 10, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `player_deaths`
--

CREATE TABLE IF NOT EXISTS `player_deaths` (
  `player_id` int(10) unsigned NOT NULL,
  `time` bigint(20) unsigned NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '1',
  `lasthit_killer` varchar(255) NOT NULL,
  `mostdamage_killer` varchar(255) NOT NULL,
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_deaths`
--

INSERT INTO `player_deaths` (`player_id`, `time`, `level`, `lasthit_killer`, `mostdamage_killer`) VALUES
(2, 1371661642, 8, 'amazon', 'wolf'),
(2, 1371662058, 7, 'dragon', 'amazon');

-- --------------------------------------------------------

--
-- Estrutura da tabela `player_depotitems`
--

CREATE TABLE IF NOT EXISTS `player_depotitems` (
  `player_id` int(10) unsigned NOT NULL,
  `depot_id` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int(11) NOT NULL default '0',
  `itemtype` int(11) NOT NULL,
  `count` int(11) NOT NULL default '0',
  `attributes` blob NOT NULL,
  UNIQUE KEY `player_id_2` (`player_id`,`sid`),
  KEY `player_id` (`player_id`,`depot_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_depotitems`
--

INSERT INTO `player_depotitems` (`player_id`, `depot_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(5, 0, 105, 101, 2594, 1, ''),
(2, 0, 102, 101, 2594, 1, ''),
(2, 0, 101, 0, 2589, 1, ''),
(5, 0, 104, 101, 2160, 100, 0x0f64),
(5, 0, 103, 101, 2148, 6, 0x0f06),
(5, 0, 102, 101, 2000, 1, ''),
(5, 0, 101, 0, 2589, 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `player_items`
--

CREATE TABLE IF NOT EXISTS `player_items` (
  `player_id` int(10) unsigned NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL default '0',
  `itemtype` int(11) NOT NULL,
  `count` int(11) NOT NULL default '0',
  `attributes` blob COMMENT 'replaces unique_id, action_id, text, special_desc',
  UNIQUE KEY `player_id` (`player_id`,`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_items`
--

INSERT INTO `player_items` (`player_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(5, 110, 103, 2160, 99, 0x0f63),
(5, 109, 103, 2120, 1, ''),
(5, 108, 8, 2643, 1, ''),
(3, 101, 1, 2480, 1, ''),
(3, 102, 2, 2172, 200, 0x0cc8),
(3, 103, 3, 2000, 1, ''),
(3, 104, 6, 2530, 1, ''),
(3, 105, 7, 2468, 1, ''),
(3, 106, 8, 2643, 1, ''),
(1, 102, 101, 2148, 8, 0x0f08),
(1, 101, 3, 2000, 1, ''),
(5, 107, 7, 2648, 1, ''),
(2, 105, 8, 2643, 1, ''),
(2, 104, 7, 2468, 1, ''),
(2, 103, 6, 2530, 1, ''),
(2, 102, 2, 2172, 200, 0x0cc8),
(2, 101, 1, 2480, 1, ''),
(4, 101, 1, 2480, 1, ''),
(4, 102, 2, 2172, 200, 0x0cc8),
(4, 103, 4, 2464, 1, ''),
(4, 104, 6, 2530, 1, ''),
(5, 106, 6, 2509, 1, ''),
(5, 105, 5, 2190, 1, ''),
(5, 104, 4, 2464, 1, ''),
(5, 103, 3, 2000, 1, ''),
(5, 102, 2, 2172, 200, 0x0cc8),
(5, 101, 1, 2480, 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `player_skills`
--

CREATE TABLE IF NOT EXISTS `player_skills` (
  `player_id` int(10) unsigned NOT NULL,
  `skillid` int(10) unsigned NOT NULL,
  `value` int(10) unsigned NOT NULL default '0',
  `count` int(10) unsigned NOT NULL default '0',
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_skills`
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
(2, 2, 10, 0),
(2, 3, 10, 0),
(2, 4, 10, 0),
(2, 5, 11, 62),
(2, 6, 10, 0),
(3, 0, 10, 0),
(3, 1, 10, 0),
(3, 2, 10, 0),
(3, 3, 10, 0),
(3, 4, 10, 0),
(3, 5, 10, 0),
(3, 6, 10, 0),
(4, 0, 10, 10),
(4, 1, 10, 0),
(4, 2, 10, 0),
(4, 3, 10, 0),
(4, 4, 10, 0),
(4, 5, 10, 90),
(4, 6, 10, 0),
(5, 0, 10, 0),
(5, 1, 10, 0),
(5, 2, 10, 0),
(5, 3, 10, 0),
(5, 4, 10, 0),
(5, 5, 14, 230),
(5, 6, 10, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `player_spells`
--

CREATE TABLE IF NOT EXISTS `player_spells` (
  `player_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_spells`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `player_storage`
--

CREATE TABLE IF NOT EXISTS `player_storage` (
  `player_id` int(10) unsigned NOT NULL,
  `key` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_storage`
--

INSERT INTO `player_storage` (`player_id`, `key`, `value`) VALUES
(1, 6071, 1),
(1, 6070, 1),
(1, 6069, 1),
(1, 6068, 1),
(5, 6071, 1),
(5, 6070, 1),
(5, 6069, 1),
(5, 6068, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `player_viplist`
--

CREATE TABLE IF NOT EXISTS `player_viplist` (
  `player_id` int(10) unsigned NOT NULL COMMENT 'id of player whose viplist entry it is',
  `vip_id` int(10) unsigned NOT NULL COMMENT 'id of target player of viplist entry',
  KEY `player_id` (`player_id`),
  KEY `vip_id` (`vip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `player_viplist`
--

INSERT INTO `player_viplist` (`player_id`, `vip_id`) VALUES
(4, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `server_record`
--

CREATE TABLE IF NOT EXISTS `server_record` (
  `record` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`record`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `server_record`
--

INSERT INTO `server_record` (`record`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiles`
--

CREATE TABLE IF NOT EXISTS `tiles` (
  `id` int(10) unsigned NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tiles`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `tile_items`
--

CREATE TABLE IF NOT EXISTS `tile_items` (
  `tile_id` int(10) unsigned NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL default '0',
  `itemtype` int(11) NOT NULL,
  `count` int(11) NOT NULL default '0',
  `attributes` blob NOT NULL,
  KEY `tile_id` (`tile_id`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tile_items`
--

