-- Multi-Table Sorgu Pratiği

-- Tüm ürünler(product) için veritabanındaki ProductName ve CategoryName'i listeleyin. (77 kayıt göstermeli)

        SELECT p.ProductName,c.CategoryName FROM Product p
        JOIN Category as c ON  p.CategoryID=c.CategoryID;

-- 9 Ağustos 2012 öncesi verilmiş tüm siparişleri(order) için sipariş id'si (Id) ve gönderici şirket adını(CompanyName)'i listeleyin. (429 kayıt göstermeli)
      SELECT o.Id, c.CompanyName from [Order] o
        join Customer c on o.CustomerID=c.Id
        where OrderDate <"2012-08-09"
-- Id'si 10251 olan siparişte verilen tüm ürünlerin(product) sayısını ve adını listeleyin. ProdcutName'e göre sıralayın. (3 kayıt göstermeli)
 SELECT * FROM OrderDetail as o
        join Product as p ON o.ProductID=p.ProductID
        where o.OrderID=10251
        order by p.ProductName
-- Her sipariş için OrderId, Müşteri'nin adını(Company Name) ve çalışanın soyadını(employee's LastName). Her sütun başlığı doğru bir şekilde isimlendirilmeli. (16.789 kayıt göstermeli)
   SELECT o.CustomerID,c.CompanyName,e.LastName FROM Order o
        join Customers as c ON o.CustomerID=c.CustomerID
        join Employees as e ON o.EmployeeID=e.EmployeeID;