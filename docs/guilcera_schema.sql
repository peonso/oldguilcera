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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `accounts`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `groups`
--

INSERT INTO `groups` (`id`, `name`, `flags`, `access`, `maxdepotitems`, `maxviplist`) VALUES
(1, 'player', 0, 0, 1000, 100),
(2, 'Gamemaster', 603554057, 3, 1000, 100);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `nicaw_account_logs`
--

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
  `looktype` int(10) unsigned NOT NULL default '128',
  `lookhead` int(10) unsigned NOT NULL default '78',
  `lookbody` int(10) unsigned NOT NULL default '69',
  `looklegs` int(10) unsigned NOT NULL default '58',
  `lookfeet` int(10) unsigned NOT NULL default '76',
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Extraindo dados da tabela `players`
--

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

