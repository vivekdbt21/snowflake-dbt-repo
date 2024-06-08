{{
    config(
        materialized='incremental'
    )
}}
selecT * from {{ source('my_src', 'daily_sales') }} t
{% if is_incremental() %}
where t.sdate > (select max(sdate) from {{this}})
{% endif %}