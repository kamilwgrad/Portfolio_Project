-- wymiar klienta: klucz naturalny customer_id, nazwa kraju, wiersz 'UNKNOWN' dla faktur bez klienta
select
    customer_id,
    customer_name,
    country                                                as country_code,
    case country
        when 'PL' then 'Poland'
        when 'DE' then 'Germany'
        when 'CZ' then 'Czechia'
    end                                                    as country_name,
    segment
from stg_customers

union all

select
    'UNKNOWN'                                              as customer_id,
    'Unknown customer'                                     as customer_name,
    null                                                   as country_code,
    null                                                   as country_name,
    'Unknown'                                              as segment
