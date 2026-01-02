select 
    ID,
    to_date(CREATED_AT) as order_date,
    USER_ID,
    PRODUCT_ID,
    QUANTITY,
    UNIT_PRICE,
    {{ multiply_columns_and_round('QUANTITY', 'UNIT_PRICE') }} as order_amount
from 
{{ ref('bronze_orders') }}