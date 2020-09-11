-- CREATE SCHEMA IF NOT EXISTS `southwestairlines` DEFAULT CHARACTER SET utf8mb4 ;

-- USE `southwestairlines` ;

-- -----------------------------------------------------

-- Table `southwestairlines`.`Customer`

-- -----------------------------------------------------

drop table if exists Customer;
drop table if exists Reservation;
drop table if exists ReservationCancellation;
drop table if exists Passenger;
drop table if exists Payment;
drop table if exists Feedback;
drop table if exists FlightSchedule;
drop table if exists FlightCancellation;
drop table if exists FlightLeg;
drop table if exists Baggage;
drop table if exists Reward;
drop table if exists Airplane;
drop table if exists Airport;
drop table if exists FlightReward;
drop table if exists AirportFlight;
drop table if exists AirplaneFlight;




CREATE TABLE `Customer` (

  `CustomerID` INT NOT NULL AUTO_INCREMENT,

  `FirstName` VARCHAR(200) NOT NULL,

  `LastName` VARCHAR(200) NOT NULL,

  `DOB` DATE NOT NULL,

  `PhoneNum` VARCHAR(12) NULL,

  `Email` VARCHAR(200) NOT NULL,

  PRIMARY KEY (`CustomerID`));

  alter table customer auto_increment = 100000;

-- -----------------------------------------------------

-- Table `southwestairlines`.`Reservation`

-- -----------------------------------------------------

CREATE TABLE `Reservation` (

  `ReservationID` INT NOT NULL AUTO_INCREMENT,

  `ReservationDate` DATE NOT NULL,

  `CustomerID` INT NOT NULL,

  PRIMARY KEY (`ReservationID`));

    alter table reservation auto_increment = 200000;




-- -----------------------------------------------------

-- Table `southwestairlines`.`ReservationCancellation`

-- -----------------------------------------------------

CREATE TABLE `ReservationCancellation` (

  `ResCancellationID` INT NOT NULL AUTO_INCREMENT,

  `ReservationID` INT NOT NULL,

  `Reason` VARCHAR(255) NULL,

  PRIMARY KEY (`ResCancellationID`),

  CONSTRAINT `fk_Reservation_Cancellation`

    FOREIGN KEY (`ReservationID`)

    REFERENCES `southwestairlines`.`Reservation` (`ReservationID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION);

  alter table reservationcancellation auto_increment = 300000;



-- -----------------------------------------------------

-- Table `southwestairlines`.`Passenger`

-- -----------------------------------------------------

CREATE TABLE `Passenger` (

  `FeedbackID` INT NOT NULL AUTO_INCREMENT,

  `FirstName` VARCHAR(200) NOT NULL,

  `LastName` VARCHAR(200) NOT NULL,

  `PhoneNum` VARCHAR(12) NULL,

  `ReservationID` INT NOT NULL,

  PRIMARY KEY (`PassengerID`),

  CONSTRAINT `fk_Passenger_Reservation1`

    FOREIGN KEY (`ReservationID`)

    REFERENCES `southwestairlines`.`Reservation` (`ReservationID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION);

    alter table passenger auto_increment = 400000;

-- -----------------------------------------------------

-- Table `southwestairlines`.`Payment`

-- -----------------------------------------------------

CREATE TABLE `Payment` (

  `PaymentID` INT NOT NULL AUTO_INCREMENT,

  `CardNum` VARCHAR(16) NOT NULL,

  `Date` DATE NOT NULL,

  `VerificationCode` INT NOT NULL,

  `Amount` INT NOT NULL,

  `ReservationID` INT NOT NULL,

  PRIMARY KEY (`PaymentID`),

  CONSTRAINT `fk_Payment_Reservation1`

    FOREIGN KEY (`ReservationID`)

    REFERENCES `southwestairlines`.`Reservation` (`ReservationID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION);

    alter table payment auto_increment = 500000;

-- -----------------------------------------------------

-- Table `southwestairlines`.`Feedback`

-- -----------------------------------------------------



CREATE TABLE `Feedback` (

  `FeedbackID` INT NOT NULL AUTO_INCREMENT,

  `Rating` VARCHAR(45) NOT NULL,

  `Note` VARCHAR(255) NULL,

  `ReservationID` INT NOT NULL,

  PRIMARY KEY (`FeedbackID`));

    alter table feedback auto_increment = 600000;


-- -----------------------------------------------------

-- Table `southwestairlines`.`FlightSchedule`

-- -----------------------------------------------------

CREATE TABLE `FlightSchedule` (

  `FlightNum` INT NOT NULL AUTO_INCREMENT,

  `DepartureTime` TIME NOT NULL,

  `ArrivalTime` TIME NOT NULL,

  `OriginDest` VARCHAR(45) NOT NULL,

  `ArrivalDest` VARCHAR(200) NOT NULL,

  `Date` VARCHAR(200) NOT NULL,

  `Cost` INT NOT NULL,

  PRIMARY KEY (`FlightNum`));

    alter table flightschedule auto_increment = 700000;





-- -----------------------------------------------------

-- Table `southwestairlines`.`FlightCancellation`

-- -----------------------------------------------------

CREATE TABLE `FlightCancellation` (

  `FlightCancellationID` INT NOT NULL AUTO_INCREMENT,

  `Reason` VARCHAR(255) NULL,

  `FlightNum` INT NOT NULL,

  PRIMARY KEY (`FlightCancellationID`),

  CONSTRAINT `fk_Flight_Cancellation`

    FOREIGN KEY (`FlightNum`)

    REFERENCES `southwestairlines`.`flightschedule` (`FlightNum`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION);


  alter table flightcancellation auto_increment = 800000;



-- -----------------------------------------------------

-- Table `southwestairlines`.`FlightLeg`

-- -----------------------------------------------------

CREATE TABLE `FlightLeg` (

  `ReservationID` INT NOT NULL,

  `FlightNum` INT NOT NULL,

  `ActualArrivalTime` TIME NULL,

  `ActualDepartureTime` TIME NULL,

  `ActualCost` INT NULL,

  `Status` VARCHAR(45) NULL,

  PRIMARY KEY (`ReservationID`, `FlightNum`),

  CONSTRAINT `fk_Reservation_has_FlightSchedule_Reservation1`

    FOREIGN KEY (`ReservationID`)

    REFERENCES `southwestairlines`.`Reservation` (`ReservationID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `fk_Reservation_has_FlightSchedule_FlightSchedule1`

    FOREIGN KEY (`FlightNum`)

    REFERENCES `southwestairlines`.`FlightSchedule` (`FlightNum`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION);

-- -----------------------------------------------------

-- Table `southwestairlines`.`Baggage`

-- -----------------------------------------------------

CREATE TABLE `Baggage` (

  `BaggageID` INT NOT NULL AUTO_INCREMENT,

  `BagColor` VARCHAR(45) NOT NULL,

  `BagSize` VARCHAR(45) NOT NULL,

  `BagWeight` INT NOT NULL,

  `ReservationID` INT NOT NULL,

  `FlightNum` INT NOT NULL,

  PRIMARY KEY (`BaggageID`),

  CONSTRAINT `fk_Baggage_Flightnumber`

    FOREIGN KEY (`FlightNum`)

    REFERENCES `southwestairlines`.`FlightSchedule` (`FlightNum`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

	CONSTRAINT `fk_Baggage_Reservation`

    FOREIGN KEY (`ReservationID`)

    REFERENCES `southwestairlines`.`Reservation` (`ReservationID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION);

    alter table baggage auto_increment = 900000;

-- -----------------------------------------------------

-- Table `southwestairlines`.`Reward`

-- -----------------------------------------------------

CREATE TABLE `Reward` (

  `RewardID` INT NOT NULL AUTO_INCREMENT,

  `RewardType` VARCHAR(45) NOT NULL,

  PRIMARY KEY (`RewardID`));

  alter table reward auto_increment = 1000000;

-- -----------------------------------------------------

-- Table `southwestairlines`.`Airplane`

-- -----------------------------------------------------

CREATE TABLE `Airplane` (

  `PlaneID` INT NOT NULL AUTO_INCREMENT,

  `Model` VARCHAR(100) NOT NULL,

  `LastServiceDate` DATE NULL,

  `NextServiceDate` DATE NOT NULL,

  PRIMARY KEY (`PlaneID`));

  alter table airplane auto_increment = 1100000;

-- -----------------------------------------------------

-- Table `southwestairlines`.`Airport`

-- -----------------------------------------------------

CREATE TABLE `Airport` (

  `AirportID` INT NOT NULL AUTO_INCREMENT,

  `Name` VARCHAR(200) NOT NULL,

  `Address` VARCHAR(200) NOT NULL,

  PRIMARY KEY (`AirportID`));

  alter table airport auto_increment = 1200000;

-- -----------------------------------------------------

-- Table `southwestairlines`.`FlightReward`

-- -----------------------------------------------------

CREATE TABLE `FlightReward` (

  `RewardID` INT NOT NULL,

  `ReservationID` INT NOT NULL,

  `FlightNum` INT NOT NULL,

  `Amount` INT NOT NULL,

  PRIMARY KEY (`RewardID`, `ReservationID`, `FlightNum`),

  CONSTRAINT `fk_Reward`

    FOREIGN KEY (`RewardID`)

    REFERENCES `southwestairlines`.`Reward` (`RewardID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `fk_Reward_FlightSchedule`

    FOREIGN KEY (`FlightNum`)

    REFERENCES `southwestairlines`.`FlightSchedule` (`FlightNum`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

CONSTRAINT `fk_Reward_Reservation`

    FOREIGN KEY (`ReservationID`)

    REFERENCES `southwestairlines`.`Reservation` (`ReservationID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION
    );

-- -----------------------------------------------------

-- Table `southwestairlines`.`AirportFlight`

-- -----------------------------------------------------

CREATE TABLE `AirportFlight` (

  `FlightNum` INT NOT NULL,

  `AirportID` INT NOT NULL,

  PRIMARY KEY (`FlightNum`, `AirportID`),

  CONSTRAINT `fk_AirportFlight_FlightNum`

    FOREIGN KEY (`FlightNum`)

    REFERENCES `southwestairlines`.`FlightSchedule` (`FlightNum`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `fk_AirportFlight_AirportID`

    FOREIGN KEY (`AirportID`)

    REFERENCES `southwestairlines`.`Airport` (`AirportID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION);

-- -----------------------------------------------------

-- Table `southwestairlines`.`AirplaneFlight`

-- -----------------------------------------------------

CREATE TABLE `AirplaneFlight` (

  `PlaneID` INT NOT NULL,

  `FlightNum` INT NOT NULL,

  PRIMARY KEY (`PlaneID`, `FlightNum`),

  CONSTRAINT `fk_Airplane_has_FlightSchedule_Airplane1`

    FOREIGN KEY (`PlaneID`)

    REFERENCES `southwestairlines`.`Airplane` (`PlaneID`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `fk_Airplane_has_FlightSchedule_FlightSchedule1`

    FOREIGN KEY (`FlightNum`)

    REFERENCES `southwestairlines`.`FlightSchedule` (`FlightNum`)

    ON DELETE NO ACTION

    ON UPDATE NO ACTION);