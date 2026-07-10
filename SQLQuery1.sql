use db_churn;
select * from dbo.Customer_Data

SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) *  100.0 / (Select Count(*) from dbo.Customer_Data)  as Percentage
from dbo.Customer_Data
Group by Gender;

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0 / (Select Count(*) from dbo.Customer_Data)  as Percentage
from dbo.Customer_Data
Group by Contract

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from dbo.Customer_Data) * 100  as RevPercentage
from dbo.Customer_Data
Group by Customer_Status

SELECT State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from dbo.Customer_Data)  as Percentage
from dbo.Customer_Data
Group by State
Order by Percentage desc


SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 1.0 / (Select Count() from dbo.Customer_Data)  as Percentage
from dbo.Customer_Data
Group by Gender


