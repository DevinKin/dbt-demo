{{
  config(
	materialized = 'table',
	target_database='analysis',
	target_schema='public_snapshots',
	unique_key='order_date',
	strategy='check',
	check_cols=['daily_revenue']
	)
}}

select
	order_date,
	sum(amount) as daily_revenue

from {{ ref('fct_orders') }}
group by 1
order by 1

