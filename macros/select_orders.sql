{% macro select_orders() -%}
	{% set query %}
		select * from ANALYSIS.PUBLIC.orders_jingdong
	{% endset %}
	{% do run_query(query).print_table() %}
{%- endmacro %}