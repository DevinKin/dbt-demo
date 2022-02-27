{% macro limit_data_in_dev(column_name, dev_days_of_day) -%}
{% if target.name == 'dev' %}
	where {{ column_name }} >= dateadd('day', - {{ dev_days_of_day }}, current_timestamp)
{% endif %}
{%- endmacro %}