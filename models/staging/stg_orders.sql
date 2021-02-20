with
    source as (
        SELECT 
            order_id
            , employee_id
            , customer_id
            , ship_region 
            , shipped_date
            , ship_country
            , cast(required_date as timestamp) as required_date
            , ship_address
            , ship_name
            , order_date
            , ship_postal_code
            , ship_city
            , freight
            , ship_via as shipper_id
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_table_version
            , _sdc_batched_at
            , _sdc_extracted_at	as last_etl_run

        FROM {{ source ('northwind_etl','orders') }}
    )

SELECT * from source
