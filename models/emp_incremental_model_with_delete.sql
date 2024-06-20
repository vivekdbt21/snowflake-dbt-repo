{{
    config(  materialized='incremental' ,
             unique_key='id',
             incremental_strategy="delete+insert"
    
       )
}}

Select * from {{ source('my_src', 'emp_details_delete_insert') }}

{% if is_incremental()%}

 where received_at > (Select Max(received_at) from {{ this }})

 {%endif%}