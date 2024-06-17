{{
    config(  materialized='incremental' )
}}

Select * from {{ source('my_src', 'employee_details') }}

{% if is_incremental()%}

 where received_at > (Select Max(received_at) from {{ this }})

 {%endif%}