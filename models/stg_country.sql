with sales as (select * from {{source("my_src","raw_sales")}})
, cnty as (select * from {{ref("country_lookup")}} )
select s.SALESID,s.SALES,c.countryname COUNTRY from sales s inner join cnty c 
                                                            on s.country = c.countrycode         

