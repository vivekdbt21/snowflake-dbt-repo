 {% macro cal_num_of_days(col_name) %}
  (DATEDIFF(day,{{col_name}} ,CURRENT_DATE))
 {% endmacro %}
 