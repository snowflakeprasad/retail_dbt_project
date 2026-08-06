{{config(materialized='table')}}

select

customer_id,

upper(name) as customer_name,

lower(email) as email,

city

from {{ source('raw','customers') }}