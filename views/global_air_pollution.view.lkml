view: global_air_pollution {
  sql_table_name: `looker_demo.global_air_pollution`
    ;;

  dimension: aqi_category {
    type: string
    sql: ${TABLE}.AQI_Category ;;
  }

  dimension: aqi_value {
    type: number
    sql: ${TABLE}.AQI_Value ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: co_aqi_category {
    type: string
    sql: ${TABLE}.CO_AQI_Category ;;
  }

  dimension: co_aqi_value {
    type: number
    sql: ${TABLE}.CO_AQI_Value ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: no2_aqi_category {
    type: string
    sql: ${TABLE}.NO2_AQI_Category ;;
  }

  dimension: no2_aqi_value {
    type: number
    sql: ${TABLE}.NO2_AQI_Value ;;
  }

  dimension: ozone_aqi_category {
    type: string
    sql: ${TABLE}.Ozone_AQI_Category ;;
  }

  dimension: ozone_aqi_value {
    type: number
    sql: ${TABLE}.Ozone_AQI_Value ;;
  }

  dimension: pm2_5_aqi_category {
    type: string
    sql: ${TABLE}.PM2_5_AQI_Category ;;
  }

  dimension: pm2_5_aqi_value {
    type: number
    sql: ${TABLE}.PM2_5_AQI_Value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: pm2_5_sum {
    type: sum
    sql: ${TABLE}.PM2_5_AQI_Value ;;
  }
}
