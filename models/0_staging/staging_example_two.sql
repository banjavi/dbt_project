with source_data as (
    select max(_fivetran_synced) as most_recent_sync from {{ source('animal_crossing_animals', 'insects') }}
    where _fivetran_deleted = 'False'
)

select
'source_table_two' as table_name
, most_recent_sync
from source_data
