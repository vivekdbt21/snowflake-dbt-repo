select  currency  ,sales_amt,{{currency_convert_to_rupees('currency','sales_amt')}} 
 
 from {{ source('my_src', 'sales') }}


