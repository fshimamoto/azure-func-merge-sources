CREATE DATABASE Origem;
GO
USE Origem;
GO

CREATE TABLE Orders (
                        OrderId INT PRIMARY KEY,
                        CustomerName NVARCHAR(100),
                        OrderDate DATE,
                        TotalAmount DECIMAL(10,2)
);

INSERT INTO Orders (OrderId, CustomerName, OrderDate, TotalAmount)
VALUES
    (1, 'João Silva', '2024-01-10', 150.00),
    (2, 'Maria Oliveira', '2024-01-15', 300.00),
    (3, 'Carlos Santos', '2024-02-01', 450.00);
