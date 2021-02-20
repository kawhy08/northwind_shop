with
    selected as (
        SELECT 
            customer_id
            , country
            , city
            , fax
            , postal_code
            , address
            , region
            , contact_name
            , phone
            , company_name
            , contact_title

        FROM {{ ref('stg_customers') }}
    )
    , transformed as (
        SELECT
            row_number() over (order by customer_id) as customer_sk
        , * 
        from selected
    )

SELECT * from selected

