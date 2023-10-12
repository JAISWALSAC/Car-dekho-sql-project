create schema cars;
use cars;
-- read data --
select*from car_dekho;
-- total cars to get count of total recordds --
select count(*) from car_dekho;
-- the manager asked employee how many cars will be availabe in 2023--
select count(*) from car_dekho where year =2023;
-- the manager asked employee how many cars will be availabe in 2020,2021,2022 --
select count(*) from car_dekho where year= 2020;
select count(*) from car_dekho where year= 2021;
select count(*) from car_dekho where year= 2022;
-- group by --
select count(*) from car_dekho where year in(2020,2021,2022) group by year;
-- client asked me to print total of all cars by year . i dont see all the detaisl --
select year, count(*) from car_dekho group by year;
-- client asked to car dealer agent how many  diesel car will there be in 2020? --
select count(*) from car_dekho where year=2020 and fuel="Diesel";
-- client requsted a car dealer agent how many petrol car will be there in 2020? --
select count(*) from car_dekho where year=2020 and fuel="Petrol" ;#51

-- the manager told the employee to give a print all fuel cars (petrol, diesel, and cng) come by all year --
select  year ,count(*) from car_dekho where fuel ="Petrol" group by year;
select  year ,count(*) from car_dekho where fuel ="Diesel" group by year;
select  year ,count(*) from car_dekho where fuel ="CNG" group by year;
-- manager  said there were  more than 100 cars in a given year which year had more than 100 cars? --
select  year ,count(*) from car_dekho group by year having count(*)>100;

-- the manager said to the employee all cars  count details between 2015 and 2023 we need a complete list --
select count(*) from car_dekho where year between 2015 and 2023;
-- the manager said to the employee all cars details between 2015 and 2023 we need a complete list --
select * from car_dekho  where year between 2015 and 2023;  
 

