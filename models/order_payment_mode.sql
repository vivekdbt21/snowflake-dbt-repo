--select * from {{ source('my_src', 'order_payment') }}

--{% set v_mode=['UPI','CASH','CC','DC','VOUCHER']%}  --Here we hard coded mode values like 'UPI','CASH','CC','DC','VOUCHER'

{% set v_mode=dbt_utils.get_column_values(source('my_src', 'order_payment'),'payment_mode')%} --Here we are getting mode  values from table dynamically 
SELECT 
{% for i in v_mode  %}
SUM(CASE WHEN payment_mode='{{i}}' THEN amt END) as {{i}}_mode,
{% endfor %}
from {{ source('my_src', 'order_payment') }}