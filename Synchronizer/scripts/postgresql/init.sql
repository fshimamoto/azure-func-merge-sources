CREATE TABLE IF NOT EXISTS Orders (
                                      OrderId INTEGER PRIMARY KEY,
                                      CustomerName TEXT,
                                      OrderDate DATE,
                                      TotalAmount NUMERIC(10,2)
    );

-- Pré-popular com um dado diferente para testar merge
INSERT INTO Orders (OrderId, CustomerName, OrderDate, TotalAmount)
VALUES
    (1, 'João Silva', '2024-01-10', 120.00);
