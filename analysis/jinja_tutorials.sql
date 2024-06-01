{{"Vivek"}}{{"saass"}}
{{12}}
{{['a','b','c']}}
{{{'a':'aa','b':'bb'}}}
-- Variables in Jinja -> Declare using single bracket, Access using double brackets
{{121212}}
{%-set mystring1 = "first string"%}
{{mystring1}}
{#Comments#}
{%- set mylist = ['a','b','c'] -%}
{{mylist}}

{%- set mylist1 = range(0,10)%}
{{mylist1}}

{%- set mydict = {'a':'aa','b':'bb'} %}
{{mydict}}

-- Comments in Jinja
{# comment #}


------------------ IF ELSE
{% if 1==2 %}
    {{"I am inside if statement"}}
{% else %}
    {{"I am inside else statement"}}
{% endif %}

------------------ IF ELSEIF
{% if 1==11 %}
    {{"I am inside if statement"}}
{% elif 1==2 %}
    {{"I am inside else statement"}}
{% else %}
    {{"I am inside third statement"}}
{% endif %}

------------------ Loops
-- Method 1
{%- for i in ['a','b','c'] %}
{{i}}
{% endfor %}

-- Method 2
{%- for i in range(5) -%}
{{i}}
{% endfor %}

-- Method 2: Combine them with variables
{%set listt=['a','b','c'] %}
{%- for i in listt -%}
{{i}}
{% endfor %}