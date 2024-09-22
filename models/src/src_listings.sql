WITH raw_listings AS (
    SELECT * FROM {{source('airbnb','listings')}}
)
SELECT 
    ID AS listing_id,
    NAME AS listing_description,
    HOST_ID,
    HOST_NAME,
    NEIGHBOURHOOD AS nbhd_name,
    ROOM_TYPE,
    PRICE,
    MINIMUM_NIGHTS,
    NUMBER_OF_REVIEWS,
    LAST_REVIEW,
    CALCULATED_HOST_LISTINGS_COUNT,
    AVAILABILITY_365 AS days_avail_year,
    NUMBER_OF_REVIEWS_LTM,
    LICENSE
FROM raw_listings