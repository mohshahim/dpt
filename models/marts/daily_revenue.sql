{{ config(
    materialized='table',
    schema='marts',
    database='analytics'
) }}

SELECT
    transaction_date,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM {{ ref('stg_transactions') }}
GROUP BY transaction_date