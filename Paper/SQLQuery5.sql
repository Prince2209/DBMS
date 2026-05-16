--Table Schema


--Table-1: Restaurants:-

--o RestaurantID: stores the unique ID for each restaurant.
--o RestaurantName: stores the name of the restaurant.
--o Cuisine: stores the type of cuisine the restaurant serves (e.g., French, Japanese, Italian).
--o Rating: stores the average customer rating for the restaurant (out of 5).


--Table-2: Customers:-

--o CustomerID: stores the unique ID for each customer.
--o CustomerName: stores the full name of the customer.
--o City: stores the city where the customer resides.
--o Membership: stores the membership level of the customer (e.g., Gold, Silver, Bronze).


--Table-3: Orders:-

--o OrderID: stores the unique ID for each order.
--o CustomerID: stores the ID of the customer who placed the order (references the Customers
--table).
--o RestaurantID: stores the ID of the restaurant where the order was placed (references the
--Restaurants table).
--o OrderDate: stores the date and time when the order was placed.
--o TotalAmount: stores the total amount of the order.


--Table-4: MenuItems:-

--o MenuItemID: stores the unique ID for each menu item.
--o RestaurantID: stores the ID of the restaurant that offers the menu item (references the
--Restaurants table).
--o ItemName: stores the name of the menu item.
--o Price: stores the price of the menu item.
--o Category: stores the category of the menu item (e.g., Main Course, Appetizer, Sushi, Soup).



--Consider above table schema and write following queries:


--1. Display unique city of customers who have 'gold' membership.
--2. Display top 2 rating with restaurant names.
--3. Insert new restaurant in restaurant table. (5, 'Burger Junction', 'American', 4.1)
--4. Update customer id to 4 in orders table where amount is 60.
--5. Remove the costumer who belongs to Chicago city.
--6. Change column name Total Amount to Amount in Orders table.
--7. Delete Menu Items table.
--8. Display name and city of those customers whose membership contains 4 letters.
--9. Display 3rd to 7th character of restaurant name from restaurants table.
--10. Write a query to subtract 1 year from current date.
--11. Find max amount of all orders.
--12. Display city with the total number of customers.
--13. display restaurant names with average rating greater than 4.5.
--14. Find the highest-rated restaurant and its details.
--15. Subquery to get restaurants that are visited by customers from 'New York'.
--16. Create a View to list customers and their cities.
--17. Get all customers and their orders (including customers without order)
--18. Generate a combination of every customer with every restaurant.
--19. List all restaurants and the corresponding orders.
--20. Get the total amount spent by each customer at each restaurant, along with the customer and
--restaurant names. Include customers who have not ordered from certain restaurants, showing
--NULL for those cases.