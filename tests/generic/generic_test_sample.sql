{%test my_test(model,column_name)%}
select * from {{ ref(model) }}
where column_name>1000

{%endtest%}