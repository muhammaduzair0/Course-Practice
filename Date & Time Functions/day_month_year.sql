-- Date & Date Part Function


SELECT
ORDERID,
CreationTime,
YEAR(CreationTime) Year,
MONTH(CreationTime) Month,
DAY(CreationTime) Day,
DATEPART(day, CreationTime) Day_dp,
DATEPART(mm, CreationTime) Month_dp,
DATEPART(yy, CreationTime) Year_dp,
DATEPART(hour, CreationTime) Hour_dp,
DATEPART(minute, CreationTime) Minute_dp,
DATEPART(second, CreationTime) Second_dp,
DATEPART(WEEKDAY, CreationTime) Weekday_dp,
DATEPART(WEEK, CreationTime) Week_dp,
DATEPART(QUARTER, CreationTime) Quarter_dp
FROM Sales.Orders