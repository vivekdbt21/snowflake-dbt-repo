{{ config( materialized='ephemeral')}}
select * from {{ source('my_src', 'a2_data') }}