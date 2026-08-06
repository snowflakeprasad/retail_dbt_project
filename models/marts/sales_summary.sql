{{config(materialized='table')}}

{{ config(schema='mart') }}

select

c.customer_name,

count(o.order_id) total_orders,

from {{ ref('stg_customers') }} c

join {{ ref('stg_orders') }} o

on c.customer_id=o.customer_id

group by 1