{{ config(materialized='table') }}

with orders_aws as (
	select *
	from {{ ref('stg_orders') }}
	where order_id in (1, 2)
)

select * from orders_aws