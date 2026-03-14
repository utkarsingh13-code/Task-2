create database Totalsales;
use Totalsales;
show tables;
select * from sales;
select sum(TotalPrice) from sales;
## ans 2207643.5500000035
select sum(Quantity) from sales;
## ans 11057
## Which store generated the maximum revenue?
select Location,sum(TotalPrice) from sales
group by Location 
order by sum(TotalPrice) desc limit 1;
##  ans Store C	 Revenue->595009.0399999992
## Which store sold the most products?
select Location,sum(Quantity) from sales
group by Location 
order by sum(Quantity) desc limit 1;
## Store C	Quantity ->3007
## Which Three payment types generated the max revenue.
select PaymentType,sum(TotalPrice) from sales
group by PaymentType
order by sum(TotalPrice) desc limit 3;
## PaymentType  Revenue
## Debit Card	498721.24
## Credit Card	474156.66000000027
## Online	    435782.0799999999
## Which 3 products generated the most revenue?
select Product,sum(TotalPrice) from sales
group by Product
order by sum(TotalPrice) desc limit 3; 
## Product  Revenue 
## Monitor	347995.6399999999
## Phone	326211.2100000001
## Printer	325584.94999999984
## Which three products were sold the most?
select Product,sum(Quantity) from sales
group by Product
order by sum(Quantity) desc limit 3;
## Product  Quantity
## Printer	1675
## Tablet	1630
## Monitor	1621