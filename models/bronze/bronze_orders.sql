{{
    config(
        materialized='incremental',
        unique_key= 'id'
    )
}}

select 
*
from 
{{ source('landing','orders') }}

{% if is_incremental %}
    where created_at > ( select COALESCE(max(created_at),'1900-01-01') from {{this}} )
{% endif %}