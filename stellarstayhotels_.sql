-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 12:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stellarstayhotels.`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `Guest_ID` int(11) NOT NULL,
  `Full_Name` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Loyalty_Program_Number` varchar(50) DEFAULT NULL,
  `Emergency_Contact` varchar(100) DEFAULT NULL,
  `Special_Requests` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`Guest_ID`, `Full_Name`, `Phone`, `Email`, `Address`, `Loyalty_Program_Number`, `Emergency_Contact`, `Special_Requests`) VALUES
(1, 'Jade Merson', '555-1234', 'jademers@example.com', '123 Elm St, Springfield', 'LP123', 'Jane Merson - 555-5678', 'Hypoallergenic pillows'),
(2, 'Libay Aque', '555-4321', 'libsaqz@example.com', '456 Oak St, Springfield', NULL, 'Aki Aque - 555-8765', 'Late check-in'),
(3, 'Yankhu Yani', '555-5634', 'Yankhumi@example.com', '143 Acia st, Snowfield', 'LP124', 'Jed Madela - 555-5248', 'Extra Pillow'),
(4, 'Sonia PUto', '555-6421', 'Sonyha@example.com', '556 Gem St, Atumnfield', NULL, 'Mema More - 555-9465', NULL),
(5, 'Kai cenat', '555-0234', 'kaic@example.com', '659 Diamond St, SUmmerfield', 'LP125', 'Jane Cenat - 555-9670', NULL),
(6, 'Logan Pole', '555-2321', 'japanforest@example.com', '456 Oak St, Springfield', NULL, 'Bob Pole - 555-0065', NULL),
(7, 'Logan Kai', '555-0034', 'logai@example.com', '666 Demon St, texasfield', 'LP225', 'Kay Log - 555-4500', NULL),
(8, 'Loogan Pool', '555-2021', 'Loogpool@example.com', '777 Oak St, Rainfield', 'LP226', 'Log Pole - 555-3065', NULL),
(9, 'Kai cenat', '555-0234', 'kaic@example.com', '659 Diamond St, SUmmerfield', 'LP125', 'Jane Cenat - 555-9670', NULL),
(10, 'Logan Pole', '555-2321', 'japanforest@example.com', '456 Oak St, Springfield', NULL, 'Bob Pole - 555-0065', NULL),
(11, 'Dean Winchester', '555-6669', 'babyimpala@example.com', '666 Angelmon St, Texas', NULL, 'John Winchester- 555-6666', 'Beers'),
(12, 'Sam Winchester', '555-6660', 'lucifergae@example.com', '666 Angelmon St, Texas', NULL, 'John Winchester- 555-6666', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guest_room`
--

CREATE TABLE `guest_room` (
  `Guest_Room_ID` int(11) NOT NULL,
  `Guest_ID` int(11) DEFAULT NULL,
  `Room_ID` int(11) DEFAULT NULL,
  `Check_in_Date` date DEFAULT NULL,
  `Check_out_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest_room`
--

INSERT INTO `guest_room` (`Guest_Room_ID`, `Guest_ID`, `Room_ID`, `Check_in_Date`, `Check_out_Date`) VALUES
(1, 1, 1, '2024-12-01', '2024-12-05'),
(2, 2, 2, '2024-12-10', '2024-12-12'),
(3, 3, 3, '2024-12-15', '2024-12-18'),
(4, 4, 4, '2024-12-11', '2024-12-15'),
(5, 5, 5, '2024-12-12', '2024-12-14'),
(6, 6, 6, '2024-12-15', '2024-12-18'),
(7, 7, 7, '2024-12-15', '2024-12-16'),
(8, 8, 8, '2024-12-11', '2024-12-12'),
(9, 9, 9, '2024-12-19', '2024-12-20'),
(10, 10, 10, '2024-12-21', '2024-12-25'),
(11, 11, 11, '2024-12-10', '2024-12-18'),
(12, 12, 12, '2024-12-11', '2024-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_item`
--

CREATE TABLE `inventory_item` (
  `Item_ID` int(11) NOT NULL,
  `Item_Name` varchar(100) DEFAULT NULL,
  `Item_Category` varchar(50) DEFAULT NULL,
  `Reorder_Level` int(11) DEFAULT NULL,
  `Current_Quantity` int(11) DEFAULT NULL,
  `Supplier_Contact` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_item`
--

INSERT INTO `inventory_item` (`Item_ID`, `Item_Name`, `Item_Category`, `Reorder_Level`, `Current_Quantity`, `Supplier_Contact`) VALUES
(1, 'Mini-Bar Snack', 'Consumables', 10, 5, 'Supplier A'),
(2, 'Towels', 'Linens', 20, 15, 'Supplier B'),
(3, 'Beer', 'Consumables', 10, 100, 'Supplier C'),
(4, 'Pillows', 'Linens', 20, 84, 'Supplier B'),
(5, 'Slippers', 'Footwear', 10, 100, 'Supplier D'),
(6, 'Beddings', 'Linens', 5, 84, 'Supplier B'),
(7, 'Iron', 'Appliance', 5, 50, 'Supplier E'),
(8, 'TV', 'Appliance', 5, 84, 'Supplier E');

-- --------------------------------------------------------

--
-- Table structure for table `modification_cancellation`
--

CREATE TABLE `modification_cancellation` (
  `Modification_ID` int(11) NOT NULL,
  `Reservation_ID` int(11) DEFAULT NULL,
  `Guest_Name` varchar(100) NOT NULL,
  `Change_Request` enum('Modification','Cancellation') DEFAULT NULL,
  `Cancellation_Reason` varchar(100) DEFAULT NULL,
  `Cancellation_Fee` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modification_cancellation`
--

INSERT INTO `modification_cancellation` (`Modification_ID`, `Reservation_ID`, `Guest_Name`, `Change_Request`, `Cancellation_Reason`, `Cancellation_Fee`) VALUES
(1, 1, 'John Newman', 'Cancellation', 'Schedule Change', 50.00),
(2, 2, 'John Cena', 'Modification', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Reservation_ID` int(11) NOT NULL,
  `Guest_ID` int(11) DEFAULT NULL,
  `Check_in_Date` date DEFAULT NULL,
  `Check_out_Date` date DEFAULT NULL,
  `Room_Type` varchar(50) DEFAULT NULL,
  `Number_of_Guests` int(11) DEFAULT NULL,
  `Payment_Method` varchar(20) DEFAULT NULL,
  `Total_Amount_Due` decimal(10,2) DEFAULT NULL,
  `Reservation_Date` date DEFAULT NULL,
  `Confirmed_By_Staff` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`Reservation_ID`, `Guest_ID`, `Check_in_Date`, `Check_out_Date`, `Room_Type`, `Number_of_Guests`, `Payment_Method`, `Total_Amount_Due`, `Reservation_Date`, `Confirmed_By_Staff`) VALUES
(1, 1, '2024-12-01', '2024-12-05', 'Premium', 2, 'Card', 20000.00, '2024-11-25', 'Staff1'),
(2, 2, '2024-12-10', '2024-12-12', 'Standard', 1, 'Cash', 1000.00, '2024-11-30', 'Staff2'),
(3, 3, '2024-12-04', '2024-12-10', 'Deluxe', 2, 'Card', 15000.00, '2024-11-26', 'Staff3'),
(4, 4, '2024-12-13', '2024-12-16', 'Standard', 1, 'Cash', 1500.00, '2024-11-29', 'Staff2');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_ID` int(11) NOT NULL,
  `Room_Number` varchar(10) DEFAULT NULL,
  `Room_Type` varchar(50) DEFAULT NULL,
  `Current_Price` decimal(10,2) DEFAULT NULL,
  `Seasonal_Price_Adjustments` decimal(10,2) DEFAULT NULL,
  `Maintenance_Status` enum('Available','Under Maintenance','Not Bookable') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_ID`, `Room_Number`, `Room_Type`, `Current_Price`, `Seasonal_Price_Adjustments`, `Maintenance_Status`) VALUES
(1, '101', 'Standard', 500.00, 250.00, 'Available'),
(2, '102', 'Standard', 200.00, 250.00, 'Available'),
(3, '103', 'Standard', 500.00, 250.00, 'Available'),
(4, '104', 'Standard', 500.00, 250.00, 'Available'),
(5, '105', 'Standard', 500.00, 250.00, 'Available'),
(6, '106', 'Standard', 500.00, 250.00, 'Available'),
(7, '107', 'Standard', 500.00, 250.00, 'Available'),
(8, '108', 'Deluxe', 2500.00, 550.00, 'Available'),
(9, '109', 'Deluxe', 2500.00, 550.00, 'Available'),
(10, '110', 'Deluxe', 2500.00, 550.00, 'Available'),
(11, '112', 'Deluxe', 2500.00, 550.00, 'Available'),
(12, '113', 'Deluxe', 2500.00, 550.00, 'Available'),
(13, '114', 'Deluxe', 2500.00, 550.00, 'Available'),
(14, '115', 'Standard', 500.00, 250.00, 'Under Maintenance'),
(15, '116', 'Premium', 5000.00, 120.00, 'Available'),
(16, '117', 'Standard', 500.00, 250.00, 'Available'),
(17, '118', 'Premium', 5000.00, 120.00, 'Available'),
(18, '119', 'Standard', 500.00, 250.00, 'Available'),
(19, '120', 'Premium', 5000.00, 120.00, 'Available'),
(20, '121', 'Standard', 500.00, 250.00, 'Under Maintenance'),
(21, '122', 'Premium', 5000.00, 120.00, 'Available'),
(22, '123', 'Premium', 5000.00, 120.00, 'Under Maintenance'),
(23, '124', 'Premium', 5000.00, 120.00, 'Available'),
(24, '125', 'Premium', 5000.00, 120.00, 'Available'),
(25, '126', 'Premium', 5000.00, 120.00, 'Available'),
(26, '127', 'Premium', 5000.00, 120.00, 'Under Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `room_inventory`
--

CREATE TABLE `room_inventory` (
  `Room_Inventory_ID` int(11) NOT NULL,
  `Room_ID` int(11) DEFAULT NULL,
  `Item_ID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Reorder_Level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_inventory`
--

INSERT INTO `room_inventory` (`Room_Inventory_ID`, `Room_ID`, `Item_ID`, `Quantity`, `Reorder_Level`) VALUES
(1, 1, 1, 1, 5),
(2, 1, 2, 3, 5),
(3, 2, 4, 5, 3),
(4, 2, 2, 3, 8),
(5, 1, 1, 10, 5),
(6, 1, 2, 15, 10),
(7, 2, 1, 5, 3),
(8, 2, 2, 12, 8),
(9, 3, 3, 5, 5),
(10, 3, 5, 2, 10),
(11, 4, 4, 3, 3),
(12, 4, 2, 3, 8),
(13, 5, 1, 10, 5),
(14, 5, 2, 15, 10),
(15, 6, 1, 5, 3),
(16, 6, 2, 12, 8),
(17, 7, 1, 10, 5),
(18, 7, 2, 15, 10),
(19, 8, 1, 5, 3),
(20, 8, 2, 12, 8),
(21, 9, 1, 10, 5),
(22, 9, 2, 15, 10),
(23, 10, 1, 5, 3),
(24, 10, 2, 12, 8),
(25, 11, 3, 20, 5),
(26, 11, 1, 15, 10),
(27, 12, 1, 5, 3),
(28, 12, 2, 12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `room_maintenance`
--

CREATE TABLE `room_maintenance` (
  `Maintenance_ID` int(11) NOT NULL,
  `Room_ID` int(11) DEFAULT NULL,
  `Maintenance_Type` enum('Cleaning','Repair','Renovation') DEFAULT NULL,
  `Scheduled_Date_Time` datetime DEFAULT NULL,
  `Assigned_Staff` varchar(100) DEFAULT NULL,
  `Completion_Status` enum('Completed','Incomplete') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_maintenance`
--

INSERT INTO `room_maintenance` (`Maintenance_ID`, `Room_ID`, `Maintenance_Type`, `Scheduled_Date_Time`, `Assigned_Staff`, `Completion_Status`) VALUES
(1, 14, 'Cleaning', '2024-12-11 10:00:00', 'Staff27', 'Incomplete'),
(2, 22, 'Repair', '2024-12-02 09:00:00', 'Staff28', 'Incomplete'),
(3, 20, 'Cleaning', '2024-12-01 10:00:00', 'Staff27', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` int(11) NOT NULL,
  `Full_Name` varchar(100) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Emergency_Contact` varchar(100) DEFAULT NULL,
  `Hire_Date` date DEFAULT NULL,
  `Dependents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Full_Name`, `Position`, `Phone`, `Email`, `Emergency_Contact`, `Hire_Date`, `Dependents`) VALUES
(1, 'Thorben Netuno\r\n', 'Receptionist', '555-1122', 'ThorbenNetuno@example.com', 'Mary  Netuno - 5555-1000', '2023-01-15', 'None'),
(2, 'Valarie Leutgar', 'Manager', '555-2244', 'ValarieLeutgar@example.com', 'Kim Leutgar', '2022-05-20', '1 Spouse'),
(3, 'Avelino Branwen', 'Receptionist', '555-7854', 'AvelinoBranwen@example.com', 'Ken Branwen - 555-2000', '2023-01-15', 'None'),
(4, 'Tyrone Elliott', 'Manager', '555-2178', 'TyroneElliott@example.com', 'Ty Elliott - 5555-3000', '2022-05-20', '1 Spouse'),
(5, 'Siro Alberta', 'Receptionist', '555-2289', 'SiroAlberta@example.com', 'Sir. Alberta - 555-2001', '2023-01-15', 'Spouse 1 '),
(6, 'Gladys Bedwyr', 'Manager', '555-5555', 'GladysBedwyr@example.com', 'Gem Bedwyr - 555-2002', '2022-05-20', '1 Spouse'),
(7, 'Sirvart Sarpedon', 'Receptionist', '555-1666', 'SirvartSarpedon@example.com', 'Owen Sarpedon - 555-2003', '2023-01-15', 'None'),
(8, 'Rahim Eudokimos\r\n', 'Manager', '555-7770', 'RahimEudokimos@example.com', 'Jed Eudokimos - 555-2004', '2022-05-20', 'None'),
(9, 'Darell Jessi', 'Receptionist', '555-7564', 'DarellJessi@example.com', 'jane Jessi - 555-2005', '2023-01-15', 'None'),
(10, 'Pacey Chelsea', 'Manager', '555-2089', 'PaceyChelsea@example.com', 'Dan Chelsea 555- 2007', '2022-05-20', '1 Spouse'),
(11, 'Wilda Elsa\r\n', 'Receptionist', '555-4666', 'WildaElsa@example.com', 'Elsa Elsa - 555-2012\r\n', '2023-01-15', 'None'),
(12, 'Adalynn Vin', 'Receptionist', '555-1222', 'AdalynnVin@example.com', 'Ada Vin - 555-2222', '2022-05-20', 'None'),
(13, 'Vianne Verity', 'Receptionist', '555-1333', 'VianneVerity@example.com', 'Kon Verity - 555-2015', '2023-01-20', 'None'),
(14, 'Billy Desi', 'Boy', '555-2444', 'BillyDesi@example.com', 'Bill Desi - 555-2233', '2022-01-20', 'None'),
(15, 'Forest Zac', 'Boy', '555-1555', 'ForestZac@example.com', 'Zac Zac - 555-2200', '2023-01-20', 'None'),
(16, 'Deen Braiden', 'boy', '555-2222', 'DeenBraiden@example.com', 'Sam Braiden - 555-2033', '2022-01-20', 'None'),
(17, 'Royston Merit', 'Boy', '555-1112', 'RoystonMerit@example.com', 'kingston Merit', '2023-01-20', 'None'),
(18, 'Titt Randy', 'Boy', '555-2225', 'TittRandy@example.com', 'Orton Randy - 555-4000', '2022-01-20', '1 Spouse'),
(19, 'Nikolas India', 'Boy', '555-1100', 'NikolasIndia@example.com', 'Cage India - 555-9000', '2023-01-20', 'None'),
(20, 'Gregory Augustine', 'boy', '555-2056', 'GregoryAugustine@example.com', 'Gregory Augustine - 555-2121', '2022-01-20', 'None'),
(21, 'Kole Luann', 'boy', '555-1169', 'KoleLuann@example.com', 'Jin Luann - 555-4000', '2023-01-20', 'None'),
(22, 'Egypt Arthur', 'Receptionist', '555-8999', 'EgyptArthur@example.com', 'james Arthur', '2022-02-20', '1 Spouse'),
(23, 'Kaley Cynthia\r\n', 'Receptionist', '555-2222', 'KaleyCynthia@example.com', 'Karen Cynthia\r\n', '2023-02-20', 'None'),
(24, 'Londyn Robyn', 'Receptionist', '555-5050', 'LondynRobyn@example.com', 'Ribon Robyn', '2022-02-20', 'None'),
(25, 'Aaren Gaye', 'Receptionist', '555-1111', 'AarenGaye@example.com', 'Marvin Gaye', '2023-02-20', 'None'),
(26, 'Shaelyn Blondie', 'Manager', '555-7777', 'ShaelynBlondie@example.com', 'Wen Blondie', '2022-05-20', '1 Spouse'),
(27, 'Ren Portia', 'Maintenance', '555-2055', 'RenPortia@example.com', 'NONE', '2023-03-15', 'None'),
(28, 'Cassidy Morley', 'Maintenace', '555-1414', 'CassidyMorley@example.com', 'Orange  Morley - 555-1223', '2022-05-20', '1 Spouse'),
(29, 'Rhoda Brittny', 'Receptionist', '555-1634', 'RhodaBrittny1@example.com', 'Jim Brittny - 555-2312', '2023-01-15', 'None'),
(30, 'Roseann Alesha', 'Receptionist', '555-7878', 'RoseannAlesha2@example.com', 'Alex Alesha', '2022-05-20', 'NONE'),
(31, 'Easton Braylen', 'Receptionist', '555-9889', 'EastonBraylen1@example.com', 'Ken Braylen', '2023-02-15', 'None'),
(32, 'Mimi Chadwick', 'Receptionist', '555-0909', 'MimiChadwick@example.com', 'Boseman Chadwick - 555-5959', '2022-02-15', '1 Spouse'),
(33, 'Gaye Winter', 'Receptionist', '555-4545', 'GayeWinter1@example.com', 'Marivn Winter - 555-6665', '2023-01-15', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `staff_scheduling`
--

CREATE TABLE `staff_scheduling` (
  `Schedule_ID` int(11) NOT NULL,
  `Staff_ID` int(11) DEFAULT NULL,
  `Scheduled_Date` date DEFAULT NULL,
  `Shift_Role` varchar(50) DEFAULT NULL,
  `Time_Off_Request_Start` date DEFAULT NULL,
  `Time_Off_Request_End` date DEFAULT NULL,
  `Approval_Status` enum('Pending','Approved','Denied') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_scheduling`
--

INSERT INTO `staff_scheduling` (`Schedule_ID`, `Staff_ID`, `Scheduled_Date`, `Shift_Role`, `Time_Off_Request_Start`, `Time_Off_Request_End`, `Approval_Status`) VALUES
(1, 1, '2024-12-01', 'Morning', NULL, NULL, 'Approved'),
(2, 2, '2024-12-02', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(3, 3, '2024-11-01', 'Morning', NULL, NULL, 'Approved'),
(4, 4, '2024-10-02', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(5, 5, '2024-12-21', 'Morning', NULL, NULL, 'Approved'),
(6, 6, '2024-12-22', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(7, 7, '2024-12-25', 'Morning', NULL, NULL, 'Approved'),
(8, 8, '2024-12-25', 'Evening', '2024-12-03', '2024-12-05', 'Approved'),
(9, 9, '2024-12-21', 'Morning', NULL, NULL, 'Approved'),
(10, 10, '2024-12-22', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(11, 11, '2024-12-21', 'Morning', NULL, NULL, 'Approved'),
(12, 12, '2024-12-01', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(13, 13, '2024-12-02', 'Morning', NULL, NULL, 'Approved'),
(14, 14, '2024-12-03', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(15, 15, '2024-12-04', 'Morning', NULL, NULL, 'Approved'),
(16, 16, '2024-12-05', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(17, 17, '2024-12-06', 'Morning', NULL, NULL, 'Approved'),
(18, 18, '2024-12-07', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(19, 19, '2024-12-08', 'Morning', NULL, NULL, 'Approved'),
(20, 20, '2024-12-09', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(21, 21, '2024-12-11', 'Morning', NULL, NULL, 'Approved'),
(22, 22, '2024-12-12', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(23, 23, '2024-12-13', 'Morning', NULL, NULL, 'Approved'),
(24, 24, '2024-12-14', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(25, 25, '2024-12-15', 'Morning', NULL, NULL, 'Approved'),
(26, 26, '2024-12-16', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(27, 27, '2024-12-17', 'Morning', NULL, NULL, 'Approved'),
(28, 28, '2024-12-18', 'Evening', '2024-12-03', '2024-12-05', 'Pending'),
(29, 29, '2024-12-17', 'Morning', NULL, NULL, 'Approved'),
(30, 30, '2024-12-18', 'Evening', '2024-12-03', '2024-12-05', 'Approved'),
(31, 31, '2024-12-19', 'Morning', NULL, NULL, 'Approved'),
(32, 32, '2024-12-17', 'Evening', '2024-12-03', '2024-12-05', 'Approved'),
(33, 33, '2024-12-11', 'Morning', NULL, NULL, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `training_record`
--

CREATE TABLE `training_record` (
  `Training_ID` int(11) NOT NULL,
  `Staff_ID` int(11) DEFAULT NULL,
  `Job_Role` varchar(50) DEFAULT NULL,
  `Training_Modules_Completed` text DEFAULT NULL,
  `Training_Completion_Date` date DEFAULT NULL,
  `Upcoming_Training_Reminder` date DEFAULT NULL,
  `Performance_Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `training_record`
--

INSERT INTO `training_record` (`Training_ID`, `Staff_ID`, `Job_Role`, `Training_Modules_Completed`, `Training_Completion_Date`, `Upcoming_Training_Reminder`, `Performance_Notes`) VALUES
(1, 1, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(2, 2, 'Manager', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(3, 3, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(4, 4, 'Manager', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(5, 5, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(6, 6, 'Manager', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(7, 7, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(8, 8, 'Manager', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(9, 9, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(10, 10, 'Manager', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(11, 11, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(12, 12, 'Receptionist', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(13, 13, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(14, 14, 'boy', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(15, 15, 'boy', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(16, 16, 'boy', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(17, 17, 'boy', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(18, 18, 'boy', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(19, 19, 'boy', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(20, 20, 'boy', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(21, 21, 'boy', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(22, 22, 'Manager', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(23, 23, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(24, 24, 'Receptionist', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(25, 25, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(26, 26, 'Manager', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(27, 27, 'Maintenace', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(28, 28, 'Maintenace', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(29, 29, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(30, 30, 'Receptionist', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(31, 31, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance'),
(32, 32, 'Receptionist', 'Module 1', '2024-10-10', '2024-12-15', 'Needs improvement in leadership skills'),
(33, 33, 'Receptionist', 'Module 1, Module 2', '2024-11-20', '2024-12-20', 'Good performance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`Guest_ID`);

--
-- Indexes for table `guest_room`
--
ALTER TABLE `guest_room`
  ADD PRIMARY KEY (`Guest_Room_ID`),
  ADD KEY `Guest_ID` (`Guest_ID`),
  ADD KEY `Room_ID` (`Room_ID`);

--
-- Indexes for table `inventory_item`
--
ALTER TABLE `inventory_item`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `modification_cancellation`
--
ALTER TABLE `modification_cancellation`
  ADD PRIMARY KEY (`Modification_ID`),
  ADD KEY `Reservation_ID` (`Reservation_ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Reservation_ID`),
  ADD KEY `Guest_ID` (`Guest_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_ID`);

--
-- Indexes for table `room_inventory`
--
ALTER TABLE `room_inventory`
  ADD PRIMARY KEY (`Room_Inventory_ID`),
  ADD KEY `Room_ID` (`Room_ID`),
  ADD KEY `Item_ID` (`Item_ID`);

--
-- Indexes for table `room_maintenance`
--
ALTER TABLE `room_maintenance`
  ADD PRIMARY KEY (`Maintenance_ID`),
  ADD KEY `Room_ID` (`Room_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `staff_scheduling`
--
ALTER TABLE `staff_scheduling`
  ADD PRIMARY KEY (`Schedule_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `training_record`
--
ALTER TABLE `training_record`
  ADD PRIMARY KEY (`Training_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `Guest_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `guest_room`
--
ALTER TABLE `guest_room`
  MODIFY `Guest_Room_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `inventory_item`
--
ALTER TABLE `inventory_item`
  MODIFY `Item_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `modification_cancellation`
--
ALTER TABLE `modification_cancellation`
  MODIFY `Modification_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Reservation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `Room_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `room_inventory`
--
ALTER TABLE `room_inventory`
  MODIFY `Room_Inventory_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `room_maintenance`
--
ALTER TABLE `room_maintenance`
  MODIFY `Maintenance_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `Staff_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `staff_scheduling`
--
ALTER TABLE `staff_scheduling`
  MODIFY `Schedule_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `training_record`
--
ALTER TABLE `training_record`
  MODIFY `Training_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guest_room`
--
ALTER TABLE `guest_room`
  ADD CONSTRAINT `guest_room_ibfk_1` FOREIGN KEY (`Guest_ID`) REFERENCES `guest` (`Guest_ID`),
  ADD CONSTRAINT `guest_room_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`Room_ID`);

--
-- Constraints for table `modification_cancellation`
--
ALTER TABLE `modification_cancellation`
  ADD CONSTRAINT `modification_cancellation_ibfk_1` FOREIGN KEY (`Reservation_ID`) REFERENCES `reservation` (`Reservation_ID`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`Guest_ID`) REFERENCES `guest` (`Guest_ID`);

--
-- Constraints for table `room_inventory`
--
ALTER TABLE `room_inventory`
  ADD CONSTRAINT `room_inventory_ibfk_1` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`Room_ID`),
  ADD CONSTRAINT `room_inventory_ibfk_2` FOREIGN KEY (`Item_ID`) REFERENCES `inventory_item` (`Item_ID`);

--
-- Constraints for table `room_maintenance`
--
ALTER TABLE `room_maintenance`
  ADD CONSTRAINT `room_maintenance_ibfk_1` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`Room_ID`);

--
-- Constraints for table `staff_scheduling`
--
ALTER TABLE `staff_scheduling`
  ADD CONSTRAINT `staff_scheduling_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`);

--
-- Constraints for table `training_record`
--
ALTER TABLE `training_record`
  ADD CONSTRAINT `training_record_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
