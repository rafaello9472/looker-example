view: pollution_by_country {
  derived_table: {
    sql: SELECT
          COUNT(global_air_pollution.PM2_5_AQI_Value) AS global_air_pollution_pm2_5_aqi_value,
          global_air_pollution.Country  AS global_air_pollution_country
      FROM `looker_demo.global_air_pollution`
           AS global_air_pollution
      GROUP BY
          2
      ORDER BY
          1 DESC
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: global_air_pollution_pm2_5_aqi_value {
    type: number
    sql: ${TABLE}.global_air_pollution_pm2_5_aqi_value ;;
  }

  dimension: global_air_pollution_country {
    type: string
    sql: ${TABLE}.global_air_pollution_country ;;
  }

  set: detail {
    fields: [global_air_pollution_pm2_5_aqi_value, global_air_pollution_country]
  }
}
