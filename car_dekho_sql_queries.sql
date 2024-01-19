create schema cars ;

-- READ DATA 

select * from car_dekho;

-- TOTAL CARS : TO GET A COUNT OF TOTAL RECORDS

select count(*) from car_dekho;

-- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS IS AVAILABLE IN 2023 

select count(*) from car_dekho
where year = 2023;

-- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS IS AVAILABLE IN 2020,2021,2023

select count(*) from car_dekho
where year in (2020,2021,2022);

-- CLIENT ASKED THE EMPLOYEE TO PRINT THE TOTAL NUMBER OF CARS BY YEAR. I DONT WANT TO SEE ALL THE DETAILS

select year, count(*) as no_of_cars from car_dekho group by year
order by year desc; 

-- HOW MANY DIESEL CARS ARE THERE IN 2020 ?

select year, count(*) as Diesel_Cars from car_dekho
where fuel = 'Diesel' and year = 2020;

-- HOW MANY PETROL CARS ARE THERE IN 2020 ?

select year, count(*) as Diesel_Cars from car_dekho
where fuel = 'Petrol' and year = 2020;

-- THE MANAGER TOLD THE EMPLOYEE TO PRINT ALL THE FUEL CARS(PETROL) OF YEAR 2020 ..

select name, count(*) as no_of_cars from car_dekho where fuel ='Petrol' and year =2020
group by name
order by no_of_cars desc  ;

-- MANAGER SAID THERE WERE MORE THAN 100 CARS IN A GIVEN YEAR, WHICH YEAR HAD MORE THAN 100 CARS ?


select year, count(*) as no_of_cars from car_dekho 
group by year having no_of_cars > 100
order by no_of_cars asc ;


-- THE MANAGER SAID TO THE EMPLPOYEE , ALL CARS COUNT DETAILS BETWEEN 2015 & 2023 

select year, count(*) as no_of_cars from car_dekho 
where year between 2015 and 2023
group by year 
order by no_of_cars desc ;

-- THE MANAGER SAID TO THE EMPLPOYEE , ALL AUTOMATIC CAR DETAILS BETWEEN 2015 TO 2023 ; WE NEED A COMPLETE LIST..


select * from car_dekho where year between 2015 and 2023
and transmission= 'Automatic' ;





