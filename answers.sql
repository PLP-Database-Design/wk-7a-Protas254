-- Question 1 Converting the table into 1NFM
-- Create a new 1NF table
CREATE TABLE ProductDetail_1NF(
    OrderID INT NOT NULL,
    CustomerName VARCHAR(50),
    Products VARCHAR(100)
);
INSERT INTO ProductDetail(OrderID, CustomerName, Products)
VALUES  (101, 'John Doe', 'Laptop'),
        (101, 'John Doe', 'Mouse'),
        (102, 'Jane Smith', 'Tablet'),
        (102, 'Jane Smith', 'Keyboard'),
        (102, 'Jane Smith', 'Mouse'),
        (103, 'Emily Clark', 'Phone');


-- Question 2 Converting the table into 2NFM
CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

INSERT INTO Orders(OrderID, CustomerName)
VALUES  (101, 'John Doe'),
        (102, 'Jane Smith'),
        (103, 'Emily Clark');

CREATE TABLE OrderItems(
    OrderID INT,
    ProductName VARCHAR(50),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Products(OrderID, ProductName, Quantity)
VALUES  (101, 'Laptop', 2),
        (101, 'Mouse', 1),
        (102, 'Tablet', 3),
        (102, 'Keyboard', 1),
        (102, 'Mouse', 2),
        (103, 'Phone', 1);

        