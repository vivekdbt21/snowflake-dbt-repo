{% macro  currency_convert_to_rupees(currency_col,val_col)%}
  Case 
   WHEN {{currency_col}} ='Yen' then {{val_col}}/70
   WHEN {{currency_col}} ='Dollar' then {{val_col}}/70
  Else
   {{val_col}}  
end
{% endmacro %}