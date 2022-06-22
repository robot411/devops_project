-- CREATE TABLES

DROP TABLE IF EXISTS expenses;

CREATE TABLE expenses (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    name TEXT NOT NULL,
    amount NUMERIC NOT NULL,
    category_id INT NOT NULL FOREIGN KEY REFERENCES categories(category_id),
    payment_id INT NOT NULL FOREIGN KEY REFERENCES payments(payment_id)
);

DROP TABLE IF EXISTS payments;

CREATE TABLE payments (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL UNIQUE
);

DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);


-- INSERT DATA

INSERT INTO categories (name)
VALUES ('Grocery'), ('Utility'), ('Subscription'), ('Miscellaneous'), ('Car'), ('Medical'), ('Dining'), ('Travelling');

INSERT INTO payments (name)
VALUES ('Cash'), ('Chase 0585'), ('Chase 6194'), ('Amex 1001'), ('Amex 2005'), ('Discover 5384');

INSERT INTO expenses (date, name, amount, category_id, payment_id)
VALUES ('2022-04-02', 'SoCal Edison', 350.63, 2, 2),
('2022-04-02', 'SoCal Gas', 58.42, 2, 2),
('2022-04-02', 'American Water', 108.22, 2, 2),
('2022-04-02', 'Athens', 80.11, 2, 2),
('2022-04-02', 'Spectrum', 124.99, 2, 2),
('2022-04-05', 'Netflix', 17.99, 3, 4),
('2022-04-06', 'Whole Foods', 138.74, 1, 3),
('2022-04-06', 'Jollibee', 56.36, 7, 3),
('2022-04-09', 'AMC Theater', 52.32, 4, 6),
('2022-04-09', 'Benihana', 231.65, 7, 6),
('2022-04-11', 'Car Fuel', 102.11, 5, 3),
('2022-04-13', 'Whole Foods', 285.4, 1, 2),
('2022-04-18', 'Takami', 200, 7, 5),
('2022-04-25', 'Car Fuel', 102.11, 5, 3),
('2022-04-25', 'Macys', 286.65, 4, 6),
('2022-05-02', 'SoCal Edison', 250.53, 2, 2),
('2022-05-02', 'SoCal Gas', 9.02, 2, 2),
('2022-05-02', 'American Water', 127.78, 2, 2),
('2022-05-02', 'Athens', 84.88, 2, 2),
('2022-05-02', 'Spectrum', 79.99, 2, 2),
('2022-05-05', 'Netflix', 17.99, 3, 4),
('2022-05-06', 'Whole Foods', 127.60, 1, 3),
('2022-05-06', 'SBarro', 56.36, 7, 3),
('2022-05-08', 'Target', 52.32, 4, 6),
('2022-05-09', 'Sky Park', 231.65, 7, 6),
('2022-05-09', 'Car Fuel', 91.60, 5, 3),
('2022-05-13', 'Whole Foods', 9160.87, 1, 2),
('2022-05-18', 'Buca Di Beppo', 200, 7, 5),
('2022-05-25', 'Car Fuel', 102.11, 5, 3),
('2022-05-25', 'Nordstrom', 286.65, 4, 6),
('2022-06-02', 'SoCal Edison', 250.53, 2, 2),
('2022-06-02', 'SoCal Gas', 9.02, 2, 2),
('2022-06-02', 'American Water', 127.78, 2, 2),
('2022-06-02', 'Athens', 84.88, 2, 2),
('2022-06-02', 'Spectrum', 79.99, 2, 2),
('2022-06-05', 'Netflix', 17.99, 3, 4),
('2022-06-06', 'Whole Foods', 127.60, 1, 3),
('2022-06-11', 'Jollibee', 56.36, 7, 3),
('2022-06-11', 'Hello Kitty Store', 52.32, 4, 6),
('2022-06-12', 'Flemings Steakhouse', 231.65, 7, 6),
('2022-06-12', 'Car Fuel', 91.60, 5, 3),
('2022-06-13', 'Whole Foods', 9160.87, 1, 2),
('2022-06-13', 'Buca Di Beppo', 200, 7, 5),
('2022-06-15', 'Car Fuel', 102.11, 5, 3),
('2022-06-15', 'Nordstrom', 286.65, 4, 6);