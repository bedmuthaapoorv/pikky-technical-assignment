\c foodDB;
CREATE TABLE Food (
    FoodID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    Price NUMERIC(10, 2) NOT NULL,
    Stock INT NOT NULL
);
CREATE TABLE Location (
    LocationID SERIAL PRIMARY KEY,
    Country VARCHAR(255) NOT NULL,
    City VARCHAR(255) NOT NULL
);
CREATE TABLE Food_Location_Mapping (
    MappingID SERIAL PRIMARY KEY,
    FoodID INT NOT NULL,
    LocationID INT NOT NULL,
    FOREIGN KEY (FoodID) REFERENCES Food(FoodID),
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);
CREATE TABLE NutritionalValue (
    FoodID INT NOT NULL,
    Serving VARCHAR(255) NOT NULL,
    Calories INT NOT NULL,
    PRIMARY KEY (FoodID),
    FOREIGN KEY (FoodID) REFERENCES Food(FoodID)
);
INSERT INTO Food (Name, Description, Price, Stock) VALUES
('Apple', 'Fresh red apples', 1.50, 100),
('Banana', 'Ripe yellow bananas', 0.50, 150),
('Carrot', 'Organic carrots', 2.00, 80),
('Broccoli', 'Fresh green broccoli', 1.80, 70),
('Chicken Breast', 'Lean chicken breast', 5.00, 50),
('Almonds', 'Raw almonds', 10.00, 200),
('Milk', 'Whole milk', 3.00, 120),
('Orange', 'Juicy oranges', 0.70, 110),
('Tomato', 'Fresh tomatoes', 1.20, 90),
('Spinach', 'Fresh spinach leaves', 2.50, 60),
('Rice', 'Long grain white rice', 0.80, 300),
('Beef', 'Ground beef', 6.50, 40),
('Potato', 'Fresh potatoes', 1.00, 200),
('Yogurt', 'Plain yogurt', 2.00, 130),
('Bread', 'Whole wheat bread', 2.20, 100);
INSERT INTO Location (Country, City) VALUES
('USA', 'New York'),
('Canada', 'Toronto'),
('UK', 'London'),
('Germany', 'Berlin'),
('France', 'Paris'),
('Australia', 'Sydney'),
('India', 'Mumbai'),
('Japan', 'Tokyo'),
('Brazil', 'Sao Paulo'),
('South Africa', 'Cape Town');
INSERT INTO Food_Location_Mapping (FoodID, LocationID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 1),
(11, 2),
(12, 3),
(13, 4),
(14, 5),
(15, 6);
INSERT INTO NutritionalValue (FoodID, Serving, Calories) VALUES
(1, '100g', 52),
(2, '100g', 89),
(3, '100g', 41),
(4, '100g', 55),
(5, '100g', 165),
(6, '100g', 576),
(7, '100ml', 42),
(8, '100g', 47),
(9, '100g', 18),
(10, '100g', 23),
(11, '100g', 130),
(12, '100g', 250),
(13, '100g', 77),
(14, '100g', 59),
(15, '100g', 246);
