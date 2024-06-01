 {% macro convert_cent_to_dollar(col_name ,precision=2) %}
 ({{col_name}} / 100)::numeric(16,{{ precision }}) 
 {% endmacro %}
 