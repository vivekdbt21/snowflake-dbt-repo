{{
    config(  materialized='incremental' ,
             unique_key='id'
    
       )
}}

Select * from {{ source('my_src', 'emp_details_upd') }}

{% if is_incremental()%}

 where received_at > (Select Max(received_at) from {{ this }})

 {%endif%}