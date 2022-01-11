select {{ ref('stg_orders') }}.order_id, customer_id, amount
from {{ ref('stg_orders') }}
inner join {{ ref('stg_payment') }}
on {{ ref('stg_payment') }}.order_id = {{ ref('stg_orders') }}.order_id