

-- CREATE TABLE cars (
--     car_id SERIAL PRIMARY KEY,
--     vin_number VARCHAR(17) UNIQUE, 
--     cust_id INT,
--     make VARCHAR(50),
--     model VARCHAR(50),
--     year INT
-- -- );

    INSERT INTO cars (
        vin_number,
        cust_id,
        make,
        model,
        year
    )VALUES(
        '1',
        1,
        'KIA',
        'SOUL',
        2022
    ),(
        '11',
        1,
        'KIA',
        'SORENTO',
        2023
    ),(
        '111',
        1,
        'FORD',
        'EXPLORER',
        2020
    ),(
        '1111',
        1,
        'FORD',
        'FIESTA',
        2022
    ),(
        '111111',
        1,
        'HONDA',
        'CIVIC',
        2022
    );





-- CREATE TABLE car_details (
--     car_id INT,
--     vin_number VARCHAR(17) UNIQUE, 
--     color VARCHAR(10),
--      type_new/used/service VARCHAR(10),
--      mileage INT
-- -- );






-- CREATE TABLE customer (
--     cusotmer_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50), 
--     address VARCHAR(50),
--     phone INT
-- );


INSERT INTO customers (
    first_name,
    last_name,
    address,
    phone
)VALUES(
    'Sai',
     'R',
     'North Burnswick, NJ',
     '7321116789'

),(
    'Nava',
    'Pandey',
    'North Burnswick, NJ',
    '7322916449'
),(
    'Matt',
    'Cruz',
     'East Burnswick, NJ',
     '7322915400'
),(
    'Vivan',
    'Oli',
   'South Burnswick, NJ',
   '7322912090'
),(
    'Josh',
    'Cooper',
     'North Burnswick, NJ',
     '7322916677'
),(
    'Alaya',
    'Gurung',
    'East Burnswick, NJ',
    '7329096490'
)

select * from customers; 


-- CREATE TABLE sales_person (
--     salesperson_id SERIAL,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50)
-- );

INSERT INTO salesperson (
    first_name,
    last_name
)VALUES(
    'Sai',
     'R'
),(
    'Liza',
    'Rai'
),(
    'Richa',
    'Nepal'
),(
    'Vivian',
    'Richards'
),(
    'Joshua',
    'Cooper'
),(
    'Sarah',
    'Sobo'
);

select * from sales_person; 

-- CREATE TABLE invoice (
--     invoice_id SERIAL PRIMARY KEY,
--     car_id INT,
--     salesperson_id INT,
--     customer_id INT,
--     date DATE, 
--     amount NUMERIC(5,2), 
--     FOREIGN KEY(car_id) REFERENCES cars(car_id),    
--     FOREIGN KEY(salesperson_id) REFERENCES sales_person(salesperson_id),
--     FOREIGN KEY(customer_id) REFERENCES customer(customer_id)  
-- );









-- CREATE TABLE service_tickets (
--     service_id SERIAL PRIMARY KEY,
--     car_id INT, 
--     date DATE,
--     amount FLOAT,
--     service_desc VARCHAR(500)
-- );

INSERT INTO service_tickets (
    car_id,
    date,
    amount,
    service_desc
)VALUES(
    4, 
    '2024-01-01',
    125.50,
    'Tire Chanage'
),(
    5, 
    '2024-01-01',
    27.50,
    'Diagnose Problem'  
),(
    1, 
    '2024-01-01',
    0.0,
    'Regular Servicing and Wash'  
); 






-- CREATE TABLE mechanics (
--     mechanic_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50)
-- );

INSERT INTO mechanics (
    first_name,
    last_name
)VALUES(
    'Richard',
    'Larson'
),(
    'Ian',
    'Richards'
),(
    'Carlos',
    'Anthony'
);

-- CREATE TABLE mechanics_service (
--     mechanic_id INT,
--     service_id INT,
--     FOREIGN KEY(mechanic_id) REFERENCES mechanics(mechanic_id),    
--     FOREIGN KEY(service_id) REFERENCES service_tickets(service_id) 
-- );

INSERT INTO mechanics_service (
    mechanic_id,
    service_id
)VALUES (
    1,
    1
),(
    1,
    3
),(
    2,
    1
),(
    2,
    3
),(
    1,
    2
),(
    2,
    1
);
