{% macro select_orders() -%}
	{% set query %}
		select * from {{ ref('snowplow_page_views')}}
	{% endset %}
	{% do run_query(query).print_table() %}
{%- endmacro %}