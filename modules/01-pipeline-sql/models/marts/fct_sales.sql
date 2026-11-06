-- grain: 1 wiersz = 1 linia faktury; klient/produkt spoza wymiaru -> 'UNKNOWN'; korekty (ujemna ilość) zostają
select
    i.invoice_id,
    i.invoice_date,
    coalesce(c.customer_id, 'UNKNOWN')                     as customer_id,
    coalesce(p.product_id, 'UNKNOWN')                      as product_id,
    i.quantity,
    i.unit_price,
    i.net_amount,
    i.currency
from stg_invoices i
left join dim_customer c on c.customer_id = i.customer_id
left join dim_product  p on p.product_id  = i.product_id
