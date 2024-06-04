{{config (materialized='table')}}

select
        o.order_id,
        c.first_name,
        c.last_name,
        o.order_date,
        o.total_amount
from {{source('KARAMBIR_KAUR_DIT_45604', 'ORDERS')}} o
join {{source('KARAMBIR_KAUR_DIT_45604', 'CUSTOMERS')}} c on o.customer_id = c.customer_id