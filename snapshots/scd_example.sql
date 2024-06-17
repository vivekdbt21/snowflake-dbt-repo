{%snapshot scd_table%}

{{
        config(
          target_schema='my_snapshots',
          strategy='check',
          unique_key='id',
          check_cols=['firstname', 'lastname'],
        )
    }}

select * from {{ source('my_src', 'scd_example') }}

{%endsnapshot%}