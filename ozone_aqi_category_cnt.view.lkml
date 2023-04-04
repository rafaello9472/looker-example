view: ozone_aqi_category_cnt {
  derived_table: {
    sql: SELECT Ozone_AQI_Category, COUNT(*) AS cnt FROM `tof-testing-236018.looker_demo.global_air_pollution` GROUP BY 1 ORDER BY 2 DESC LIMIT 100
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ozone_aqi_category {
    type: string
    sql: ${TABLE}.Ozone_AQI_Category ;;
  }

  dimension: cnt {
    type: number
    sql: ${TABLE}.cnt ;;
  }

  set: detail {
    fields: [ozone_aqi_category, cnt]
  }
}
