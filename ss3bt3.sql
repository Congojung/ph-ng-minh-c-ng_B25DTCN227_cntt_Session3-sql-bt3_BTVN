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

-- Phan tich:
-- Input: bang CUSTOMERS
-- Output: lay FullName,Email cua khach hang thoa dieu kien
-- Khong dung SELECT * vi du du lieu, ton tai nguyen, giam hieu nang

-- Logic loc:
-- 1. Chi lay khach o Ha Noi
-- 2. Ngay mua cuoi <= 2025-10-01 (tuc la lau roi chua mua)
-- 3. Email khac NULL de con gui mail
-- 4. Trang thai phai la Active (loai bi khoa)

SELECT FullName,Email
FROM CUSTOMERS
WHERE City='Hà Nội'
AND LastPurchaseDate<='2025-10-01'
AND Email IS NOT NULL
AND Status='Active';
