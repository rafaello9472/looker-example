view: world_happiness_report_2016 {
  sql_table_name: `looker_demo.world_happiness_report_2016`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: dystopia_residual {
    type: number
    sql: ${TABLE}.Dystopia_Residual ;;
  }

  dimension: economy__gdp_per_capita_ {
    type: number
    sql: ${TABLE}.Economy__GDP_per_Capita_ ;;
  }

  dimension: family {
    type: number
    sql: ${TABLE}.Family ;;
  }

  dimension: freedom {
    type: number
    sql: ${TABLE}.Freedom ;;
  }

  dimension: generosity {
    type: number
    sql: ${TABLE}.Generosity ;;
  }

  dimension: happiness_rank {
    type: number
    sql: ${TABLE}.Happiness_Rank ;;
  }

  dimension: happiness_score {
    type: number
    sql: ${TABLE}.Happiness_Score ;;
  }

  dimension: health__life_expectancy_ {
    type: number
    sql: ${TABLE}.Health__Life_Expectancy_ ;;
  }

  dimension: lower_confidence_interval {
    type: number
    sql: ${TABLE}.Lower_Confidence_Interval ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: trust__government_corruption_ {
    type: number
    sql: ${TABLE}.Trust__Government_Corruption_ ;;
  }

  dimension: upper_confidence_interval {
    type: number
    sql: ${TABLE}.Upper_Confidence_Interval ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: avg_happiness_score {
    type: average
    sql: ${TABLE}.Happiness_Score ;;
  }

  measure: max_happiness_score {
    type: max
    sql: ${TABLE}.Happiness_Score ;;
  }

  measure: min_happiness_score {
    type: min
    sql: ${TABLE}.Happiness_Score ;;
  }
}
