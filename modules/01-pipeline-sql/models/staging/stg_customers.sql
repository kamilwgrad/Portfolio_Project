-- kraj -> kod ISO, segment ujednolicony (brak -> 'Unknown'), usunięcie zduplikowanych wierszy
select distinct
    trim(customer_id)                                      as customer_id,
    trim(customer_name)                                    as customer_name,
    case upper(trim(country))
        when 'POLAND' then 'PL'
        else upper(trim(country))
    end                                                    as country,
    case lower(trim(segment))
        when 'retail'    then 'Retail'
        when 'wholesale' then 'Wholesale'
        when ''          then 'Unknown'
        else coalesce(trim(segment), 'Unknown')
    end                                                    as segment
from raw_customers
