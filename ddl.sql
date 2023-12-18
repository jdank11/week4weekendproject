CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
)

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER,
    car_id INTEGER,
    price NUMERIC,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
)
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50)
)
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    make VARCHAR(50),
    year INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

ALTER TABLE invoice
ADD FOREIGN KEY (car_id) REFERENCES car(car_id)

CREATE TABLE service(
    ticket_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    date TIMESTAMP,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
)

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES service(ticket_id)
)






