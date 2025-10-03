with new_york_taxis as (
       select * from nyctlc
   ),
   final as (
     SELECT
       vendorID,
       CAST(lpepPickupDatetime AS DATE) AS trip_date,
       COUNT(*) AS trip_count
     FROM
         [NYC Taxi-Green].[dbo].[nyctlc]
     GROUP BY
         vendorID,
         CAST(lpepPickupDatetime AS DATE)
   
   )
   select * from final
   