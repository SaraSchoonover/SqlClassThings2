-- accessory to app development
-- what artists' music do we sell?
select *,ArtistId + 1000 -- transforming data, columns, * is giv me all columns from dataset
from Artist -- from a dataset, generally tables
where Name like 'a%' --filtering data, stuff based on matching a partial string, use 'like' operator

--how many customers are in each state?
--Count is for getting a count of either an entire table
--string_agg combines strings together in aggregate
--aliasing is done one of these ways...
select isnull([State], Country) as [Customer Location] , --with an as
	   count(*) "Number of Customers", -- without an as
	   [Customer Names] = string_agg(firstname,',') -- with an equals sign
from Customer c
--grouping based on state
--group by FirstName
--group by [State], Country
group by isnull([State], Country)

--null is a special thing, you have to use is null and is not null to compare it to things
select FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
from Customer, Invoice
where Country = 'Brazil'

SELECT *
FROM Customer, Invoice
WHERE Country = 'Brazil'


SELECT *
FROM Employee e 
JOIN Invoice i
ON
WHERE Title = 'Sales Support Agent'

SELECT DISTINCT BillingCountry
FROM Invoice
--WHERE

SELECT e.FirstName, e.LastName, i.InvoiceId
FROM Employee e
JOIN Invoice i
On e.EmployeeId = i.InvoiceId
WHERE Title = 'Sales Support Agent'

SELECT c.FirstName, c.LastName, i.Total, i.SupportRepId, c.Country
FROM Customer c
JOIN Invoice i
ON c.CustomerId = i.CustomerId
Join Employee e
on e.EmployeeId = c.SupportRepId

SELECT SUM(Total)
FROM Invoice
WHERE InvoiceDate = '2011'
--nAND InvoiceDate = '2011'

select sum(i.total) as '2011'
from invoice i
where i.InvoiceDate > '2011-01-01 00:00:00'
and i.InvoiceDate < '2012-01-01 00:00:00'

SELECT COUNT(InvoiceId)
FROM InvoiceLine
WHERE InvoiceId = '37'

SELECT COUNT
FROM
WHERE 