{{
config(
    materialized = 'materialized_view',
)
}}
select * from {{ source('my_src', 'a2_data') }}