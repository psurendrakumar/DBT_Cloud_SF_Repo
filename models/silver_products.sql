select 
    ID,
    CREATED_AT,
    TITLE as product_name,
    CATEGORY,
    EAN,
    VENDOR,
    PRICE
from 
{{ ref('bronze_products') }}