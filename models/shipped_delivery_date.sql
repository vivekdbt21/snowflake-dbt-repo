select ship_date,{{cal_num_of_days('ship_date')}}         AS  SHIPPED_STATUS 
     , delivered_date ,{{cal_num_of_days('delivered_date')}} AS  DELIVERED_STATUS 
      from {{ source('my_src', 'raw_product_ship') }}

 