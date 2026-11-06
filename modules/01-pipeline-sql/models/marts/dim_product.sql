-- wymiar produktu: klucz naturalny product_id, wiersz 'UNKNOWN' dla produktów spoza słownika
select
    product_id,
    product_name,
    category,
    list_price
from stg_products

union all

select
    'UNKNOWN'                                              as product_id,
    'Unknown product'                                      as product_name,
    'Unknown'                                              as category,
    null                                                   as list_price
