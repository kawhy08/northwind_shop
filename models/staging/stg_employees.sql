with
    source as (
        SELECT 
            employee_id
            , country
            , city
            , postal_code
            , hire_date
            , extension
            , home_phone
            , address
            , birth_date
            , region
            , photo_path
            , last_name
            , first_name
            , title
            , title_of_courtesy
            , notes
            , reports_to
            , _sdc_sequence
            , _sdc_table_version
            , _sdc_batched_at
            , _sdc_extracted_at
            , _sdc_received_at as last_etl_run
        FROM {{ source ('northwind_etl','employees') }}
    )

SELECT * from source
