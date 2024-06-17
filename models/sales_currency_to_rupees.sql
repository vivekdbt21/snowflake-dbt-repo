select  currency  
       ,sales_amt
       ,{{currency_convert_to_rupees('currency','sales_amt')}} convert_into_rupees
 from {{ source('my_src', 'sales') }}


