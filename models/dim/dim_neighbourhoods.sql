WITH src_neighbourhoods AS (
    SELECT * FROM {{ref('src_neighbourhoods')}}
)
SELECT
    nbhd_district
FROM src_neighbourhoods