{{ config(materialized='table') }}

with orders_jingdong as (
	select *
	from {{ ref('stg_orders') }}
	where order_id in (3, 4)
)

select * from orders_jingdong