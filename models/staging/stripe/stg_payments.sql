select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- convert amount from cent to dollar
    amount/100 as amount,
    created as created_at
from {{ source('stripe', 'payment') }}