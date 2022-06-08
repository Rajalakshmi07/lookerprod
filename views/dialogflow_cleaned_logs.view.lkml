view: dialogflow_cleaned_logs {
  sql_table_name: `qp-qai-training-1-2021-05.Looker_training_prod_rajalakshmi.dialogflow_cleaned_logs`
    ;;

  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: intent_detection_confidence {
    type: number
    sql: ${TABLE}.intent_detection_confidence ;;
  }

  dimension: intent_triggered {
    type: string
    sql: ${TABLE}.intent_triggered ;;
  }

  dimension: is_fallback {
    type: yesno
    sql: ${TABLE}.isFallback ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.language_code ;;
  }

  dimension: magnitude {
    type: number
    sql: ${TABLE}.magnitude ;;
  }

  dimension: month_number {
    type: number
    sql: ${TABLE}.month_number ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}.query_text ;;
  }

  dimension: query_text_redacted {
    type: string
    sql: ${TABLE}.query_text_redacted ;;
  }

  dimension: response_id {
    type: string
    sql: ${TABLE}.response_ID ;;
  }

  dimension: sentiment_score {
    type: number
    sql: ${TABLE}.sentiment_score ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_ID ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension_group: time_stamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      hour_of_day,
      year
    ]
    sql: ${TABLE}.time_stamp ;;
  }

  dimension:  Hour_Distribution{
    type: string
    sql: CASE
          WHEN ${time_stamp_hour_of_day}=00 THEN "12am-1am"
          WHEN ${time_stamp_hour_of_day}=01  THEN "1am-2am"
          WHEN ${time_stamp_hour_of_day}=02 THEN "2am-3am"
          WHEN ${time_stamp_hour_of_day}=03  THEN "3am-4am"
          WHEN ${time_stamp_hour_of_day}=04  THEN "4am-5am"
          WHEN ${time_stamp_hour_of_day}=05 THEN "5am-6am"
          WHEN ${time_stamp_hour_of_day}=06  THEN "6am-7am"
          WHEN ${time_stamp_hour_of_day}=07   THEN "7am-8am"
          WHEN ${time_stamp_hour_of_day}=08 THEN "8am-9am"
          WHEN ${time_stamp_hour_of_day}=09  THEN "9am-10am"
          WHEN ${time_stamp_hour_of_day}=10  THEN "10am-11am"
          WHEN ${time_stamp_hour_of_day}=11   THEN "11am-12am"
          WHEN ${time_stamp_hour_of_day}=12  THEN "12pm-1pm"
          WHEN ${time_stamp_hour_of_day}=13  THEN "1pm-2pm"
          WHEN ${time_stamp_hour_of_day}=14 THEN "2pm-3pm"
          WHEN ${time_stamp_hour_of_day}=15  THEN "3pm-4pm"
          WHEN ${time_stamp_hour_of_day}=16 THEN "4pm-5pm"
          WHEN ${time_stamp_hour_of_day}=17  THEN "5pm-6pm"
          WHEN ${time_stamp_hour_of_day}=18 THEN "6pm-7pm"
          WHEN ${time_stamp_hour_of_day}=19  THEN "7pm-8pm"
          WHEN ${time_stamp_hour_of_day}=20  THEN "8pm-9pm"
          WHEN ${time_stamp_hour_of_day}=21  THEN "9pm-10pm"
          WHEN ${time_stamp_hour_of_day}=22  THEN "10pm-11pm"
          Else "11pm-12am"

      END ;;
  }


  dimension: week_number {
    type: number
    sql: ${TABLE}.week_number ;;
  }

  dimension: sentiment_distribution{
    type: string
    sql:  CASE WHEN ${magnitude} > 3 and ${sentiment_score} between 0.25 and 1 THEN 'Positive'
               WHEN ${magnitude} <= 3 and ${sentiment_score} between 0.25 and 1 THEN 'Partially Positive'
               WHEN ${magnitude} <= 3 and ${sentiment_score} between -1 and -0.25 THEN 'Partially Negative'
               WHEN ${magnitude} > 3 and ${sentiment_score} between -1 and -0.25 THEN 'Negative'
               ELSE "Neutral"
          End;;
  }

  dimension: Sentiment_ordering {
    type: number
    sql:  CASE WHEN ${sentiment_distribution}= 'Negative' THEN 1
               WHEN ${sentiment_distribution}='Partially Negative' THEN 2
               WHEN ${sentiment_distribution}='Partially Positive' THEN 4
               WHEN ${sentiment_distribution}='Positive' THEN 5
               ELSE 3
          END;;
  }





  measure: Avg_Sentiment_Score{
    type: average
    sql: ${TABLE}.sentiment_score ;;
    value_format: "0.##"
  }

  measure: distinct_session_id{
    type: count_distinct
    sql: ${session_id} ;;
  }
  measure: distinct_date{
    type: count_distinct
    sql: ${date_raw} ;;
  }
  measure: Avg_ses_per_day{
    type:number
    sql: COALESCE(${distinct_session_id}/ NULLIF(${distinct_date},0),0) ;;
  }
  measure: queries_count{
    type:count_distinct
    sql: ${response_id} ;;
  }
  measure: Avg_Query_per_ses{
    type:number
    sql: COALESCE(${queries_count}/NULLIF(${distinct_session_id},0),0) ;;
  }
  measure: Unhandled_count {
    type: number
    sql: COALESCE(sum (case
           when ${is_fallback} then 1
           else 0
           end ),0) ;;
  }
  measure: Handled_count {
    type: number
    sql: COALESCE(sum (case
           when ${is_fallback} then 0
           else 1
           end ),0) ;;
  }
  measure: Sucess_rate {
    type: number
    sql: COALESCE(${Handled_count}/NULLIF(${count},0),0) ;;
    value_format_name: percent_2
  }
  measure: fallback_count{
    type: sum
    sql: case when ${is_fallback} then 1 else 0 end ;;
  }

  measure: agent_count {
    type: sum
    sql: case when ${intent_triggered} like "LiveAgentTransfer" then 1 else 0  end;;

  }





  measure: count {
    type: count
    drill_fields: []
  }
}
