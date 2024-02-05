CREATE TABLE cars (
    car_id SERIAL PRIMARY KEY,
    vin_number VARCHAR(17) UNIQUE, 
    cust_id INT,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50), 
    address VARCHAR(50),
    phone VARCHAR(10)
);

CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);


CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    car_id INT,
    salesperson_id INT,
    customer_id INT,
    date DATE, 
    amount NUMERIC(5,2), 
    FOREIGN KEY(car_id) REFERENCES cars(car_id),    
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)  
);

CREATE TABLE service_tickets (
    service_id SERIAL PRIMARY KEY,
    car_id INT, 
    date DATE,
    amount FLOAT,
    service_desc VARCHAR(500)
);


CREATE TABLE mechanics (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE mechanics_service (
    mechanic_id INT,
    service_id INT,
    FOREIGN KEY(mechanic_id) REFERENCES mechanics(mechanic_id),    
    FOREIGN KEY(service_id) REFERENCES service_tickets(service_id) 
);

 
 drop table if EXISTS customers