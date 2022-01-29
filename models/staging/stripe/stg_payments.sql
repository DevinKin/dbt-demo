with payments as (
    select
        id,
        orderid as order_id,
        amount
    from raw.stripe.payment
)
select * from payments