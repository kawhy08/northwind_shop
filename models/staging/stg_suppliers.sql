with
    source as (
        SELECT

        supplier_id
        , country
        , city
        , fax
        , postal_code
        , homepage
        , address
        , region
        , contact_name
        , phone
        , company_name
        , contact_title
        , _sdc_batched_at
        , _sdc_extracted_at as last_etl_run
        , _sdc_sequence
        , _sdc_received_at
        , _sdc_table_version

        FROM {{ source ('northwind_etl','suppliers') }}
    )

SELECT * from source
