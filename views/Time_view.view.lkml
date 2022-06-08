view: time_view {
  derived_table: {
    explore_source: dialogflow_cleaned_logs {
      column: session_id {field:dialogflow_cleaned_logs.session_id}

      column: timestamp {field:dialogflow_cleaned_logs.time_stamp_raw }
      derived_column: min_timestamp {sql: min(timestamp) over (partition by session_id );;}
      derived_column: max_timestamp {sql: max(timestamp) over (partition by session_id );;}
      bind_all_filters: yes
    }

  }
  dimension: session_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.session_id ;;
  }
  dimension: session_duration_sec {
    type: number
    sql: timestamp_diff(${TABLE}.max_timestamp,${TABLE}.min_timestamp,second) ;;
  }
  dimension: session_duration_min {
    type: number
    sql: timestamp_diff(${TABLE}.max_timestamp,${TABLE}.min_timestamp,minute) ;;
  }

  dimension: session_Duration_distribution{
    type: string
    sql: case
      when ${session_duration_sec} < 60 then "<1 Min"
      when ${session_duration_sec} >= 60 and ${session_duration_sec} < 180 then "1-3 Min"
      when ${session_duration_sec} >= 180 and ${session_duration_sec} < 300 then "3-5 Min"
      when ${session_duration_sec} >= 300 and ${session_duration_sec} < 420 then "5-7 Min"
      Else ">7 Min"
      End ;;
  }
  dimension: Session_Duration_Distribution_ordering {
    type: number
    sql:  case
        when ${session_Duration_distribution} = "<1 Min" then 1
        when ${session_Duration_distribution} = "1-3 Min" then 2
        when ${session_Duration_distribution} = "3-5 Min" then 3
        when ${session_Duration_distribution} = "5-7 Min" then 4
        else 5
        End ;;
  }

  measure: avg_duration_hidden {
    type: average_distinct
    sql_distinct_key: ${session_id} ;;
    sql:COALESCE((${session_duration_sec}/86400.0),0) ;;
    value_format: "[mm]\" m \"ss\" s\""
    hidden: yes
  }

  measure: avg_duration {
    type: average
    sql:COALESCE((${session_duration_sec}/86400.0),0) ;;
    value_format: "[mm]\" m \"ss\" s\""
  }


}
