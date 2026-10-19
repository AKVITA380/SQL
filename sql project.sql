
-- 3. SQL Basics — 15 practice questions
CREATE DATABASE RealEstateDB;

use RealEstateDB;

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    developer_name VARCHAR(100),
    city VARCHAR(50),
    locality VARCHAR(100),
    property_type VARCHAR(50),
    configuration VARCHAR(30),
    min_price DECIMAL(15,2),
    max_price DECIMAL(15,2),
    area_sqft INT,
    project_status VARCHAR(30),
    possession_date DATE,
    rera_number VARCHAR(50),
    data_source VARCHAR(50)
);

USE RealEstateDB;

INSERT INTO projects (
    project_id,
    project_name,
    developer_name,
    city,
    locality,
    property_type,
    configuration,
    min_price,
    max_price,
    area_sqft,
    project_status,
    possession_date,
    rera_number,
    data_source
);
insert into projects 
values
(1, 'Green Valley', 'ABC Developers', 'Pune', 'Baner', 'Apartment', '2 BHK', 5500000, 8500000, 1100, 'Under Construction', '2027-06-30', 'P52100010001', '99acres'),

(2, 'Sky Heights', 'XYZ Builders', 'Pune', 'Wakad', 'Apartment', '3 BHK', 7500000, 12000000, 1450, 'Active', '2027-12-31', 'P52100010002', 'MagicBricks'),

(3, 'Sunshine Residency', 'Sunrise Group', 'Pune', 'Hinjewadi', 'Apartment', '2 BHK', 4500000, 7000000, 950, 'Ready to Move', '2025-03-31', 'P52100010003', 'Housing.com'),

(4, 'Royal Enclave', 'Royal Developers', 'Pune', 'Kharadi', 'Villa', '4 BHK', 15000000, 25000000, 2800, 'Under Construction', '2028-06-30', 'P52100010004', '99acres'),

(5, 'Lake View Towers', 'ABC Developers', 'Pune', 'Hadapsar', 'Apartment', '2 BHK', 5000000, 8000000, 1050, 'Active', '2027-09-30', 'P52100010005', 'MagicBricks'),

(6, 'Palm Meadows', 'Green Builders', 'Bangalore', 'Whitefield', 'Villa', '3 BHK', 12000000, 18000000, 2000, 'Under Construction', '2028-03-31', 'PRM000000001', '99acres'),

(7, 'Tech Park Residency', 'Tech Developers', 'Bangalore', 'Electronic City', 'Apartment', '2 BHK', 6000000, 9000000, 1150, 'Active', '2027-11-30', 'PRM000000002', 'Housing.com'),

(8, 'Golden Square', 'Sunrise Group', 'Bangalore', 'Sarjapur Road', 'Apartment', '3 BHK', 8500000, 13000000, 1500, 'Completed', '2025-06-30', 'PRM000000003', 'MagicBricks'),

(9, 'Urban Nest', 'XYZ Builders', 'Bangalore', 'Hebbal', 'Apartment', '2 BHK', 7000000, 10000000, 1200, 'Under Construction', '2028-12-31', 'PRM000000004', '99acres'),

(10, 'Orchid Gardens', 'Green Builders', 'Bangalore', 'Yelahanka', 'Villa', '4 BHK', 16000000, 24000000, 3000, 'Active', '2029-03-31', 'PRM000000005', 'Housing.com'),

(11, 'Silver Springs', 'Royal Developers', 'Gurugram', 'Sector 65', 'Apartment', '3 BHK', 11000000, 17000000, 1800, 'Under Construction', '2028-06-30', 'HRERA000001', '99acres'),

(12, 'City Centre Homes', 'ABC Developers', 'Gurugram', 'Sector 56', 'Apartment', '2 BHK', 8000000, 12000000, 1300, 'Active', '2027-10-31', 'HRERA000002', 'MagicBricks'),

(13, 'Luxury Heights', 'Luxury Group', 'Gurugram', 'Golf Course Road', 'Villa', '4 BHK', 25000000, 40000000, 3500, 'Under Construction', '2029-06-30', 'HRERA000003', 'Housing.com'),

(14, 'Metro Residency', 'Tech Developers', 'Gurugram', 'Sector 48', 'Apartment', '2 BHK', 6500000, 9500000, 1100, 'Completed', '2025-09-30', 'HRERA000004', '99acres'),

(15, 'Palm Court', 'Sunrise Group', 'Gurugram', 'Sector  Gurgaon', 'Apartment', '3 BHK', 9000000, 14000000, 1600, 'Active', '2028-03-31', 'HRERA000005', 'MagicBricks'),

(16, 'Riverfront Residency', 'River Developers', 'Mumbai', 'Thane', 'Apartment', '2 BHK', 9000000, 14000000, 1000, 'Active', '2027-08-31', 'P51700010001', 'Housing.com'),

(17, 'Hill View Estate', 'Green Builders', 'Mumbai', 'Powai', 'Apartment', '3 BHK', 18000000, 28000000, 1600, 'Under Construction', '2029-03-31', 'P51700010002', '99acres'),

(18, 'Dream City', 'XYZ Builders', 'Delhi', 'Dwarka', 'Apartment', '2 BHK', 7500000, 11000000, 1250, 'Completed', '2025-12-31', 'DDA000001', 'MagicBricks'),

(19, 'Modern Paradise', 'Royal Developers', 'Noida', 'Sector 150', 'Apartment', '3 BHK', 8500000, 13500000, 1550, 'Under Construction', '2028-09-30', 'UPRERAPRJ000001', '99acres'),

(20, 'Elite Residency', 'Luxury Group', 'Indore', 'Vijay Nagar', 'Apartment', '2 BHK', 4000000, 6500000, 1000, 'Active', '2027-05-31', 'MP1234567890', 'Housing.com');

-- 1. Display all records from the projects table.

select * from projects;

-- 2. Display only project_name and city.
select project_name,city from projects;

-- 3. Display unique city names.
select distinct(city) from projects;

-- 4. Display unique developer names.
select distinct(developer_name)from projects;
-- 5. Show the first 10 projects.
select * from projects
limit 10;

-- 6. Display project names with the alias Project.

select project_name as Project 
from projects;

-- 7. Display city names with the alias Location.

select city as Location from projects;

-- 8. Show projects where city is Pune.

select * from projects
where city='Pune';

-- 9. Show projects where project_status is Ready to Move.
select * from projects
where project_status = 'Ready to Move';

-- 10. Show projects where property_type is Apartment.
select * from projects
where property_type='Apartment';

-- 11. Display projects ordered by project_name alphabetically.
select * from projects
order by  project_name asc;

-- 12. Display projects ordered by min_price from lowest to highest.
select * from projects
order by min_price asc;

-- 3. Display projects ordered by max_price from highest to lowest.
select * from projects
order by min_price desc;

-- 14. Display the 5 most expensive projects by max_price.
select * from projects
order by max_price DESC
limit 5;

-- 15. Display the 10 most recently possessing projects using possession_date.
select * from projects
order by possession_date desc
limit 10;