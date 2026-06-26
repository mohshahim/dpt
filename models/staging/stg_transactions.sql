SELECT
    transaction_id,
    customer_id,
    amount,
    transaction_date
FROM {{ source('raw_sales', 'transactions') }}
WHERE amount IS NOT NULL