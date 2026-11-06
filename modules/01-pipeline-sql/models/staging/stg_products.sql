-- typy, ujednolicenie kategorii (EN), przecinek dziesiętny w cenie, brak ceny -> NULL
select
    trim(product_id)                                       as product_id,
    trim(product_name)                                     as product_name,
    case lower(trim(category))
        when 'pet food'   then 'Pet food'
        when 'akcesoria'  then 'Accessories'
        when 'suplementy' then 'Supplements'
        else trim(category)
    end                                                    as category,
    cast(replace(nullif(trim(list_price), ''), ',', '.') as decimal(10, 2)) as list_price
from raw_products
