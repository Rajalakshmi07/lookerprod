view: session_level_info {
  sql_table_name: `qp-qai-training-1-2021-05.Looker_training_prod_rajalakshmi.session_level_info`
    ;;

  dimension: entry_intent {
    type: string
    sql: ${TABLE}.entry_intent ;;
  }

  dimension: exit_intent {
    type: string
    sql: ${TABLE}.exit_intent ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: second_last_exit_intent {
    type: string
    sql: ${TABLE}.second_last_exit_intent ;;
  }

  dimension: session_duration {
    type: number
    sql: ${TABLE}.session_duration ;;
  }

  dimension: session_minutes {
    type: number
    sql: ${TABLE}.session_minutes ;;
  }



  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension_group: session_start {
    type: time
    timeframes: [
      raw,
      time,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.session_start ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }

  measure: avg_session_duration {
    type: average
    sql:COALESCE((${session_duration}/86400.0),0) ;;
    value_format: "[mm]\" m \"ss\" s\""
  }

}
