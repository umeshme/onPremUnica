- dashboard: deliver_dashboard_email
  title: Deliver Dashboard (Email)
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: All Links Unique Click
    name: All Links Unique Click
    model: Deliver
    explore: uare_email_link_overview
    type: looker_pie
    fields: [uare_email_link_overview.url_name, uare_email_link_overview.unique_clicks]
    sorts: [uare_email_link_overview.unique_clicks desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 35
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 8
    width: 7
    height: 6
  - title: Unique Click Rate
    name: Unique Click Rate
    model: Deliver
    explore: uare_email_link_overview
    type: single_value
    fields: [uare_email_link_overview.unique_click_rate]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    single_value_title: Unique Click Rate
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 6
    col: 8
    width: 5
    height: 4
  - title: Email Click Trend
    name: Email Click Trend
    model: Deliver
    explore: uare_email_day
    type: looker_line
    fields: [uare_email_day.rdate_quarter, uare_email_day.unique_views, uare_email_day.unique_clicks]
    fill_fields: [uare_email_day.rdate_quarter]
    sorts: [uare_email_day.rdate_quarter desc]
    limit: 500
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
    defaults_version: 1
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Click Rate by Mailing Code
    name: Click Rate by Mailing Code
    model: Deliver
    explore: uare_email_overview
    type: looker_bar
    fields: [uare_email_overview.mailing_code, uare_email_overview.total_delivered,
      uare_email_overview.total_failed, uare_email_overview.unique_clicks, uare_email_overview.unique_click_rate]
    sorts: [uare_email_overview.total_delivered desc]
    limit: 500
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
    series_types: {}
    series_colors: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Top 10 Views
    name: Top 10 Views
    model: Deliver
    explore: uare_email_link_day
    type: looker_grid
    fields: [uare_email_link_day.campaignname, uare_email_link_day.rdate_quarter,
      uare_email_link_day.url_name, uare_email_link_day.unique_views, uare_email_link_day.total_clicks]
    sorts: [uare_email_link_day.unique_views desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      uare_email_link_day.rdate_quarter: Quarter
      uare_email_link_day.url_name: Links
      uare_email_link_day.total_views: Views
      uare_email_link_day.total_clicks: Clicks
      uare_email_link_day.unique_views: Views
    series_cell_visualizations:
      uare_email_link_day.total_views:
        is_active: true
      uare_email_link_day.unique_views:
        is_active: true
        palette:
          palette_id: 4620e8de-df7a-40e0-89d6-7401f6e64d96
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      uare_email_link_day.total_clicks:
        is_active: true
        palette:
          palette_id: 4620e8de-df7a-40e0-89d6-7401f6e64d96
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    defaults_version: 1
    listen: {}
    row: 6
    col: 13
    width: 11
    height: 6
  - title: Total 10 Links
    name: Total 10 Links
    model: Deliver
    explore: uare_email_recipient_click
    type: looker_grid
    fields: [uare_email_recipient_click.campaign_name, uare_email_recipient_click.responsedate_quarter,
      uare_email_recipient_click.displayname, uare_email_recipient_click.total_clicks]
    sorts: [uare_email_recipient_click.total_clicks desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      uare_email_recipient_click.Count: Click Count
      uare_email_recipient_click.responsedate_quarter: Quarter
      uare_email_recipient_click.displayname: Link
      uare_email_recipient_click.total_clicks: Clicks
    series_cell_visualizations:
      uare_email_recipient_click.Count:
        is_active: true
      uare_email_recipient_click.total_clicks:
        is_active: true
        palette:
          palette_id: 73fd59d9-7199-21ed-769a-98e9dd7287b4
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#1a73e8"
          - "#ffffff"
          - "#7CB342"
          - "#ffffff"
    defaults_version: 1
    listen: {}
    row: 0
    col: 15
    width: 9
    height: 6
