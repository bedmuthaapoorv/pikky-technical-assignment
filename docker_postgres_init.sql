\c foodDB;
CREATE TABLE Food (
    FoodID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL
);
CREATE TABLE Food_Location_Mapping (
    MappingID SERIAL PRIMARY KEY,
    FoodID INT NOT NULL,
    LocationID INT NOT NULL,
    FOREIGN KEY (FoodID) REFERENCES Food(FoodID) ON DELETE CASCADE
);
CREATE TABLE NutritionalValue (
    FoodID INT PRIMARY KEY,
    Serving VARCHAR(50) NOT NULL,
    Calories INT NOT NULL,
    FOREIGN KEY (FoodID) REFERENCES Food(FoodID) ON DELETE CASCADE
);
-- Inserting mock data into the Food table
INSERT INTO Food (Name, Description, Price, Stock) VALUES
('Pizza Margherita', 'Classic Italian pizza with tomato sauce, mozzarella, and basil', 12.99, 50),
('Caesar Salad', 'Fresh romaine lettuce with Caesar dressing, croutons, and parmesan cheese', 8.99, 30),
('Chicken Alfredo Pasta', 'Creamy pasta dish with grilled chicken and parmesan cheese', 14.99, 40),
('Vegetable Stir Fry', 'Mixed vegetables stir-fried in a savory sauce', 10.99, 25),
('Chocolate Brownie', 'Rich, fudgy chocolate brownie', 3.99, 100);

-- Inserting mock data into the Food_Location_Mapping table
-- Assuming LocationIDs 1, 2, and 3 exist in a separate Location table
INSERT INTO Food_Location_Mapping (FoodID, LocationID) VALUES
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 3),
(3, 2), (3, 3),
(4, 1), (4, 2),
(5, 1), (5, 2), (5, 3);

-- Inserting mock data into the NutritionalValue table
INSERT INTO NutritionalValue (FoodID, Serving, Calories) VALUES
(1, '1 slice (100g)', 285),
(2, '1 bowl (150g)', 180),
(3, '1 plate (250g)', 650),
(4, '1 bowl (200g)', 220),
(5, '1 piece (50g)', 180);