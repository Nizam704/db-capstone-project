create view OrdersView as select OrderID,Quantity,TotalCost from orders where Quantity > 2;
select * from ordersview;

/*For your second task, Little Lemon need information from four tables on all customers with orders that cost more than $150. 
Extract the required information from each of the following tables by using the relevant JOIN clause: 
Customers table: The customer id and full name.
Orders table: The order id and cost.
Menus table: The menus name.
MenusItems table: course name and starter name.
The result set should be sorted by the lowest cost amount.*/
select customers.CustomerID,customers.CustomerName as FullName,orders.OrderID,orders.TotalCost,menuitems.ItemName as MenuName,menu.Cuisine,menu.Starters
from customers 
inner join orders on customers.CustomerID = orders.CustomerID
inner join menu on orders.MenuID = menu.MenuID
inner join menuitems on menu.MenuItemID = menuitems.MenuItemID
where TotalCost > 20
order by TotalCost asc;

/*For the third and final task, Little Lemon need you to find all menu items for which more than 2 orders have been placed.
 You can carry out this task by creating a subquery that lists the menu names from the menus table for any order quantity with more than 2.
Here’s some guidance around completing this task: 
Use the ANY operator in a subquery
The outer query should be used to select the menu name from the menus table.
The inner query should check if any item quantity in the order table is more than 2. */

select menuitems.ItemName from menuitems
where MenuItemID = any (select MenuID from orders where quantity > 2);