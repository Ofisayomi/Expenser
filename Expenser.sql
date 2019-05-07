-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.19-0ubuntu0.16.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for expenser
CREATE DATABASE IF NOT EXISTS `expenser` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `expenser`;

-- Dumping structure for table expenser.ActivationCode
CREATE TABLE IF NOT EXISTS `ActivationCode` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(255) DEFAULT NULL,
  `Code` longtext,
  `DateCreated` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ActivationCode_UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table expenser.ActivationCode: ~0 rows (approximately)
/*!40000 ALTER TABLE `ActivationCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ActivationCode` ENABLE KEYS */;

-- Dumping structure for table expenser.AspNetRoleClaims
CREATE TABLE IF NOT EXISTS `AspNetRoleClaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table expenser.AspNetRoleClaims: ~0 rows (approximately)
/*!40000 ALTER TABLE `AspNetRoleClaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetRoleClaims` ENABLE KEYS */;

-- Dumping structure for table expenser.AspNetRoles
CREATE TABLE IF NOT EXISTS `AspNetRoles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table expenser.AspNetRoles: ~0 rows (approximately)
/*!40000 ALTER TABLE `AspNetRoles` DISABLE KEYS */;
INSERT INTO `AspNetRoles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
	('cf55bd2e-ee38-4dbb-a956-867c060597ef', 'admin', 'ADMIN', 'c60ea81c-6695-45a9-b773-20de71b8ec9c');
/*!40000 ALTER TABLE `AspNetRoles` ENABLE KEYS */;

-- Dumping structure for table expenser.AspNetUserClaims
CREATE TABLE IF NOT EXISTS `AspNetUserClaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table expenser.AspNetUserClaims: ~0 rows (approximately)
/*!40000 ALTER TABLE `AspNetUserClaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserClaims` ENABLE KEYS */;

-- Dumping structure for table expenser.AspNetUserLogins
CREATE TABLE IF NOT EXISTS `AspNetUserLogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` varchar(255) NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table expenser.AspNetUserLogins: ~0 rows (approximately)
/*!40000 ALTER TABLE `AspNetUserLogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserLogins` ENABLE KEYS */;

-- Dumping structure for table expenser.AspNetUserRoles
CREATE TABLE IF NOT EXISTS `AspNetUserRoles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table expenser.AspNetUserRoles: ~0 rows (approximately)
/*!40000 ALTER TABLE `AspNetUserRoles` DISABLE KEYS */;
INSERT INTO `AspNetUserRoles` (`UserId`, `RoleId`) VALUES
	('abc42e82-6577-4a2d-9846-6116f80105fa', 'cf55bd2e-ee38-4dbb-a956-867c060597ef');
/*!40000 ALTER TABLE `AspNetUserRoles` ENABLE KEYS */;

-- Dumping structure for table expenser.AspNetUsers
CREATE TABLE IF NOT EXISTS `AspNetUsers` (
  `Id` varchar(255) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `PasswordHash` longtext,
  `SecurityStamp` longtext,
  `ConcurrencyStamp` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `FirstName` longtext,
  `LastName` longtext,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table expenser.AspNetUsers: ~0 rows (approximately)
/*!40000 ALTER TABLE `AspNetUsers` DISABLE KEYS */;
INSERT INTO `AspNetUsers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`, `FirstName`, `LastName`) VALUES
	('abc42e82-6577-4a2d-9846-6116f80105fa', 'admin@expensemanager.com', 'ADMIN@EXPENSEMANAGER.COM', 'admin@expensemanager.com', 'ADMIN@EXPENSEMANAGER.COM', b'0', 'AQAAAAEAACcQAAAAEPy717kn1pW6RjpYpSyA8eWMIRCb7ZEz3JTQYIOs4rjgHZCm7W4SuGlQqEdKsUy+/A==', 'AEYMAUTXOXZXTJMO4ZWC7JMSEFSWZNHF', '0252d35b-8613-4a61-83a6-96eecfe67d14', '2348137363040', b'0', b'0', NULL, b'1', 0, 'Donald', 'King');
/*!40000 ALTER TABLE `AspNetUsers` ENABLE KEYS */;

-- Dumping structure for table expenser.AspNetUserTokens
CREATE TABLE IF NOT EXISTS `AspNetUserTokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table expenser.AspNetUserTokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `AspNetUserTokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserTokens` ENABLE KEYS */;

-- Dumping structure for table expenser.Expense
CREATE TABLE IF NOT EXISTS `Expense` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `value` double NOT NULL,
  `Reason` longtext NOT NULL,
  `UserId` varchar(255) DEFAULT NULL,
  `DateCreated` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Expense_UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table expenser.Expense: ~4 rows (approximately)
/*!40000 ALTER TABLE `Expense` DISABLE KEYS */;
INSERT INTO `Expense` (`Id`, `value`, `Reason`, `UserId`, `DateCreated`) VALUES
	(1, 600, 'For buying Clothes', NULL, '2019-04-29 00:00:00.000000'),
	(2, 1200, 'Purchase of Shoes', NULL, '2019-04-30 00:00:00.000000'),
	(3, 5040, 'Travelling', NULL, '2019-04-28 00:00:00.000000'),
	(4, 2000, 'Travelling', NULL, '2019-05-06 00:00:00.000000');
/*!40000 ALTER TABLE `Expense` ENABLE KEYS */;

-- Dumping structure for table expenser.Token
CREATE TABLE IF NOT EXISTS `Token` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClientId` longtext NOT NULL,
  `Value` longtext NOT NULL,
  `Type` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `CreatedDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Token_UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table expenser.Token: ~0 rows (approximately)
/*!40000 ALTER TABLE `Token` DISABLE KEYS */;
/*!40000 ALTER TABLE `Token` ENABLE KEYS */;

-- Dumping structure for table expenser.__EFMigrationsHistory
CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table expenser.__EFMigrationsHistory: ~0 rows (approximately)
/*!40000 ALTER TABLE `__EFMigrationsHistory` DISABLE KEYS */;
INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
	('20190506155852_DataModels', '2.2.0-rtm-35687');
/*!40000 ALTER TABLE `__EFMigrationsHistory` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
