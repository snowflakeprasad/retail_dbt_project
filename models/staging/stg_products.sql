{{config(materialized='table')}}

{{ config(schema='staging') }}

WITH source_data AS (

    SELECT *
    FROM {{ source('raw', 'products') }}

),

transformed AS (

    SELECT

        product_id,
        TRIM(product_name) AS product_name,
        UPPER(category) AS category,
        CAST(price AS NUMBER(10,2)) AS price

    FROM source_data

)

SELECT *
FROM transformed