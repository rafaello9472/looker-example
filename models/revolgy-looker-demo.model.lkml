connection: "test-conn-sa"

# include all the views
include: "/views/**/*.view"

datagroup: revolgy-looker-demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: revolgy-looker-demo_default_datagroup

explore: global_air_pollution {}
