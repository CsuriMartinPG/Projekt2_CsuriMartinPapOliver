-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2025. Dec 03. 18:32
-- Kiszolgáló verziója: 8.0.41
-- PHP verzió: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `healthtrack`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `meresek`
--

CREATE TABLE `meresek` (
  `diakID` varchar(11) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `eletkor` int DEFAULT NULL,
  `suly` int DEFAULT NULL,
  `magassag` int DEFAULT NULL,
  `osztaly` varchar(4) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `nem` char(1) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `meresek`
--

INSERT INTO `meresek` (`diakID`, `eletkor`, `suly`, `magassag`, `osztaly`, `nem`) VALUES
('10000000001', 14, 52, 164, '9A', 'F'),
('10000000002', 14, 58, 168, '9A', 'F'),
('10000000003', 15, 63, 172, '9A', 'M'),
('10000000004', 14, 49, 159, '9A', 'F'),
('10000000005', 15, 67, 176, '9A', 'M'),
('10000000006', 14, 54, 162, '9A', 'F'),
('10000000007', 15, 70, 178, '9A', 'M'),
('10000000008', 14, 50, 160, '9A', 'F'),
('10000000009', 14, 62, 170, '9A', 'M'),
('10000000010', 15, 55, 165, '9A', 'F'),
('10000000011', 14, 59, 169, '9A', 'M'),
('10000000012', 15, 48, 158, '9A', 'F'),
('10000000013', 15, 66, 175, '9B', 'M'),
('10000000014', 14, 51, 161, '9B', 'F'),
('10000000015', 15, 72, 181, '9B', 'M'),
('10000000016', 14, 57, 167, '9B', 'F'),
('10000000017', 15, 69, 177, '9B', 'M'),
('10000000018', 14, 52, 160, '9B', 'F'),
('10000000019', 15, 68, 174, '9B', 'M'),
('10000000020', 14, 53, 163, '9B', 'F'),
('10000000021', 16, 74, 183, '10A', 'M'),
('10000000022', 16, 56, 169, '10A', 'F'),
('10000000023', 16, 79, 186, '10A', 'M'),
('10000000024', 15, 54, 165, '10A', 'F'),
('10000000025', 16, 82, 188, '10A', 'M'),
('10000000026', 15, 55, 164, '10A', 'F'),
('10000000027', 16, 77, 182, '10A', 'M'),
('10000000028', 15, 59, 170, '10A', 'F'),
('10000000029', 16, 80, 185, '10B', 'M'),
('10000000030', 15, 58, 168, '10B', 'F'),
('10000000031', 16, 83, 189, '10B', 'M'),
('10000000032', 15, 60, 171, '10B', 'F'),
('10000000033', 16, 78, 183, '10B', 'M'),
('10000000034', 15, 61, 169, '10B', 'F'),
('10000000035', 17, 85, 190, '11A', 'M'),
('10000000036', 16, 62, 173, '11A', 'F'),
('10000000037', 17, 88, 192, '11A', 'M'),
('10000000038', 16, 59, 170, '11A', 'F'),
('10000000039', 17, 90, 194, '11A', 'M'),
('10000000040', 16, 63, 175, '11A', 'F'),
('10000000041', 17, 86, 191, '11B', 'M'),
('10000000042', 16, 60, 172, '11B', 'F'),
('10000000043', 17, 92, 196, '11B', 'M'),
('10000000044', 16, 58, 169, '11B', 'F'),
('10000000045', 17, 89, 193, '11B', 'M'),
('10000000046', 16, 64, 174, '11B', 'F'),
('10000000047', 18, 94, 198, '12C', 'M'),
('10000000048', 17, 65, 175, '12C', 'F'),
('10000000049', 18, 96, 199, '12C', 'M'),
('10000000050', 17, 66, 176, '12C', 'F'),
('10000000051', 18, 91, 195, '12C', 'M'),
('10000000052', 17, 67, 174, '12C', 'M'),
('10000000053', 18, 70, 179, '12D', 'F'),
('10000000054', 18, 95, 200, '12D', 'M'),
('10000000055', 17, 68, 173, '12D', 'F'),
('10000000056', 18, 98, 202, '12D', 'M'),
('10000000057', 18, 69, 172, '12I', 'F'),
('10000000058', 19, 101, 205, '12I', 'M'),
('10000000059', 18, 72, 178, '12I', 'F'),
('10000000060', 19, 104, 207, '12I', 'M');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szemelyek`
--

CREATE TABLE `szemelyek` (
  `diakID` varchar(11) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `nev` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `szemelyek`
--

INSERT INTO `szemelyek` (`diakID`, `nev`) VALUES
('10000000001', 'Kiss Ádám'),
('10000000002', 'Nagy Eszter'),
('10000000003', 'Szabó Levente'),
('10000000004', 'Tóth Lilla'),
('10000000005', 'Horváth Dániel'),
('10000000006', 'Varga Nóra'),
('10000000007', 'Kovács Bence'),
('10000000008', 'Farkas Petra'),
('10000000009', 'Balogh Krisztián'),
('10000000010', 'Molnár Sára'),
('10000000011', 'Lakatos Zsolt'),
('10000000012', 'Jakab Hanga'),
('10000000013', 'Gál Milán'),
('10000000014', 'Fülöp Zita'),
('10000000015', 'Lukács Dominik'),
('10000000016', 'Barta Kamilla'),
('10000000017', 'Pintér Botond'),
('10000000018', 'Boros Emese'),
('10000000019', 'Fodor Kristóf'),
('10000000020', 'Vincze Rebeka'),
('10000000021', 'Oláh András'),
('10000000022', 'Szalai Dorina'),
('10000000023', 'Simon Máté'),
('10000000024', 'Takács Fanni'),
('10000000025', 'Papp Gergő'),
('10000000026', 'Bognár Bianka'),
('10000000027', 'Kocsis Márton'),
('10000000028', 'Sipos Léna'),
('10000000029', 'Ferenczi Áron'),
('10000000030', 'Budai Hanna'),
('10000000031', 'Soós Nándor'),
('10000000032', 'Berki Fruzsina'),
('10000000033', 'Deák Ákos'),
('10000000034', 'Gyarmati Kinga'),
('10000000035', 'Major Gábor'),
('10000000036', 'Juhász Noémi'),
('10000000037', 'Rácz Ádám'),
('10000000038', 'Szekeres Lili'),
('10000000039', 'Tompa Benedek'),
('10000000040', 'Mezei Júlia'),
('10000000041', 'Csongrádi Roland'),
('10000000042', 'Dudás Nelli'),
('10000000043', 'Vass Olivér'),
('10000000044', 'Barna Lili'),
('10000000045', 'Hegedűs Konrád'),
('10000000046', 'Winkler Csenge'),
('10000000047', 'Sümegi Áron'),
('10000000048', 'Kerekes Kata'),
('10000000049', 'Gergely Benedek'),
('10000000050', 'Sándor Jázmin'),
('10000000051', 'Török Dominika'),
('10000000052', 'Jenei Bálint'),
('10000000053', 'Fehér Dóra'),
('10000000054', 'Aranyos Bálint'),
('10000000055', 'Vadász Boglárka'),
('10000000056', 'Csorba Hunor'),
('10000000057', 'Cseh Mira'),
('10000000058', 'Sárdi Ottó'),
('10000000059', 'Fenyvesi Laura'),
('10000000060', 'Németh Zalán');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `meresek`
--
ALTER TABLE `meresek`
  ADD KEY `diakID` (`diakID`);

--
-- A tábla indexei `szemelyek`
--
ALTER TABLE `szemelyek`
  ADD PRIMARY KEY (`diakID`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `meresek`
--
ALTER TABLE `meresek`
  ADD CONSTRAINT `meresek_ibfk_1` FOREIGN KEY (`diakID`) REFERENCES `szemelyek` (`diakID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
