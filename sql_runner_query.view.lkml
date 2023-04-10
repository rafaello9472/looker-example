view: sql_runner_query {
  derived_table: {
    sql: SELECT Country, CAST(AVG(PM2_5_AQI_VALUE) AS INT) AS avg_pm2_5 FROM `tof-testing-236018.looker_demo.global_air_pollution` GROUP BY 1 ORDER BY 2 DESC LIMIT 100
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: country {
    type: string
    sql: ${TABLE}.Country ;;
  }

  dimension: avg_pm2_5 {
    type: number
    sql: ${TABLE}.avg_pm2_5 ;;
  }

  set: detail {
    fields: [country, avg_pm2_5]
  }
}
