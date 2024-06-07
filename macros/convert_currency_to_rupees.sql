{% macro  currency_convert_to_rupees(currency,val)%}
{%if currency =='Rupees'%}
 {{val}}
{%elif currency =='Yen'%}
 {{val}}/10
{%elif currency =='Dollars'%}
{{val}}/20
{%elif currency =='Par'%}
{{val}}/30
{% endif  %} 
{{'hello'}}
{% endmacro %}