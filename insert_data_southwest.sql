INSERT INTO Customer (FirstName, LastName, DOB, PhoneNum, Email) 

VALUES  

("Heather", "Byrge", "1942-02-02", "361-353-5224", "HeatherJByrge@jourrapide.com"), 

("Tina", "Pence", "1998-04-24", "510-764-2731", "TinaRPence@dayrep.com"), 

("John", "Wooley", "1983-08-21", "972-316-8130", "JohnBWooley@rhyta.com"), 

("Gary", "Roberts", "1967-05-07", "704-263-8683", "GaryERoberts@jourrapide.com"), 

 ("Michael", "Davis", "1947-12-20", "904-509-1619", "MichaelIDavis@teleworm.us"); 

INSERT INTO Reservation (ReservationDate, CustomerID) 

VALUES 
("2019-05-19", 100000), 

("2019-09-25", 100002), 

("2020-02-19", 100003), 

("2019-09-25", 100004), 

("2019-05-02", 100005); 

INSERT INTO ReservationCancellation (ReservationID, Reason) 

VALUES  (200003, "Illness"); 

INSERT INTO Passenger (FirstName, LastName, PhoneNum, ReservationID) 

VALUES ("Heather", "Byrge", "361-353-5224", "200000"), 

("Tina", "Pence", "510-764-2731", "200001"), 

("Jenelle", "Pence", "", "200001"), 

("Frank", "Pence", "", "200001"), 

("John", "Wooley", "972-316-8130", "200002"), 

("Wendy", "Wooley", "", "200002"), 

("Tina", "Roberts", "", "200003"), 

("Michael", "Davis", "904-509-1619", "200004"); 

 

INSERT INTO Payment (CardNum, Date, VerificationCode, Amount, ReservationID)
 
VALUES
(5485711668256139, "2020-02-10", 1821, 766.20, 200001), 

(4716337106849675, "2020-01-05", 3120, 1200.92, 200003); 

 

INSERT INTO Feedback (Rating, Note, ReservationID) 

VALUES 
(1, "Flight crew did not provide drink service!", 200000), 

(5, "Everything perfect! Entertaining crew!", 200001), 

(3, "Good flight", 200002), 

(1, "I lost my baggage!", 200003); 


INSERT INTO FlightSchedule (DepartureTime, ArrivalTime, OriginDest, ArrivalDest, Date, Cost) 

VALUES 
("12:15", "16:12", "LBB",  "DAL", 2020-05-01, 300), 

("10:15", "15:12", "MEM",  "DCA", 2020-05-01, 300), 

("07:15", "16:12", "LBB",  "DAL", 2020-05-01, 300), 

("05:11", "10:12", "LBB",  "OKC", 2020-05-02, 300), 

("08:00", "11:12", "LBB",  "LGA", 2020-05-01, 300), 

("12:00", "17:12", "DEN",  "DAL", 2020-05-02, 350), 

("04:00", "09:12", "LBB",  "DAL", 2020-05-01, 300), 

("07:10", "10:12", "DEN",  "LBB", 2020-05-03, 350),

("06:10", "07:20", "DAL",  "LBB", 2020-05-03, 300);


INSERT INTO FlightCancellation (Reason, FlightNum) 

VALUES 
("Sudden Breakup", 700008);  

INSERT INTO FlightLeg (ReservationID, FlightNum, ActualArrivalTime, ActualDepartureTime, ActualCost, Status) 

VALUES 

(200000, 700000, "08:14:00", "17:15:00", 400, "On-time"), 

(200001, 700001, "06:14:00", "12:15:00", 300, "On-time"), 

(200002, 700002, "03:14:00", "07:15:00", 800, "On-time"); 

 

INSERT INTO Baggage (BagColor, BagSize, BagWeight, ReservationID, FlightNum) 

VALUES 
("Black", "Checked", 30, 200000, 700000), 

("White", "Oversize", 45, 200001, 700001), 

("Blue", "Checked", 38, 200003, 700003), 

("Brown", "Checked", 35, 200004, 700004);

 

INSERT INTO Reward (RewardType) 

VALUES 
("Miles"), 

("Points"), 

("Money"); 

 

INSERT INTO Airplane (Model, LastServiceDate, NextServiceDate) 

VALUES 
( "737-700","2020-03-23", "2020-06-23"), 

("737-800","2020-01-02", "2020-11-28"), 

("737 MAX 7","2020-06-23", "2020-10-29"), 

("737 MAX 8","2020-03-03", "2020-10-29"), 

("737-500","2020-03-13", "2020-10-29"); 

 

INSERT INTO Airport (Name, Address) 

VALUES 
("DAL", "28008 Herb Kelleher Way, Dallas, TX 75235"), 

("LBB", "5401 N Martin L King Blvd, Lubbock, TX 79403"), 

("MEM", "2491 Winchester Rd, Memphis, TN 38116"), 

("DCA", "2401 Smith Boulevard, Arlington, VA 22202"), 

("OKC", "100 Terminal Dr, Oklahoma City, OK 73159"), 

("LGA", "New York, Queens, NY 11371"), 

("DEN", "8500 Pena Blvd Denver"); 

 

INSERT INTO FlightReward (RewardID, ReservationID, FlightNum, Amount) 

VALUES 
(1000001, 200001, 700003, 4000), 

(1000000, 200003, 700002, 50); 

 

INSERT INTO AirportFlight (FlightNum, AirportID) 

VALUES  

(700000, 1200001), 

(700000, 1200000), 

(700001, 1200002), 

(700001, 1200000), 

(700002, 1200001), 

(700002, 1200000), 

(700003, 1200001), 

(700003, 1200004), 

(700004, 1200001), 

(700004, 1200005), 

(700005, 1200006), 

(700005, 1200000), 

(700006, 1200001), 

(700006, 1200000), 

(700007, 1200006), 

(700008, 1200006), 

(700008, 1200001); 

 

INSERT INTO AirplaneFlight (PlaneID, FlightNum) 

VALUES 

(1100000, 700000), 

(1100001, 700001), 

(1100002, 700002), 

(1100002, 700003), 

(1100004, 700004), 

(1100000, 700005), 

(1100003, 700006);