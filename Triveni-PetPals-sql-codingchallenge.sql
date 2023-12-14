--1.Provide a SQL script that initializes the database for the Pet Adoption Platform ”PetPals”.
CREATE DATABASE PetPals;
USE PetPals;
--2.Create tables for pets, shelters, donations, adoption events, and participants. 
--3.Define appropriate primary keys, foreign keys, and constraints. 
CREATE TABLE  Pets (
    PetID INT PRIMARY KEY,
    Name VARCHAR(255),
    Age INT,
    Breed VARCHAR(255),
    Type VARCHAR(255),
    AvailableForAdoption BIT
);

CREATE TABLE Shelters (
    ShelterID INT PRIMARY KEY,
    ShelterName VARCHAR(255),
    ShelterLocation VARCHAR(255)
);

CREATE TABLE Donations (
    DonationID INT PRIMARY KEY,
    DonorName VARCHAR(255),
    DonationType VARCHAR(255),
    DonationAmount DECIMAL,
    DonationItem VARCHAR(255),
    DonationDate DATETIME
);

CREATE TABLE AdoptionEvents (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(255),
    EventDate DATETIME,
    EventLocation VARCHAR(255)
);

CREATE TABLE Participants (
    ParticipantID INT PRIMARY KEY,
    ParticipantName VARCHAR(255),
    ParticipantType VARCHAR(255),
    EventID INT,
    FOREIGN KEY (EventID) REFERENCES AdoptionEvents(EventID)
);



-- Insert 10 entries into Pets table
INSERT INTO Pets (PetID, Name, Age, Breed, Type, AvailableForAdoption)
VALUES
    (1, 'puppy', 2, 'Labrador', 'Dog', 1),
    (2, 'Misty', 1, 'Persian', 'Cat', 1),
    (3, 'julie', 3, 'German Shepherd', 'Dog', 0),
    (4, 'Cherry', 1, 'Pomeranian', 'Dog', 1),
    (5, 'Whiskers', 2, 'Siamese', 'Cat', 1),
    (6, 'Tommy', 4, 'Beagle', 'Dog', 1),
    (7, 'Coco', 1, 'Dachshund', 'Dog', 0),
    (8, 'Milo', 2, 'Ragdoll', 'Cat', 1),
    (9, 'Bella', 1, 'Golden Retriever', 'Dog', 1),
    (10, 'Luna', 3, 'Maine Coon', 'Cat', 1);

-- Insert 10 entries into Shelters table
INSERT INTO Shelters (ShelterID, ShelterName, ShelterLocation)
VALUES
    (1, 'Paws Haven', 'Mumbai'),
    (2, 'Hearts Shelter', 'Guntur'),
    (3, 'Whisker Haven', 'Bangalore'),
    (4, 'Rainbow Shelter', 'Chennai'),
    (5, 'Hopeful Paws', 'vizag'),
    (6, 'Furry Friends Shelter', 'Hyderabad'),
    (7, 'Pet Paradise', 'Pune'),
    (8, 'Joyful Tails', 'Ahmedabad'),
    (9, 'Caring Souls Shelter', 'Jaipur, '),
    (10, 'Sunshine Shelter', 'Lucknow');

-- Insert 10 entries into Donations table
INSERT INTO Donations (DonationID, DonorName, DonationType, DonationAmount, DonationItem, DonationDate)
VALUES
    (1, 'Triveni', 'Cash', 100.00, NULL, '2023-01-15 10:30:00'),
    (2, 'Lavanya', 'Item', NULL, 'Pet Food', '2023-02-02 15:45:00'),
    (3, 'Ramya', 'Cash', 150.00, NULL, '2023-03-10 08:20:00'),
    (4, 'Bhumika', 'Item', NULL, 'Pet Toys', '2023-04-05 12:10:00'),
    (5, 'Muskan', 'Cash', 175.00, NULL, '2023-05-20 14:55:00'),
    (6, 'Poojitha', 'Item', NULL, 'Pet Bed', '2023-06-18 09:30:00'),
    (7, 'Arjun', 'Cash', 150.00, NULL, '2023-07-03 11:40:00'),
    (8, 'Priya', 'Item', NULL, 'Cat Litter', '2023-08-22 16:15:00'),
    (9, 'Rohansai', 'Cash', 190.00, NULL, '2023-09-14 13:25:00'),
    (10, 'Sneha', 'Item', NULL, 'Dog Leash', '2023-10-30 07:50:00');

-- Insert 10 entries into AdoptionEvents table
INSERT INTO AdoptionEvents (EventID, EventName, EventDate, EventLocation)
VALUES
    (1, 'PetPal Adoption Day', '2023-01-25 11:00:00', 'Paws Haven, Mumbai'),
    (2, 'Furry Friends Fair', '2023-03-15 14:30:00', 'Hyderabad Pet Park'),
    (3, 'Adopt-a-Pet Carnival', '2023-05-05 12:00:00', 'Hopeful Paws Shelter, Kolkata'),
    (4, 'Whisker Wonderland', '2023-07-10 10:00:00', 'Whisker Haven, Bangalore'),
    (5, 'Joyful Tails Adoption Fest', '2023-09-02 15:00:00', 'Joyful Tails Shelter, Ahmedabad'),
    (6, 'Paws for Love', '2023-10-18 13:45:00', 'Pet Paradise, Pune'),
    (7, 'Sunshine Pet Expo', '2023-12-01 09:30:00', 'Sunshine Shelter, Lucknow'),
    (8, 'Hearts Shelter Adoption Drive', '2024-02-08 11:20:00', 'Hearts Shelter, Delhi'),
    (9, 'Caring Souls Pet Affair', '2024-04-03 16:00:00', 'Caring Souls Shelter, Jaipur'),
    (10, 'Rainbow Adoption Event', '2024-06-22 10:45:00', 'Rainbow Shelter, Chennai');

-- Insert 10 entries into Participants table
INSERT INTO Participants (ParticipantID, ParticipantName, ParticipantType, EventID)
VALUES
    (1, 'Paws Haven', 'Shelter', 1),
    (2, 'Deepak Patel', 'Adopter', 1),
    (3, 'Hearts Shelter', 'Shelter', 2),
    (4, 'Neha Singh', 'Adopter', 2),
    (5, 'Whisker Haven', 'Shelter', 3),
    (6, 'Raj Kumar', 'Adopter', 3),
    (7, 'Rainbow Shelter', 'Shelter', 4),
    (8, 'Pooja Mehta', 'Adopter', 4),
    (9, 'Hopeful Paws', 'Shelter', 5),
    (10, 'Amit Sharma', 'Adopter', 5);



--5.Write an SQL query that retrieves a list of available pets (those marked as available for adoption) 
--from the "Pets" table. Include the pet's name, age, breed, and type in the result set. Ensure that 
--the query filters out pets that are not available for adoption.


SELECT Name, Age, Breed, Type
FROM Pets
WHERE AvailableForAdoption = 1;

--6. Write an SQL query that retrieves the names of participants (shelters and adopters) registered 
--for a specific adoption event. Use a parameter to specify the event ID. Ensure that the query 
--joins the necessary tables to retrieve the participant names and types


-- Assuming @EventID is the parameter for the specific event ID
DECLARE @EventID INT = 3;

SELECT Participants.ParticipantName, Participants.ParticipantType
FROM Participants
JOIN AdoptionEvents ON Participants.EventID = AdoptionEvents.EventID
WHERE AdoptionEvents.EventID = @EventID;

--7.Create a stored procedure in SQL that allows a shelter to update its information (name and 
--location) in the "Shelters" table. Use parameters to pass the shelter ID and the new information. 
--Ensure that the procedure performs the update and handles potential errors, such as an invalid shelter ID
CREATE PROCEDURE UpdateShelterInformation
        @ShelterID INT,
        @NewName VARCHAR(255),
        @NewLocation VARCHAR(255)
    AS
    BEGIN
        UPDATE Shelters
        SET ShelterName = @NewName, ShelterLocation = @NewLocation
        WHERE ShelterID = @ShelterID;
    END;
	select *from Shelters;
EXEC UpdateShelterInformation @ShelterID = 4, @NewName = 'SoulShine', @NewLocation = 'Kolkata';
select *from Shelters;


--8 Write an SQL query that calculates and retrieves the total donation amount for each shelter (by 
--shelter name) from the "Donations" table. The result should include the shelter name and the 
--total donation amount. Ensure that the query handles cases where a shelter has received no donations
alter table Donations add ShelterID int foreign key references Shelters(ShelterID);
update Donations set ShelterID = 1 where DonationID = 1;
update Donations set ShelterID = 2 where DonationID = 2;
update Donations set ShelterID = 3 where DonationID = 3;
update Donations set ShelterID = 4 where DonationID = 4;
update Donations set ShelterID = 5 where DonationID = 5;
update Donations set ShelterID = 5 where DonationID = 6;
update Donations set ShelterID = 7 where DonationID = 7;
update Donations set ShelterID = 8 where DonationID = 8;
update Donations set ShelterID = 10 where DonationID = 9;
update Donations set ShelterID = 10 where DonationID = 10;
select S.Name as [Shelter Name], coalesce(sum(D.DonationAmount), 0) as [Total Donation Amount]
from Shelters S 
left join Donations D on S.ShelterID=D.ShelterID 
group by S.ShelterID, S.Name;


--9. Write an SQL query that retrieves the names of pets from the "Pets" table that do not have an 
--owner (i.e., where "OwnerID" is null). Include the pet's name, age, breed, and type in the result set
-- Add OwnerID column to the Pets table

ALTER TABLE Pets
ADD OwnerID INT NULL; 

UPDATE Pets SET OwnerID =101 WHERE PetID=1;
UPDATE Pets SET OwnerID =NULL WHERE PetID=2;
UPDATE Pets SET OwnerID =102 WHERE PetID=3;
UPDATE Pets SET OwnerID =NULL WHERE PetID=4;
UPDATE Pets SET OwnerID =103 WHERE PetID=5;
UPDATE Pets SET OwnerID =104 WHERE PetID=6;
UPDATE Pets SET OwnerID =NULL WHERE PetID=7;
UPDATE Pets SET OwnerID =105 WHERE PetID=8;
UPDATE Pets SET OwnerID =106 WHERE PetID=9;
UPDATE Pets SET OwnerID =NULl WHERE PetID=10;
select *from Pets;

SELECT
    Name,
    Age,
    Breed,
    Type
FROM
    Pets
WHERE
    OwnerID IS NULL;
	

	

--10-Write an SQL query that retrieves the total donation amount for each month and year (e.g., 
--January 2023) from the "Donations" table. The result should include the month-year and the 
--corresponding total donation amount. Ensure that the query handles cases where no donations 
--were made in a specific month-year.
SELECT
    FORMAT(DonationDate, 'MMMM yyyy') AS MonthYear,
    COALESCE(SUM(DonationAmount), 0) AS TotalDonationAmount
FROM
    Donations
GROUP BY
    FORMAT(DonationDate, 'MMMM yyyy');

--11. Retrieve a list of distinct breeds for all pets that are either aged between 1 and 3 years or older than 5 years.

SELECT DISTINCT Breed,Age
FROM Pets
WHERE (Age BETWEEN 1 AND 3) OR (Age > 5);


--12. Retrieve a list of pets and their respective shelters where the pets are currently available for 
--adoption.
alter table Pets add ShelterID int foreign key references Shelters(ShelterID);
update Pets set ShelterID = 1 where PetID = 1;
update Pets set ShelterID = 2 where PetID = 2;
update Pets set ShelterID = 1 where PetID = 3;
update Pets set ShelterID = 4 where PetID = 4;
update Pets set ShelterID = 5 where PetID = 5;
update Pets set ShelterID = 5 where PetID = 6;
update Pets set ShelterID = 7 where PetID = 7;
update Pets set ShelterID = 8 where PetID = 8;
update Pets set ShelterID = 10 where PetID = 9;
update Pets set ShelterID = 10 where PetID = 10;
select P.Name as [Pet Name], S.Name as [Shelter Name] 
from Pets P 
left join Shelters S on P.ShelterID = S.ShelterID 
where P.AvailableForAdoption = 1;

--13.Find the total number of participants in events organized by shelters located in specific city

SELECT
    COUNT(DISTINCT P.ParticipantID) AS TotalParticipants
FROM
    Participants P
JOIN
    AdoptionEvents AE ON P.EventID = AE.EventID
JOIN
    Shelters S ON AE.EventLocation = S.ShelterLocation
WHERE
    P.ParticipantType = 'Shelter'
    AND S.ShelterLocation = 'Mumbai';

--14. Retrieve a list of unique breeds for pets with ages between 1 and 5 years
SELECT DISTINCT Breed,Age
FROM Pets
WHERE Age BETWEEN 1 AND 5;

 --15.Find the pets that have not been adopted by selecting their information from the 'Pet' tabl
 SELECT *
FROM Pets
WHERE AvailableForAdoption = 1;

--16.Retrieve the names of all adopted pets along with the adopter's name from the 'Adoption' and User' tables.


-- Create User table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(255)
);

-- Create Adoption table
CREATE TABLE Adoptions (
    AdoptionID INT PRIMARY KEY,
    PetID INT,
    AdopterID INT,
    AdoptionDate DATETIME,
    FOREIGN KEY (PetID) REFERENCES Pets(PetID),
    FOREIGN KEY (AdopterID) REFERENCES Users(UserID)
);
INSERT INTO Users (UserID, UserName) VALUES
(1, 'John'),
(2, 'Jane');
INSERT INTO Adoptions (AdoptionID, PetID, AdopterID, AdoptionDate) VALUES
(1, 1, 1, '2023-01-10'),
(2, 2, 2, '2023-02-15');

-- Retrieve names of adopted pets and adopters
SELECT P.Name AS PetName, P.Breed, U.UserName AS AdopterName
FROM Pets P
JOIN Adoptions A ON P.PetID = A.PetID
JOIN Users U ON A.AdopterID = U.UserID;



--17.Retrieve a list of all shelters along with the count of pets currently available for adoption in each 
--shelter.

SELECT
    S.ShelterID,
    S.ShelterName,
    COUNT(P.PetID) AS AvailablePetsCount
FROM
    Shelters S
LEFT JOIN
    Pets P ON S.ShelterID = P.PetID
WHERE
    P.AvailableForAdoption = 1 
GROUP BY
    S.ShelterID, S.ShelterName;


-- 18.Find pairs of pets from the same shelter that have the same breed.

alter table Pets add ShelterID int foreign key references Shelters(ShelterID);

update Pets set ShelterID = 1 where PetID = 1;
update Pets set ShelterID = 2 where PetID = 2;
update Pets set ShelterID = 2 where PetID = 3;
update Pets set ShelterID = 4 where PetID = 4;
update Pets set ShelterID = 5 where PetID = 5;
update Pets set ShelterID = 5 where PetID = 6;
update Pets set ShelterID = 7 where PetID = 7;
update Pets set ShelterID = 8 where PetID = 8;
update Pets set ShelterID = 10 where PetID = 9;
update Pets set ShelterID = 10 where PetID = 10;

UPDATE Pets
SET Breed = 'Golden Retriever'
WHERE ShelterID = 10;




select P1.PetID, P1.Name, P1.Breed, P1.ShelterID from Shelters S 
join Pets P1 on S.ShelterID = P1.ShelterID 
join Pets P2 on P1.Breed = P2.Breed and P1.PetID <> P2.PetID;




--19. List all possible combinations of shelters and adoption events
SELECT
    S.ShelterID,
    S.ShelterName,
    AE.EventID,
    AE.EventName,
    AE.EventDate,
    AE.EventLocation
FROM
    Shelters S
CROSS JOIN
    AdoptionEvents AE;

	

--20.Determine the shelter that has the highest number of adopted pets
select top 1 ShelterID, count(PetID) as [Pets] from Pets
group by ShelterID order by [Pets] desc;



