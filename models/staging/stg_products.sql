with
    source as (
        SELECT 
            product_id
            , category_id
            , supplier_id
            , unit_price
            , product_name
            , quantity_per_unit
            , units_in_stock
            , units_on_order
            ,
                case 
                    when discontinued = 1 then True
                    else False
                end as is_discontinued
            , reorder_level
            , _sdc_received_at
            , _sdc_sequence
            , _sdc_batched_at
            , _sdc_extracted_at as last_etl_run
            , _sdc_table_version

        FROM {{ source ('northwind_etl','products') }}
    )

SELECT * from source
