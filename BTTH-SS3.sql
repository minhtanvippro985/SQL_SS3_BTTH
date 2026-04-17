CREATE DATABASE SHOP_MANANGER;
USE SHOP_MANANGER;


CREATE TABLE Shirts(
    ShirtID VARCHAR(5) PRIMARY KEY,
    TypeShirt VARCHAR(20) NOT NULL,
    ShirtSize VARCHAR(6),
  --   ShirtPrice DEC(10,2) NOT NULL CHECK (ShỉrtPrice > 0)
    ShirtPrice DEC(10,2) 


);



-- đổ dữ liệu vào 
INSERT INTO Shirts(ShirtID,TypeShirt,ShirtSize,ShirtPrice) VALUES
('P01','Ao So mi trang','L',250000),
('P02','Quan jean xang','M',450000),
('P03','Ao thun basic','XL',150000),
('P04','Ao Hoodie','',-200000);

SELECT*FROM Shirts;
-- áp dụng giảm giá cho sản phẩm P02
UPDATE Shirts
SET ShirtPrice = ShirtPrice - 50000
WHERE ShirtID = 'P02';

-- do chỉ riêng giá của sản phấm khác được tăng 10% nên 
UPDATE Shirts
SET ShirtPrice = ShirtPrice * 1.1
WHERE ShirtID != 'P02' AND ShirtPrice > 0;
SELECT*FROM Shirts;

-- xóa sản phẩm P03 ngừng kinh doanh
DELETE FROM Shirts
WHERE ShirtID = 'P03';


-- xem toàn bộ
SELECT * FROM Shirts;

-- tên sp và kích cỡ
SELECT 
    TypeShirt AS 'Tên Sản Phẩm', 
    ShirtSize AS 'Kích cỡ'
FROM Shirts;

-- Tìm sản phẩm cao hơn 300k
SELECT * FROM Shirts 
WHERE ShirtPrice > 300000;
