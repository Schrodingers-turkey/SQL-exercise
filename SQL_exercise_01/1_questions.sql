-- LINK: https://en.wikibooks.org/wiki/SQL_Exercises/The_computer_store
-- 1.1 Select the names of all the products in the store.
-- 1.2 Select the names and the prices of all the products in the store.
-- 1.3 Select the name of the products with a price less than or equal to $200.
-- 1.4 Select all the products with a price between $60 and $120.
-- 1.5 Select the name and price in cents (i.e., the price must be multiplied by 100).
-- 1.6 Compute the average price of all the products.
-- 1.7 Compute the average price of all products with manufacturer code equal to 2.
-- 1.8 Compute the number of products with a price larger than or equal to $180.
-- 1.9 Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).
-- 1.10 Select all the data from the products, including all the data for each product's manufacturer.
-- 1.11 Select the product name, price, and manufacturer name of all the products.
-- 1.12 Select the average price of each manufacturer's products, showing only the manufacturer's code.
  select avg(a.price), manufacturer
  from Products
  group by Manufacturer;
-- 1.13 Select the average price of each manufacturer's products, showing the manufacturer's name.
  select avg(a.price),b.name
  from Products a join Manufacturers b on a.manufacturer = b.code
  group by Manufacturer;
-- 1.14 Select the names of manufacturer whose products have an average price larger than or equal to $150.
  select b.name,avg(a.price)
  from Manufacturers b join Products a on b.code = a.manufacturer
  group by b.name
  having avg(a.price) >= 150;
-- 1.15 Select the name and price of the cheapest product.
  select name,price
  from Products
  order by price asc
  limit 1;
-- 1.16 Select the name of each manufacturer along with the name and price of its most expensive product.
 
 
 
-- 1.17 Add a new product: Loudspeakers, $70, manufacturer 2.
  
-- 1.18 Update the name of product 8 to "Laser Printer".
-- 1.19 Apply a 10% discount to all products.
-- 1.20 Apply a 10% discount to all products with a price larger than or equal to $120.
