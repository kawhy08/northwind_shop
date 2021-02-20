with
    source as (
        SELECT

        order_id
        , product_id
        , unit_price
        , discount
        , quantity
        , _sdc_table_version
        , _sdc_received_at
        , _sdc_sequence
        , _sdc_batched_at
        , _sdc_extracted_at as last_etl_run

        FROM {{ source ('northwind_etl','order_details') }}
    )

SELECT * from source
