CREATE TABLE CUSTOMERS(
CustomerID INT PRIMARY KEY auto_increment,
FullName VARCHAR(100),
Email VARCHAR(100),
City VARCHAR(50),
LastPurchaseDate DATE,
Status VARCHAR(20),
Gender VARCHAR(10),
Date0fBirth DATE,
Points INT,
Address VARCHAR(255)
);

INSERT INTO CUSTOMERS(FullName,Email,City,LastPurchaseDate,Status)
VALUES
(N'Nguyen Văn A','nva@gmail.com','Hà Nội','2025-05-01','Active'),
(N'Trần Thị B','ttb@gmail.com','Thanh Hóa','2026-03-08','Active'),
(N'Lê Văn C',NULL,'Nghệ An','2025-12-04','Active'),
(N'Tran Cong D','tcd@gmail.com','Kon Tum','2024-12-22','Locked'),
(N'Hoàng Van E','hve@gmail.com','TP HCM','2025-03-02','Active');

SELECT FullName,Email
FROM CUSTOMERS
WHERE City='Hà Nội'
AND LastPurchaseDate<='2025-10-01'
AND Email IS NOT NULL
AND Status='Active';
