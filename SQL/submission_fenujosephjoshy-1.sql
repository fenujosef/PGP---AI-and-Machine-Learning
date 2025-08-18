/*

-----------------------------------------------------------------------------------------------------------------------------------
													    Guidelines
-----------------------------------------------------------------------------------------------------------------------------------

The provided document is a guide for the project. Follow the instructions and take the necessary steps to finish
the project in the SQL file			

-----------------------------------------------------------------------------------------------------------------------------------
                                                         Queries
                                               
-----------------------------------------------------------------------------------------------------------------------------------*/
  
  USE project2;
  
  
  
/*-- QUESTIONS RELATED TO CUSTOMERS
     [Q1] What is the distribution of customers across states?
     Hint: For each state, count the number of customers.*/
     SELECT state, COUNT(*) AS customer_count
     FROM customer_t
     GROUP BY state;
     

-- ---------------------------------------------------------------------------------------------------------------------------------

/* [Q2] What is the average rating in each quarter?
-- Very Bad is 1, Bad is 2, Okay is 3, Good is 4, Very Good is 5.

Hint: Use a common table expression and in that CTE, assign numbers to the different customer ratings. 
      Now average the feedback for each quarter.alter */

SELECT
	YEAR(order_date) AS order_year,
    QUARTER(order_date) AS order_quarter,
    AVG(CAST(customer_feedback AS DECIMAL(10,2))) AS avg_rating
FROM order_t
GROUP BY YEAR(order_date), QUARTER(order_date)
ORDER BY order_year, order_quarter;



-- ---------------------------------------------------------------------------------------------------------------------------------

/* [Q3] Are customers getting more dissatisfied over time?

Hint: Need the percentage of different types of customer feedback in each quarter. Use a common table expression and
	  determine the number of customer feedback in each category as well as the total number of customer feedback in each quarter.
	  Now use that common table expression to find out the percentage of different types of customer feedback in each quarter.
      Eg: (total number of very good feedback/total customer feedback)* 100 gives you the percentage of very good feedback.*/
WITH FeedbackCounts AS (
	SELECT 
        YEAR(order_date) AS order_year,
        QUARTER(order_date) AS order_quarter,
        customer_feedback,
        COUNT(*) AS feedback_count,
        COUNT(*) OVER (PARTITION BY YEAR(order_date), QUARTER(order_date)) AS total_feedback
    FROM order_t
    GROUP BY YEAR(order_date), QUARTER(order_date), customer_feedback
),
FeedbackPercentages AS (
    SELECT 
        order_year,
        order_quarter,
        customer_feedback,
        (feedback_count * 100.0 / total_feedback) AS feedback_percentage
    FROM FeedbackCounts
)
SELECT 
    order_year,
    order_quarter,
    customer_feedback,
    feedback_percentage
FROM FeedbackPercentages
ORDER BY order_year, order_quarter, customer_feedback;


-- ---------------------------------------------------------------------------------------------------------------------------------

/*[Q4] Which are the top 5 vehicle makers preferred by the customer.

Hint: For each vehicle make what is the count of the customers.*/
SELECT vehicle_maker, COUNT(*) AS customer_count
FROM product_t p
JOIN order_t o ON p.product_id = o.product_id
GROUP BY vehicle_maker
ORDER BY customer_count DESC
LIMIT 5;	


-- ---------------------------------------------------------------------------------------------------------------------------------

/*[Q5] What is the most preferred vehicle make in each state?

Hint: Use the window function RANK() to rank based on the count of customers for each state and vehicle maker. 
After ranking, take the vehicle maker whose rank is 1.*/
WITH RankedVehicleMakes AS (
    SELECT 
        state,
        vehicle_maker,
        COUNT(*) AS customer_count,
        RANK() OVER (PARTITION BY state ORDER BY COUNT(*) DESC) AS rank_state
    FROM product_t p
    JOIN order_t o ON p.product_id = o.product_id
    JOIN customer_t c ON o.customer_id = c.customer_id
    GROUP BY state, vehicle_maker
)
SELECT 
    state,
    vehicle_maker,
    customer_count
FROM RankedVehicleMakes
WHERE rank_state = 1
ORDER BY state;


-- ---------------------------------------------------------------------------------------------------------------------------------

/*QUESTIONS RELATED TO REVENUE and ORDERS 

-- [Q6] What is the trend of number of orders by quarters?

Hint: Count the number of orders for each quarter.*/
SELECT 
    YEAR(order_date) AS order_year,
    QUARTER(order_date) AS order_quarter,
    COUNT(*) AS total_orders
FROM order_t
GROUP BY YEAR(order_date), QUARTER(order_date)
ORDER BY order_year, order_quarter;


-- ---------------------------------------------------------------------------------------------------------------------------------

/* [Q7] What is the quarter over quarter % change in net revenue? 

Hint: Quarter over Quarter percentage change in net revenue means what is the change in net revenue from the subsequent quarter to the previous quarter in percentage.
      To calculate you need to use the common table expression to find out the sum of revenue for each quarter.
      Then use that CTE along with the LAG function to calculate the QoQ percentage change in revenue.
      Net Revenue is the amount obtained by multiplying the quantity of units sold with the price after deducting the discounts applied.
*/
WITH QuarterlyRevenue AS (
    SELECT 
        YEAR(o.order_date) AS order_year,
        QUARTER(o.order_date) AS order_quarter,
        SUM(o.quantity * o.vehicle_price) AS net_revenue
    FROM order_t o
    JOIN product_t p ON o.product_id = p.product_id
    GROUP BY YEAR(o.order_date), QUARTER(o.order_date)
),
RevenueChange AS (
    SELECT 
        order_year,
        order_quarter,
        net_revenue,
        LAG(net_revenue) OVER (ORDER BY order_year, order_quarter) AS previous_quarter_revenue,
        ((net_revenue - LAG(net_revenue) OVER (ORDER BY order_year, order_quarter)) / 
          LAG(net_revenue) OVER (ORDER BY order_year, order_quarter)) * 100 AS qoq_change_percentage
    FROM QuarterlyRevenue
)
SELECT 
    order_year,
    order_quarter,
    net_revenue,
    previous_quarter_revenue,
    qoq_change_percentage
FROM RevenueChange
ORDER BY order_year, order_quarter;
      

-- ---------------------------------------------------------------------------------------------------------------------------------

/* [Q8] What is the trend of net revenue and orders by quarters?

Hint: Find out the sum of net revenue and count the number of orders for each quarter.
	  Net Revenue is the amount obtained by multiplying the quantity of units sold with the price after deducting the discounts applied.
*/
SELECT 
    YEAR(o.order_date) AS order_year,
    QUARTER(o.order_date) AS order_quarter,
    SUM(o.quantity * o.vehicle_price) AS net_revenue,
    COUNT(*) AS total_orders
FROM order_t o
JOIN product_t p ON o.product_id = p.product_id
GROUP BY YEAR(o.order_date), QUARTER(o.order_date)
ORDER BY order_year, order_quarter;

-- ---------------------------------------------------------------------------------------------------------------------------------

/* QUESTIONS RELATED TO SHIPPING 
    [Q9] What is the average discount offered for different types of credit cards?

Hint: Find out the average of discount for each credit card type.*/
SELECT 
    credit_card_type,
    AVG(discount) AS average_discount
FROM customer_t c
JOIN order_t o ON c.customer_id = o.customer_id
GROUP BY credit_card_type
ORDER BY average_discount DESC;

-- ---------------------------------------------------------------------------------------------------------------------------------

/* [Q10] What is the average time taken to ship the placed orders for each quarters?
	Hint: Use the dateiff function to find the difference between the ship date and the order date.
*/
SELECT
	YEAR(order_date) AS order_year,
    QUARTER(order_date) AS order_quarter,
    AVG(DATEDIFF(ship_date, order_date)) AS avg_shipping_time
FROM order_t
WHERE ship_date IS NOT NULL
GROUP BY YEAR(order_date), QUARTER(order_date)
ORDER BY order_year, order_quarter;

-- --------------------------------------------------------Done----------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------------------------



