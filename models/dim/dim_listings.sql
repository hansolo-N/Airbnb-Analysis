WITH src_listings AS (
    SELECT * FROM {{ref('src_listings')}}
)
SELECT 
    listing_id,
    listing_description,
    HOST_ID,
    HOST_NAME,
    nbhd_name,
    ROOM_TYPE,
    NVL(PRICE,0) AS PRICE,
    CASE
        WHEN MINIMUM_NIGHTS = 0 THEN 1
        ELSE MINIMUM_NIGHTS
    END AS MINIMUM_NIGHTS,
    NUMBER_OF_REVIEWS,
    LAST_REVIEW,
    NVL(CALCULATED_HOST_LISTINGS_COUNT,0) AS CALCULATED_HOST_LISTINGS,
    days_avail_year,
    NUMBER_OF_REVIEWS_LTM,
    NVL(LICENSE,'no license') AS LICENSE

FROM src_listings