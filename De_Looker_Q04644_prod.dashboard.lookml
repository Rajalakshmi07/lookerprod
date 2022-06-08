- dashboard: de_looker_q04644_prod
  title: De Looker Q04644 Prod
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: gaCfndpiH0lE91rxRVU95u
  elements:
  - title: Total Session
    name: Total Session
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [count_of_session_id]
    dynamic_fields: [{measure: count_of_session_id, based_on: dialogflow_cleaned_logs.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Session
    series_types: {}
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 1
    col: 0
    width: 5
    height: 3
  - title: New Tile
    name: New Tile
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [distinct_session_id, distinct_response_id, dialogflow_cleaned_logs.Avg_Query_per_ses]
    dynamic_fields: [{category: measure, expression: !!null '', label: Distinct_session_id,
        value_format: !!null '', value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_response_id, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.response_id,
        _kind_hint: measure, measure: distinct_response_id, type: count_distinct,
        _type_hint: number}, {category: table_calculation, expression: "${distinct_response_id}/${distinct_session_id}",
        label: Avg Queries/Session, value_format: '0.00', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Queries/Session
    value_format: '0'
    hidden_fields: [distinct_response_id, distinct_session_id]
    series_types: {}
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 4
    col: 0
    width: 5
    height: 3
  - title: Avg Session/Day
    name: Avg Session/Day
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [distinct_session_id, distinct_date_count, dialogflow_cleaned_logs.Avg_ses_per_day]
    dynamic_fields: [{category: measure, expression: !!null '', label: Distinct_session_id,
        value_format: !!null '', value_format_name: !!null '', based_on: dialogflow_cleaned_logs.session_id,
        _kind_hint: measure, measure: distinct_session_id, type: count_distinct, _type_hint: number},
      {category: measure, expression: !!null '', label: Distinct_response_id, value_format: !!null '',
        value_format_name: !!null '', based_on: dialogflow_cleaned_logs.response_id,
        _kind_hint: measure, measure: distinct_response_id, type: count_distinct,
        _type_hint: number}, {category: table_calculation, expression: "${distinct_response_id}/${distinct_session_id}",
        label: Avg Queries/Session, value_format: '0.00', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_queriessession, _type_hint: number,
        is_disabled: true}, {category: measure, expression: !!null '', label: distinct_date_count,
        value_format: !!null '', value_format_name: !!null '', based_on: dialogflow_cleaned_logs.date_date,
        _kind_hint: measure, measure: distinct_date_count, type: count_distinct, _type_hint: number},
      {category: table_calculation, expression: "${distinct_session_id}/${distinct_date_count}",
        label: Avg Session/Day, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: avg_sessionday, _type_hint: number,
        is_disabled: true}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Session/Day
    value_format: '0'
    hidden_fields: [distinct_session_id, distinct_date_count]
    series_types: {}
    defaults_version: 1
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 4
    col: 5
    width: 7
    height: 3
  - title: Success Rate
    name: Success Rate
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.Sucess_rate]
    dynamic_fields: [{args: [dialogflow_cleaned_logs.count], calculation_type: percent_of_row,
        category: table_calculation, based_on: dialogflow_cleaned_logs.count, label: Percent
          of row, source_field: dialogflow_cleaned_logs.count, table_calculation: percent_of_row,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {args: [percent_of_row], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: percent_of_row, label: Percent of  Percent
          of row, source_field: percent_of_row, table_calculation: percent_of_percent_of_row,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {args: [dialogflow_cleaned_logs.count],
        calculation_type: percent_of_column_sum, category: table_calculation, based_on: dialogflow_cleaned_logs.count,
        label: Percent of Dialogflow Cleaned Logs Count, source_field: dialogflow_cleaned_logs.count,
        table_calculation: percent_of_dialogflow_cleaned_logs_count, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number, is_disabled: true}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Success Rate
    value_format: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 13
    col: 16
    width: 8
    height: 3
  - title: TOP 10 NEGATIVE QUERIES
    name: TOP 10 NEGATIVE QUERIES
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_grid
    fields: [dialogflow_cleaned_logs.query_text, dialogflow_cleaned_logs.sentiment_score]
    filters:
      dialogflow_cleaned_logs.sentiment_score: "[-1, -0.33]"
    sorts: [dialogflow_cleaned_logs.sentiment_score]
    limit: 10
    dynamic_fields: [{category: dimension, expression: 'if(${dialogflow_cleaned_logs.is_fallback},"Handled","Unhandled")',
        label: QueryDistribution, value_format: !!null '', value_format_name: !!null '',
        dimension: querydistribution, _kind_hint: dimension, _type_hint: string},
      {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 4a543302-b64d-409c-9863-679b5b230aac
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      dialogflow_cleaned_logs.sentiment_score: 145
    series_cell_visualizations:
      average_of_sentiment_score:
        is_active: false
      dialogflow_cleaned_logs.sentiment_score:
        is_active: false
    series_text_format:
      average_of_sentiment_score:
        align: left
      dialogflow_cleaned_logs.sentiment_score:
        bg_color: "#72D16D"
        align: center
      dialogflow_cleaned_logs.query_text:
        align: center
    header_font_color: "#f5fffc"
    header_background_color: "#2a60c2"
    conditional_formatting: [{type: between, value: [-1, -0.33], background_color: "#ff6152",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: [dialogflow_cleaned_logs.sentiment_score]},
      {type: between, value: [-0.33, 0.33], background_color: '', font_color: "#FBB555",
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688},
        bold: false, italic: false, strikethrough: false, fields: [dialogflow_cleaned_logs.sentiment_score]},
      {type: between, value: [0.33, 1], background_color: '', font_color: "#72D16D",
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688},
        bold: false, italic: false, strikethrough: false, fields: []}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: false
    single_value_title: Avg Sentiment Score
    value_format: '0.00'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.sentiment_score,
            id: dialogflow_cleaned_logs.sentiment_score, name: Sentiment Score}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: true
    isStepped: false
    orientation: automatic
    labelPosition: inline
    percentType: total
    percentPosition: hidden
    valuePosition: right
    labelColorEnabled: true
    labelColor: "#FFF"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 26
    col: 12
    width: 12
    height: 5
  - title: TOP 10 POSITIVE QUERIES
    name: TOP 10 POSITIVE QUERIES
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_grid
    fields: [dialogflow_cleaned_logs.query_text, dialogflow_cleaned_logs.sentiment_score]
    filters:
      dialogflow_cleaned_logs.sentiment_score: "[0.33, 1]"
    sorts: [dialogflow_cleaned_logs.sentiment_score desc]
    limit: 10
    dynamic_fields: [{category: dimension, expression: 'if(${dialogflow_cleaned_logs.is_fallback},"Handled","Unhandled")',
        label: QueryDistribution, value_format: !!null '', value_format_name: !!null '',
        dimension: querydistribution, _kind_hint: dimension, _type_hint: string},
      {measure: average_of_sentiment_score, based_on: dialogflow_cleaned_logs.sentiment_score,
        expression: '', label: Average of Sentiment Score, type: average, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 4a543302-b64d-409c-9863-679b5b230aac
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      dialogflow_cleaned_logs.sentiment_score: 145
    series_cell_visualizations:
      average_of_sentiment_score:
        is_active: false
      dialogflow_cleaned_logs.sentiment_score:
        is_active: false
    series_text_format:
      average_of_sentiment_score:
        align: left
      dialogflow_cleaned_logs.sentiment_score:
        bg_color: "#72D16D"
        align: center
      dialogflow_cleaned_logs.query_text:
        align: center
    header_font_color: "#f5fffc"
    header_background_color: "#2a60c2"
    conditional_formatting: [{type: between, value: [-1, -0.33], background_color: "#ff6152",
        font_color: '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: [dialogflow_cleaned_logs.sentiment_score]},
      {type: between, value: [-0.33, 0.33], background_color: '', font_color: "#FBB555",
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688},
        bold: false, italic: false, strikethrough: false, fields: [dialogflow_cleaned_logs.sentiment_score]},
      {type: between, value: [0.33, 1], background_color: "#72D16D", font_color: '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688},
        bold: false, italic: false, strikethrough: false, fields: [dialogflow_cleaned_logs.sentiment_score]}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: false
    single_value_title: Avg Sentiment Score
    value_format: '0.00'
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.sentiment_score,
            id: dialogflow_cleaned_logs.sentiment_score, name: Sentiment Score}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: true
    isStepped: false
    orientation: automatic
    labelPosition: inline
    percentType: total
    percentPosition: hidden
    valuePosition: right
    labelColorEnabled: true
    labelColor: "#FFF"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 26
    col: 0
    width: 12
    height: 5
  - title: USER UTTERANCE
    name: USER UTTERANCE
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_grid
    fields: [dialogflow_cleaned_logs.query_text, count_of_session_id]
    filters:
      dialogflow_cleaned_logs.query_text: "-NULL"
    sorts: [count_of_session_id desc]
    dynamic_fields: [{measure: count_of_session_id, based_on: dialogflow_cleaned_logs.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      count_of_session_id: Total Session
      dialogflow_cleaned_logs.query_text: User Query
    series_cell_visualizations:
      count_of_session_id:
        is_active: false
        value_display: true
    series_text_format:
      count_of_session_id:
        align: left
      dialogflow_cleaned_logs.query_text:
        align: left
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#FCCF41",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: 39798c77-0126-4f2f-a920-8d7ce381fa5a, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    color_range: ["#75E2E2", "#3EB0D5", "#4276BE", "#592EC2", "#9174F0", "#B1399E",
      "#B32F37", "#E57947", "#FBB555", "#FFD95F", "#C2DD67", "#72D16D"]
    show_percent: false
    rotation: false
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    up_color: false
    down_color: false
    total_color: false
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    x_axis_gridlines: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 21
    col: 0
    width: 24
    height: 5
  - title: Total Queries
    name: Total Queries
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.count]
    dynamic_fields: [{measure: count_of_query_text, based_on: dialogflow_cleaned_logs.query_text,
        expression: '', label: Count of Query Text, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Queries
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 13
    col: 0
    width: 5
    height: 3
  - title: Weekly Traffic
    name: Weekly Traffic
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [count_of_session_id, dialogflow_cleaned_logs.date_week]
    fill_fields: [dialogflow_cleaned_logs.date_week]
    sorts: [dialogflow_cleaned_logs.date_week desc]
    dynamic_fields: [{measure: count_of_session_id, based_on: dialogflow_cleaned_logs.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Week
    series_types: {}
    series_colors:
      count_of_session_id: "#4675d6"
    series_labels:
      count_of_session_id: Total Session
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 31
    col: 12
    width: 12
    height: 6
  - title: TOP ENTRY INTENT
    name: TOP ENTRY INTENT
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: session_level_info
    type: looker_column
    fields: [session_level_info.entry_intent, count_of_session_id]
    sorts: [count_of_session_id desc]
    dynamic_fields: [{measure: count_of_session_id, based_on: session_level_info.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total Session, orientation: left, series: [{axisId: count_of_session_id,
            id: count_of_session_id, name: Count of Session ID}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 4,
        type: linear}]
    x_axis_label: Entry Intent
    series_colors:
      count_of_session_id: "#4e8dd1"
    defaults_version: 1
    listen:
      Time Stamp Date: session_level_info.session_start_date
    row: 42
    col: 0
    width: 12
    height: 6
  - title: TOP EXIT INTENT
    name: TOP EXIT INTENT
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: session_level_info
    type: looker_column
    fields: [count_of_session_id, session_level_info.exit_intent]
    sorts: [count_of_session_id desc]
    limit: 5
    dynamic_fields: [{measure: count_of_session_id, based_on: session_level_info.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total Session, orientation: left, series: [{axisId: count_of_session_id,
            id: count_of_session_id, name: Count of Session ID}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 4,
        type: linear}]
    x_axis_label: Exit Intent
    series_colors:
      count_of_session_id: "#4e93d1"
    defaults_version: 1
    listen:
      Time Stamp Date: session_level_info.session_start_date
    row: 42
    col: 12
    width: 12
    height: 6
  - title: Intent Wise Information
    name: Intent Wise Information
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_grid
    fields: [dialogflow_cleaned_logs.intent_triggered, count_of_session_id_2, dialogflow_cleaned_logs.Avg_Sentiment_Score]
    sorts: [dialogflow_cleaned_logs.Avg_Sentiment_Score desc]
    dynamic_fields: [{measure: count_of_session_id, based_on: dialogflow_cleaned_logs.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {category: measure, expression: !!null '', label: Distinct_response_id,
        value_format: !!null '', value_format_name: !!null '', based_on: dialogflow_cleaned_logs.response_id,
        _kind_hint: measure, measure: distinct_response_id, type: count_distinct,
        _type_hint: number}, {measure: count_of_session_id_2, based_on: dialogflow_cleaned_logs.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      count_of_session_id: Total Session
      count_of_session_id_2: Total Session
    series_cell_visualizations:
      count_of_session_id_2:
        is_active: false
    series_text_format:
      count_of_session_id_2: {}
    header_background_color: "#3395ff"
    conditional_formatting: [{type: between, value: [-1, -0.33], background_color: "#b25450",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [dialogflow_cleaned_logs.Avg_Sentiment_Score]},
      {type: between, value: [-0.33, 0.33], background_color: "#FBB555", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [dialogflow_cleaned_logs.Avg_Sentiment_Score]},
      {type: between, value: [0.33, 1], background_color: "#72D16D", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [dialogflow_cleaned_logs.Avg_Sentiment_Score]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: count_of_session_id,
            id: count_of_session_id, name: Total Session}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: average_queries, id: average_queries,
            name: Average Queries}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Timestamp
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      count_of_session_id: "#45d168"
      average_queries: "#2461c2"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 48
    col: 12
    width: 12
    height: 6
  - title: " Query Sentiment Distribution"
    name: " Query Sentiment Distribution"
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_pie
    fields: [dialogflow_cleaned_logs.count, dialogflow_cleaned_logs.sentiment_distribution,
      dialogflow_cleaned_logs.Sentiment_ordering]
    sorts: [dialogflow_cleaned_logs.Sentiment_ordering]
    dynamic_fields: [{category: dimension, expression: "case(\n  when(${dialogflow_cleaned_logs.sentiment_score}\
          \ >= -1 AND ${dialogflow_cleaned_logs.sentiment_score} <=-0.5,\"Negative\"\
          ),\n  when(${dialogflow_cleaned_logs.sentiment_score} > -0.5 AND ${dialogflow_cleaned_logs.sentiment_score}\
          \ <=-0.33,\"Partially Negative\"),\n  when(${dialogflow_cleaned_logs.sentiment_score}\
          \ > -0.33 AND ${dialogflow_cleaned_logs.sentiment_score} <=0.33,\"Neutral\"\
          ),\n  when(${dialogflow_cleaned_logs.sentiment_score} > 0.33 AND ${dialogflow_cleaned_logs.sentiment_score}\
          \ <=0.6,\"Partially positive\"),\n  \"Positive\"\n  \n  \n  \n)", label: Sentiment
          Distribution, value_format: !!null '', value_format_name: !!null '', dimension: sentiment_distribution,
        _kind_hint: dimension, _type_hint: string}]
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    series_colors:
      dialogflow_cleaned_logs.count: "#48a2d6"
      Neutral: "#fff9a3"
      Partially positive: "#d2de84"
      Positive: "#5ad155"
      Negative: "#e64f44"
      Partially Negative: "#e5aa85"
    series_labels:
      dialogflow_cleaned_logs.count: Total Queries
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: dialogflow_cleaned_logs.count,
            id: dialogflow_cleaned_logs.count, name: Total Queries}], showLabels: true,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Sentiment Distribution
    series_types: {}
    label_color: [green]
    defaults_version: 1
    hidden_fields: [dialogflow_cleaned_logs.Sentiment_ordering]
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 16
    col: 16
    width: 8
    height: 5
  - title: Weekly Average Sentiment Trend
    name: Weekly Average Sentiment Trend
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [dialogflow_cleaned_logs.date_week, dialogflow_cleaned_logs.Avg_Sentiment_Score]
    fill_fields: [dialogflow_cleaned_logs.date_week]
    filters:
      dialogflow_cleaned_logs.date_week: NOT NULL
    sorts: [dialogflow_cleaned_logs.date_week desc]
    dynamic_fields: [{category: dimension, expression: 'if(${dialogflow_cleaned_logs.is_fallback},"Handled","Unhandled")',
        label: QueryDistribution, value_format: !!null '', value_format_name: !!null '',
        dimension: querydistribution, _kind_hint: dimension, _type_hint: string}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 4a543302-b64d-409c-9863-679b5b230aac
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.Avg_Sentiment_Score,
            id: dialogflow_cleaned_logs.Avg_Sentiment_Score, name: Avg Sentiment Score}],
        showLabels: true, showValues: true, maxValue: 1, minValue: -1, valueFormat: '0.00',
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 87, type: linear}]
    x_axis_label: Week
    series_types: {}
    show_null_points: false
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: between, value: [-1, -0.33], background_color: "#B32F37",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: between, value: [-0.33, 0.33], background_color: "#FBB555",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: between, value: [0.33, 1], background_color: "#72D16D",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: true
    isStepped: false
    orientation: automatic
    labelPosition: inline
    percentType: total
    percentPosition: hidden
    valuePosition: right
    labelColorEnabled: true
    labelColor: "#FFF"
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 16
    col: 7
    width: 9
    height: 5
  - title: Avg Sentiment Score
    name: Avg Sentiment Score
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [dialogflow_cleaned_logs.Avg_Sentiment_Score]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 10.5
    arm_weight: 22
    spinner_length: 130
    spinner_weight: 36
    target_length: 10
    target_gap: 10
    target_weight: 25
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 5
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    angle: 90
    cutout: 30
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
    bar_arm_length: 0
    bar_arm_weight: 0
    bar_spinner_length: 0
    bar_spinner_weight: 0
    bar_style: vertical
    bar_range_min: -1
    bar_range_max: 1
    bar_value_label_type: both
    bar_value_label_font: 8
    bar_value_label_padding: 45
    bar_target_source: 'off'
    bar_target_label_type: none
    bar_target_label_font: 3
    bar_label_font_size: 3
    bar_fill_color: "#0092E5"
    bar_background_color: "#CECECE"
    bar_spinner_color: "#282828"
    bar_range_color: "#282828"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    series_types: {}
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 16
    col: 0
    width: 7
    height: 5
  - title: Handled Queries
    name: Handled Queries
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.Handled_count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Handled Queries
    series_types: {}
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 13
    col: 5
    width: 5
    height: 3
  - title: Unhandled Queries
    name: Unhandled Queries
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [dialogflow_cleaned_logs.Unhandled_count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Unhandled Queries
    value_format: ''
    series_types: {}
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 13
    col: 10
    width: 6
    height: 3
  - title: Traffic By Time
    name: Traffic By Time
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_area
    fields: [dialogflow_cleaned_logs.Hour_Distribution, count_of_session_id, dialogflow_cleaned_logs.time_stamp_hour_of_day]
    filters:
      dialogflow_cleaned_logs.time_stamp_hour_of_day: NOT NULL
    sorts: [dialogflow_cleaned_logs.time_stamp_hour_of_day]
    dynamic_fields: [{measure: count_of_session_id, based_on: dialogflow_cleaned_logs.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Hour Frame
    series_types: {}
    series_colors:
      count_of_session_id: "#3d8bd6"
    series_labels:
      count_of_session_id: Total Session
    hidden_fields: [dialogflow_cleaned_logs.time_stamp_hour_of_day]
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 31
    col: 0
    width: 12
    height: 6
  - title: Busiest Hour
    name: Busiest Hour
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_funnel
    fields: [dialogflow_cleaned_logs.Hour_Distribution, count_of_session_id, dialogflow_cleaned_logs.time_stamp_hour_of_day]
    filters:
      dialogflow_cleaned_logs.time_stamp_hour_of_day: NOT NULL
    sorts: [count_of_session_id desc]
    dynamic_fields: [{measure: count_of_session_id, based_on: dialogflow_cleaned_logs.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: hidden
    valuePosition: Hidden
    labelColorEnabled: false
    labelColor: "#FFF"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: true
    isStepped: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Hour Frame
    series_types: {}
    series_labels:
      count_of_session_id: Total Session
    hidden_fields: [dialogflow_cleaned_logs.time_stamp_hour_of_day]
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 1
    col: 12
    width: 12
    height: 6
  - title: Total Session (Copy)
    name: Total Session (Copy)
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: single_value
    fields: [time_view.avg_duration]
    filters:
      time_view.avg_duration: NOT NULL
    dynamic_fields: [{measure: count_of_session_id, based_on: dialogflow_cleaned_logs.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Avg Session Duration
    series_types: {}
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 1
    col: 5
    width: 7
    height: 3
  - title: Conversation Distribution vs Duration
    name: Conversation Distribution vs Duration
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [count_of_session_id, time_view.session_Duration_distribution, time_view.Session_Duration_Distribution_ordering]
    sorts: [count_of_session_id desc]
    dynamic_fields: [{measure: count_of_session_id, based_on: time_view.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Call Duration
    series_colors:
      count_of_session_id: "#2a60c2"
    series_labels:
      count_of_session_id: Total Session
    hidden_fields: [time_view.Session_Duration_Distribution_ordering]
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
    row: 37
    col: 0
    width: 12
    height: 5
  - title: Avg Sentiment Score vs Call Duration
    name: Avg Sentiment Score vs Call Duration
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [time_view.session_Duration_distribution, time_view.Session_Duration_Distribution_ordering,
      dialogflow_cleaned_logs.Avg_Sentiment_Score]
    sorts: [time_view.Session_Duration_Distribution_ordering]
    dynamic_fields: [{measure: count_of_session_id, based_on: time_view.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.Avg_Sentiment_Score,
            id: dialogflow_cleaned_logs.Avg_Sentiment_Score, name: Average Sentiment
              Score}], showLabels: true, showValues: true, maxValue: 1, minValue: -1,
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 38, type: linear}]
    x_axis_label: Call Duration
    series_colors:
      count_of_session_id: "#2a60c2"
      dialogflow_cleaned_logs.Avg_Sentiment_Score: "#437cd6"
    series_labels:
      count_of_session_id: Total Session
      dialogflow_cleaned_logs.Avg_Sentiment_Score: Average Sentiment Score
    hidden_fields: [time_view.Session_Duration_Distribution_ordering]
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
    row: 37
    col: 12
    width: 12
    height: 5
  - title: Total Queries vs Call Duration
    name: Total Queries vs Call Duration
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [time_view.session_Duration_distribution, time_view.Session_Duration_Distribution_ordering,
      dialogflow_cleaned_logs.queries_count]
    sorts: [time_view.Session_Duration_Distribution_ordering]
    dynamic_fields: [{measure: count_of_session_id, based_on: time_view.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: fc6882a7-e255-c6fc-724c-04d86e9c5ffd
        label: Custom
        type: discrete
        colors:
        - "#2b7bd6"
        - "#B1399E"
        - "#C2DD67"
        - "#592EC2"
        - "#4276BE"
        - "#72D16D"
        - "#FFD95F"
        - "#B32F37"
        - "#9174F0"
        - "#E57947"
        - "#75E2E2"
        - "#FBB555"
        - "#2b7bd6"
        - "#d68467"
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: dialogflow_cleaned_logs.queries_count,
            id: dialogflow_cleaned_logs.queries_count, name: Queries Count}], showLabels: true,
        showValues: true, maxValue: !!null '', minValue: !!null '', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 38, type: linear}]
    x_axis_label: Call Duration
    series_types: {}
    series_colors: {}
    series_labels:
      count_of_session_id: Total Session
      dialogflow_cleaned_logs.Avg_Sentiment_Score: Average Sentiment Score
      dialogflow_cleaned_logs.queries_count: Total Queries
    label_color: []
    hidden_fields: [time_view.Session_Duration_Distribution_ordering]
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
    row: 48
    col: 0
    width: 12
    height: 6
  - title: Weekly Intent Trend Over Time
    name: Weekly Intent Trend Over Time
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_line
    fields: [dialogflow_cleaned_logs.intent_triggered, dialogflow_cleaned_logs.time_stamp_week,
      count_of_session_id]
    pivots: [dialogflow_cleaned_logs.intent_triggered]
    fill_fields: [dialogflow_cleaned_logs.time_stamp_week]
    sorts: [dialogflow_cleaned_logs.time_stamp_week desc, dialogflow_cleaned_logs.intent_triggered]
    column_limit: 10000
    dynamic_fields: [{measure: count_of_session_id, based_on: dialogflow_cleaned_logs.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Total session, orientation: left, series: [{axisId: AcceptedInsurance
              - count_of_session_id, id: AcceptedInsurance - count_of_session_id,
            name: AcceptedInsurance}, {axisId: AcceptInsurance - count_of_session_id,
            id: AcceptInsurance - count_of_session_id, name: AcceptInsurance}, {axisId: AcceptInsurance
              - fallback - count_of_session_id, id: AcceptInsurance - fallback - count_of_session_id,
            name: AcceptInsurance - fallback}, {axisId: AcceptInsurance - no - count_of_session_id,
            id: AcceptInsurance - no - count_of_session_id, name: AcceptInsurance
              - no}, {axisId: AcceptInsurance - yes - count_of_session_id, id: AcceptInsurance
              - yes - count_of_session_id, name: AcceptInsurance - yes}, {axisId: AcceptInsurance
              - yes - fallback - count_of_session_id, id: AcceptInsurance - yes -
              fallback - count_of_session_id, name: AcceptInsurance - yes - fallback},
          {axisId: Acknowledge - count_of_session_id, id: Acknowledge - count_of_session_id,
            name: Acknowledge}, {axisId: Acknowledge - fallback - count_of_session_id,
            id: Acknowledge - fallback - count_of_session_id, name: Acknowledge -
              fallback}, {axisId: Acknowledge - no - count_of_session_id, id: Acknowledge
              - no - count_of_session_id, name: Acknowledge - no}, {axisId: Acknowledge
              - yes - count_of_session_id, id: Acknowledge - yes - count_of_session_id,
            name: Acknowledge - yes}, {axisId: Acknowledge - yes - fallback - count_of_session_id,
            id: Acknowledge - yes - fallback - count_of_session_id, name: Acknowledge
              - yes - fallback}, {axisId: AppointmentPsychiatrist - count_of_session_id,
            id: AppointmentPsychiatrist - count_of_session_id, name: AppointmentPsychiatrist},
          {axisId: AppointmentPsychiatrist - fallback - count_of_session_id, id: AppointmentPsychiatrist
              - fallback - count_of_session_id, name: AppointmentPsychiatrist - fallback},
          {axisId: AppointmentPsychiatrist - no - count_of_session_id, id: AppointmentPsychiatrist
              - no - count_of_session_id, name: AppointmentPsychiatrist - no}, {axisId: AppointmentPsychiatrist
              - no - fallback - count_of_session_id, id: AppointmentPsychiatrist -
              no - fallback - count_of_session_id, name: AppointmentPsychiatrist -
              no - fallback}, {axisId: AppointmentPsychiatrist - no - yes - count_of_session_id,
            id: AppointmentPsychiatrist - no - yes - count_of_session_id, name: AppointmentPsychiatrist
              - no - yes}, {axisId: AppointmentPsychiatrist - yes - count_of_session_id,
            id: AppointmentPsychiatrist - yes - count_of_session_id, name: AppointmentPsychiatrist
              - yes}, {axisId: AppointmentTherapist - count_of_session_id, id: AppointmentTherapist
              - count_of_session_id, name: AppointmentTherapist}, {axisId: AppointmentTherapist
              - fallback - count_of_session_id, id: AppointmentTherapist - fallback
              - count_of_session_id, name: AppointmentTherapist - fallback}, {axisId: AppointmentTherapist
              - no - count_of_session_id, id: AppointmentTherapist - no - count_of_session_id,
            name: AppointmentTherapist - no}, {axisId: AppointmentTherapist - yes
              - count_of_session_id, id: AppointmentTherapist - yes - count_of_session_id,
            name: AppointmentTherapist - yes}, {axisId: AppointmentUnknownProvider
              - count_of_session_id, id: AppointmentUnknownProvider - count_of_session_id,
            name: AppointmentUnknownProvider}, {axisId: AppointmentUrgent - count_of_session_id,
            id: AppointmentUrgent - count_of_session_id, name: AppointmentUrgent},
          {axisId: AppointmentUrgent - fallback - count_of_session_id, id: AppointmentUrgent
              - fallback - count_of_session_id, name: AppointmentUrgent - fallback},
          {axisId: CheckInsurance - count_of_session_id, id: CheckInsurance - count_of_session_id,
            name: CheckInsurance}, {axisId: CheckInsurance - fallback - count_of_session_id,
            id: CheckInsurance - fallback - count_of_session_id, name: CheckInsurance
              - fallback}, {axisId: CoPay - count_of_session_id, id: CoPay - count_of_session_id,
            name: CoPay}, {axisId: CreditCard - count_of_session_id, id: CreditCard
              - count_of_session_id, name: CreditCard}, {axisId: CreditCard - no -
              count_of_session_id, id: CreditCard - no - count_of_session_id, name: CreditCard
              - no}, {axisId: Default Fallback Intent - count_of_session_id, id: Default
              Fallback Intent - count_of_session_id, name: Default Fallback Intent},
          {axisId: Default Fallback Intent - fallback - count_of_session_id, id: Default
              Fallback Intent - fallback - count_of_session_id, name: Default Fallback
              Intent - fallback}, {axisId: Default Fallback Intent - no - count_of_session_id,
            id: Default Fallback Intent - no - count_of_session_id, name: Default
              Fallback Intent - no}, {axisId: Default Fallback Intent - no - fallback
              - count_of_session_id, id: Default Fallback Intent - no - fallback -
              count_of_session_id, name: Default Fallback Intent - no - fallback},
          {axisId: Default Fallback Intent - yes - count_of_session_id, id: Default
              Fallback Intent - yes - count_of_session_id, name: Default Fallback
              Intent - yes}, {axisId: Default Welcome Intent - count_of_session_id,
            id: Default Welcome Intent - count_of_session_id, name: Default Welcome
              Intent}, {axisId: Default Welcome Intent - fallback - count_of_session_id,
            id: Default Welcome Intent - fallback - count_of_session_id, name: Default
              Welcome Intent - fallback}, {axisId: FindInsuranceHelpLine - count_of_session_id,
            id: FindInsuranceHelpLine - count_of_session_id, name: FindInsuranceHelpLine},
          {axisId: FindInsuranceHelpLine - fallback - count_of_session_id, id: FindInsuranceHelpLine
              - fallback - count_of_session_id, name: FindInsuranceHelpLine - fallback},
          {axisId: GetAppointment - count_of_session_id, id: GetAppointment - count_of_session_id,
            name: GetAppointment}, {axisId: GetAppointment - fallback - count_of_session_id,
            id: GetAppointment - fallback - count_of_session_id, name: GetAppointment
              - fallback}, {axisId: GetMobileNumber - count_of_session_id, id: GetMobileNumber
              - count_of_session_id, name: GetMobileNumber}, {axisId: GetMobileNumber
              - fallback - count_of_session_id, id: GetMobileNumber - fallback - count_of_session_id,
            name: GetMobileNumber - fallback}, {axisId: HaveAccount - count_of_session_id,
            id: HaveAccount - count_of_session_id, name: HaveAccount}, {axisId: LiveAgentTransfer
              - count_of_session_id, id: LiveAgentTransfer - count_of_session_id,
            name: LiveAgentTransfer}, {axisId: LiveAgentTransfer - fallback - count_of_session_id,
            id: LiveAgentTransfer - fallback - count_of_session_id, name: LiveAgentTransfer
              - fallback}, {axisId: LiveAgentTransfer - no - count_of_session_id,
            id: LiveAgentTransfer - no - count_of_session_id, name: LiveAgentTransfer
              - no}, {axisId: LiveAgentTransfer - yes - count_of_session_id, id: LiveAgentTransfer
              - yes - count_of_session_id, name: LiveAgentTransfer - yes}, {axisId: NoAccount
              - count_of_session_id, id: NoAccount - count_of_session_id, name: NoAccount},
          {axisId: NoAccount - fallback - count_of_session_id, id: NoAccount - fallback
              - count_of_session_id, name: NoAccount - fallback}, {axisId: NoAccount
              - no - count_of_session_id, id: NoAccount - no - count_of_session_id,
            name: NoAccount - no}, {axisId: NoAccount - no - fallback - count_of_session_id,
            id: NoAccount - no - fallback - count_of_session_id, name: NoAccount -
              no - fallback}, {axisId: Prescription - count_of_session_id, id: Prescription
              - count_of_session_id, name: Prescription}, {axisId: Prescription -
              fallback - count_of_session_id, id: Prescription - fallback - count_of_session_id,
            name: Prescription - fallback}, {axisId: Prescription - no - count_of_session_id,
            id: Prescription - no - count_of_session_id, name: Prescription - no},
          {axisId: Prescription - yes - count_of_session_id, id: Prescription - yes
              - count_of_session_id, name: Prescription - yes}, {axisId: ResetPassword
              - count_of_session_id, id: ResetPassword - count_of_session_id, name: ResetPassword},
          {axisId: ResetPassword - fallback - count_of_session_id, id: ResetPassword
              - fallback - count_of_session_id, name: ResetPassword - fallback}, {
            axisId: ResetPassword - no - count_of_session_id, id: ResetPassword -
              no - count_of_session_id, name: ResetPassword - no}, {axisId: ResetPassword
              - yes - count_of_session_id, id: ResetPassword - yes - count_of_session_id,
            name: ResetPassword - yes}, {axisId: Test_intent_1 - count_of_session_id,
            id: Test_intent_1 - count_of_session_id, name: Test_intent_1}, {axisId: ValidateMobileNumber
              - count_of_session_id, id: ValidateMobileNumber - count_of_session_id,
            name: ValidateMobileNumber}, {axisId: ValidateMobileNumber - fallback
              - count_of_session_id, id: ValidateMobileNumber - fallback - count_of_session_id,
            name: ValidateMobileNumber - fallback}, {axisId: ValidateMobileNumber
              - no - count_of_session_id, id: ValidateMobileNumber - no - count_of_session_id,
            name: ValidateMobileNumber - no}, {axisId: ValidateMobileNumber - yes
              - count_of_session_id, id: ValidateMobileNumber - yes - count_of_session_id,
            name: ValidateMobileNumber - yes}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 30, type: linear}]
    x_axis_label: Intent Trend
    series_types: {}
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 54
    col: 0
    width: 24
    height: 14
  - title: Session Distribution vs call deflection
    name: Session Distribution vs call deflection
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [deflection.deflection_distribution, count_of_session_id]
    sorts: [count_of_session_id desc]
    dynamic_fields: [{measure: count_of_session_id, based_on: deflection.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: count_of_session_id,
            id: count_of_session_id, name: Total Sessions}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 40, type: linear}]
    x_axis_label: Deflection
    series_colors:
      count_of_session_id: "#3167d6"
    series_labels:
      count_of_session_id: Total Sessions
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
    row: 7
    col: 0
    width: 11
    height: 6
  - title: Deflection Rate
    name: Deflection Rate
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_pie
    fields: [deflection.deflection_rate, count_of_session_id]
    sorts: [count_of_session_id desc]
    dynamic_fields: [{measure: count_of_session_id, based_on: deflection.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {args: [count_of_session_id], calculation_type: percent_of_previous,
        category: table_calculation, based_on: count_of_session_id, label: Percent
          of previous -  Count of Session ID, source_field: count_of_session_id, table_calculation: percent_of_previous_count_of_session_id,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {args: [count_of_session_id], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: count_of_session_id, label: Percent
          of  Count of Session ID, source_field: count_of_session_id, table_calculation: percent_of_count_of_session_id,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {args: [count_of_session_id], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: count_of_session_id, label: Percent
          change from previous -  Count of Session ID, source_field: count_of_session_id,
        table_calculation: percent_change_from_previous_count_of_session_id, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number, is_disabled: true}]
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
        reverse: true
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
    row: 7
    col: 11
    width: 13
    height: 6
  - title: Intent Co-Occurrence
    name: Intent Co-Occurrence
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    type: looker_column
    fields: [dialogflow_cleaned_logs.intent_triggered, intent_level_view.intents,
      count_of_session_id]
    pivots: [intent_level_view.intents]
    sorts: [count_of_session_id desc 1, intent_level_view.intents]
    limit: 20
    column_limit: 100
    dynamic_fields: [{measure: count_of_session_id, based_on: dialogflow_cleaned_logs.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Frequency, orientation: left, series: [{axisId: AcceptedInsurance
              - count_of_session_id, id: AcceptedInsurance - count_of_session_id,
            name: AcceptedInsurance}, {axisId: AcceptInsurance - count_of_session_id,
            id: AcceptInsurance - count_of_session_id, name: AcceptInsurance}, {axisId: AcceptInsurance
              - fallback - count_of_session_id, id: AcceptInsurance - fallback - count_of_session_id,
            name: AcceptInsurance - fallback}, {axisId: AcceptInsurance - no - count_of_session_id,
            id: AcceptInsurance - no - count_of_session_id, name: AcceptInsurance
              - no}, {axisId: AcceptInsurance - yes - count_of_session_id, id: AcceptInsurance
              - yes - count_of_session_id, name: AcceptInsurance - yes}, {axisId: AcceptInsurance
              - yes - fallback - count_of_session_id, id: AcceptInsurance - yes -
              fallback - count_of_session_id, name: AcceptInsurance - yes - fallback},
          {axisId: Acknowledge - count_of_session_id, id: Acknowledge - count_of_session_id,
            name: Acknowledge}, {axisId: Acknowledge - fallback - count_of_session_id,
            id: Acknowledge - fallback - count_of_session_id, name: Acknowledge -
              fallback}, {axisId: Acknowledge - no - count_of_session_id, id: Acknowledge
              - no - count_of_session_id, name: Acknowledge - no}, {axisId: Acknowledge
              - yes - count_of_session_id, id: Acknowledge - yes - count_of_session_id,
            name: Acknowledge - yes}, {axisId: Acknowledge - yes - fallback - count_of_session_id,
            id: Acknowledge - yes - fallback - count_of_session_id, name: Acknowledge
              - yes - fallback}, {axisId: AppointmentPsychiatrist - count_of_session_id,
            id: AppointmentPsychiatrist - count_of_session_id, name: AppointmentPsychiatrist},
          {axisId: AppointmentPsychiatrist - fallback - count_of_session_id, id: AppointmentPsychiatrist
              - fallback - count_of_session_id, name: AppointmentPsychiatrist - fallback},
          {axisId: AppointmentPsychiatrist - no - count_of_session_id, id: AppointmentPsychiatrist
              - no - count_of_session_id, name: AppointmentPsychiatrist - no}, {axisId: AppointmentPsychiatrist
              - no - fallback - count_of_session_id, id: AppointmentPsychiatrist -
              no - fallback - count_of_session_id, name: AppointmentPsychiatrist -
              no - fallback}, {axisId: AppointmentPsychiatrist - no - yes - count_of_session_id,
            id: AppointmentPsychiatrist - no - yes - count_of_session_id, name: AppointmentPsychiatrist
              - no - yes}, {axisId: AppointmentPsychiatrist - yes - count_of_session_id,
            id: AppointmentPsychiatrist - yes - count_of_session_id, name: AppointmentPsychiatrist
              - yes}, {axisId: AppointmentTherapist - count_of_session_id, id: AppointmentTherapist
              - count_of_session_id, name: AppointmentTherapist}, {axisId: AppointmentTherapist
              - fallback - count_of_session_id, id: AppointmentTherapist - fallback
              - count_of_session_id, name: AppointmentTherapist - fallback}, {axisId: AppointmentTherapist
              - no - count_of_session_id, id: AppointmentTherapist - no - count_of_session_id,
            name: AppointmentTherapist - no}, {axisId: AppointmentTherapist - yes
              - count_of_session_id, id: AppointmentTherapist - yes - count_of_session_id,
            name: AppointmentTherapist - yes}, {axisId: AppointmentUnknownProvider
              - count_of_session_id, id: AppointmentUnknownProvider - count_of_session_id,
            name: AppointmentUnknownProvider}, {axisId: AppointmentUrgent - count_of_session_id,
            id: AppointmentUrgent - count_of_session_id, name: AppointmentUrgent},
          {axisId: AppointmentUrgent - fallback - count_of_session_id, id: AppointmentUrgent
              - fallback - count_of_session_id, name: AppointmentUrgent - fallback},
          {axisId: CheckInsurance - count_of_session_id, id: CheckInsurance - count_of_session_id,
            name: CheckInsurance}, {axisId: CheckInsurance - fallback - count_of_session_id,
            id: CheckInsurance - fallback - count_of_session_id, name: CheckInsurance
              - fallback}, {axisId: CoPay - count_of_session_id, id: CoPay - count_of_session_id,
            name: CoPay}, {axisId: CreditCard - count_of_session_id, id: CreditCard
              - count_of_session_id, name: CreditCard}, {axisId: CreditCard - no -
              count_of_session_id, id: CreditCard - no - count_of_session_id, name: CreditCard
              - no}, {axisId: Default Fallback Intent - count_of_session_id, id: Default
              Fallback Intent - count_of_session_id, name: Default Fallback Intent},
          {axisId: Default Fallback Intent - fallback - count_of_session_id, id: Default
              Fallback Intent - fallback - count_of_session_id, name: Default Fallback
              Intent - fallback}, {axisId: Default Fallback Intent - no - count_of_session_id,
            id: Default Fallback Intent - no - count_of_session_id, name: Default
              Fallback Intent - no}, {axisId: Default Fallback Intent - no - fallback
              - count_of_session_id, id: Default Fallback Intent - no - fallback -
              count_of_session_id, name: Default Fallback Intent - no - fallback},
          {axisId: Default Fallback Intent - yes - count_of_session_id, id: Default
              Fallback Intent - yes - count_of_session_id, name: Default Fallback
              Intent - yes}, {axisId: Default Welcome Intent - count_of_session_id,
            id: Default Welcome Intent - count_of_session_id, name: Default Welcome
              Intent}, {axisId: Default Welcome Intent - fallback - count_of_session_id,
            id: Default Welcome Intent - fallback - count_of_session_id, name: Default
              Welcome Intent - fallback}, {axisId: FindInsuranceHelpLine - count_of_session_id,
            id: FindInsuranceHelpLine - count_of_session_id, name: FindInsuranceHelpLine},
          {axisId: FindInsuranceHelpLine - fallback - count_of_session_id, id: FindInsuranceHelpLine
              - fallback - count_of_session_id, name: FindInsuranceHelpLine - fallback},
          {axisId: GetAppointment - count_of_session_id, id: GetAppointment - count_of_session_id,
            name: GetAppointment}, {axisId: GetAppointment - fallback - count_of_session_id,
            id: GetAppointment - fallback - count_of_session_id, name: GetAppointment
              - fallback}, {axisId: GetMobileNumber - count_of_session_id, id: GetMobileNumber
              - count_of_session_id, name: GetMobileNumber}, {axisId: GetMobileNumber
              - fallback - count_of_session_id, id: GetMobileNumber - fallback - count_of_session_id,
            name: GetMobileNumber - fallback}, {axisId: HaveAccount - count_of_session_id,
            id: HaveAccount - count_of_session_id, name: HaveAccount}, {axisId: LiveAgentTransfer
              - count_of_session_id, id: LiveAgentTransfer - count_of_session_id,
            name: LiveAgentTransfer}, {axisId: LiveAgentTransfer - fallback - count_of_session_id,
            id: LiveAgentTransfer - fallback - count_of_session_id, name: LiveAgentTransfer
              - fallback}, {axisId: LiveAgentTransfer - no - count_of_session_id,
            id: LiveAgentTransfer - no - count_of_session_id, name: LiveAgentTransfer
              - no}, {axisId: LiveAgentTransfer - yes - count_of_session_id, id: LiveAgentTransfer
              - yes - count_of_session_id, name: LiveAgentTransfer - yes}, {axisId: NoAccount
              - count_of_session_id, id: NoAccount - count_of_session_id, name: NoAccount},
          {axisId: NoAccount - fallback - count_of_session_id, id: NoAccount - fallback
              - count_of_session_id, name: NoAccount - fallback}, {axisId: NoAccount
              - no - count_of_session_id, id: NoAccount - no - count_of_session_id,
            name: NoAccount - no}, {axisId: NoAccount - no - fallback - count_of_session_id,
            id: NoAccount - no - fallback - count_of_session_id, name: NoAccount -
              no - fallback}, {axisId: Prescription - count_of_session_id, id: Prescription
              - count_of_session_id, name: Prescription}, {axisId: Prescription -
              fallback - count_of_session_id, id: Prescription - fallback - count_of_session_id,
            name: Prescription - fallback}, {axisId: Prescription - no - count_of_session_id,
            id: Prescription - no - count_of_session_id, name: Prescription - no},
          {axisId: Prescription - yes - count_of_session_id, id: Prescription - yes
              - count_of_session_id, name: Prescription - yes}, {axisId: ResetPassword
              - count_of_session_id, id: ResetPassword - count_of_session_id, name: ResetPassword},
          {axisId: ResetPassword - fallback - count_of_session_id, id: ResetPassword
              - fallback - count_of_session_id, name: ResetPassword - fallback}, {
            axisId: ResetPassword - no - count_of_session_id, id: ResetPassword -
              no - count_of_session_id, name: ResetPassword - no}, {axisId: ResetPassword
              - yes - count_of_session_id, id: ResetPassword - yes - count_of_session_id,
            name: ResetPassword - yes}, {axisId: ValidateMobileNumber - count_of_session_id,
            id: ValidateMobileNumber - count_of_session_id, name: ValidateMobileNumber},
          {axisId: ValidateMobileNumber - fallback - count_of_session_id, id: ValidateMobileNumber
              - fallback - count_of_session_id, name: ValidateMobileNumber - fallback},
          {axisId: ValidateMobileNumber - no - count_of_session_id, id: ValidateMobileNumber
              - no - count_of_session_id, name: ValidateMobileNumber - no}, {axisId: ValidateMobileNumber
              - yes - count_of_session_id, id: ValidateMobileNumber - yes - count_of_session_id,
            name: ValidateMobileNumber - yes}, {axisId: intent_level_view.intents___null
              - count_of_session_id, id: intent_level_view.intents___null - count_of_session_id,
            name: "∅"}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 41, type: linear}]
    x_axis_label: Child Intent
    defaults_version: 1
    listen:
      Time Stamp Date: dialogflow_cleaned_logs.time_stamp_date
      Intent Triggered: dialogflow_cleaned_logs.intent_triggered
    row: 68
    col: 0
    width: 24
    height: 13
  - name: Conversation Summary
    type: text
    title_text: Conversation Summary
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 1
  filters:
  - name: Time Stamp Date
    title: Time Stamp Date
    type: field_filter
    default_value: 2022/05/16 to 2022/05/17
    allow_multiple_values: false
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    listens_to_filters: []
    field: dialogflow_cleaned_logs.time_stamp_date
  - name: Intent Triggered
    title: Intent Triggered
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: de_looker_training_q04644_rajalakshmi_prod
    explore: dialogflow_cleaned_logs
    listens_to_filters: []
    field: dialogflow_cleaned_logs.intent_triggered
