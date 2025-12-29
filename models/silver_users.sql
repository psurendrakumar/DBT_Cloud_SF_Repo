select 
    ID,
    CREATED_AT,
    CITY,
    STATE,
    extract(year from to_date(BIRTH_DATE, 'YYYY-MM-DD')) as birth_year,
    SOURCE as sales_channel
from 
{{ ref('bronze_users') }}