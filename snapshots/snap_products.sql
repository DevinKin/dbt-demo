{% snapshot snap_products %}
{{ config(
	target_database='analysis',
	target_schema='public_snapshots',
	unique_key='id',
	strategy='timestamp',
	updated_at='_etl_loaded_at',
)}}


select * from {{ source('jaffle_shop', 'orders') }}
{% endsnapshot %}