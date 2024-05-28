with users as (select * from {{source("my_src","raw_users")}})
, countries as (select * from {{source("my_src","raw_country")}})  
 select id,user,b.country as country_name
from
    users a inner join countries b 
	on a.country = b.country_id 
	










