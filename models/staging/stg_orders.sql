{{config(materialized='table')}}

select DISTINCT

order_id ,

customer_id,

product_id,

quantity,

cast(order_date as date) as order_date

from {{ source('raw','orders') }}