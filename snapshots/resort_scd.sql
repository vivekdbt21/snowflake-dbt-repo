{%snapshot resort_scd_table%}

{{
        config(
          target_schema='my_snapshots',
          strategy='check',
          unique_key='hotel',
          check_cols=['AC_ROOM']
        )
    }}

select * from {{ source('my_src', 'resort') }}

{%endsnapshot%}