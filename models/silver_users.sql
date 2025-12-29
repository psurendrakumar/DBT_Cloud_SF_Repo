select 
    ID,
    CREATED_AT,
    CITY,
    STATE,
    year(BIRTH_DATE) as birth_year,
    SOURCE as sales_channel
from 
{{ ref('bronze_users') }}