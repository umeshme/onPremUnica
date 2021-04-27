view: uare_lp_link_day {
  sql_table_name: UARE_LP_DAY ;;

  dimension: campaigncode {
    type: string
    sql: ${TABLE}.CAMPAIGNCODE ;;
    drill_fields: [mailing_code, mailing_instance, cellcode]
  }

  dimension: campaignid {
    label: "Campaign ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.CAMPAIGNID ;;
    drill_fields: [mailing_code, mailing_instance, cellcode]
  }

  dimension: containerid {
    label: "Container ID"
    type: string
    sql: ${TABLE}.CONTAINERID ;;
    drill_fields: [cellcode, lppage, lp_link]
  }

  dimension: campaignname {
    label: "Campaign Name"
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
    drill_fields: [mailing_code ,mailing_instance, cellcode]
  }

  dimension: cellcode {
    type: string
    sql: ${TABLE}.CELLCODE ;;
  }

  dimension: containername {
    label: "Container Name"
    type: string
    sql: ${TABLE}.CONTAINERNAME ;;
    drill_fields: [cellcode]
  }

  dimension: mailing_code {
    label: "Mailingcode"
    type: string
    sql: ${TABLE}.MailingCode ;;
    drill_fields: [mailing_instance, cellcode]
  }

  dimension: mailing_instance {
    type: string
    sql: ${TABLE}.MAILING_INSTANCE ;;
    drill_fields: [cellcode]
  }


  dimension: lppage {
    label: "Landing Page"
    type: string
    sql: ${TABLE}.LPPAGE ;;
    drill_fields: [lp_link]
  }


  dimension: lp_link {
    label: "Landing Page Link"
    type: string
    sql: ${TABLE}.LP_LINK ;;
  }


  dimension_group: rdate {
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
    sql: ${TABLE}.RDATE ;;
  }

  measure: total_clicks {
    type: sum
    sql: ${TABLE}.TOTAL_CLICKS ;;
  }

  measure: total_views {
    type: sum
    sql: ${TABLE}.TOTAL_VIEWS ;;
  }

  measure: unique_clicks {
    type: sum
    sql: ${TABLE}.UNIQUE_CLICKS ;;
  }

  measure: unique_views {
    type: sum
    sql: ${TABLE}.UNIQUE_VIEWS ;;
  }

  measure: total_click_rate {
    type: number
    sql: cast (${total_clicks} as decimal) / (case when (${total_views}) >0  then ${total_views} else 1 end );;
    value_format: "#.00%"
  }

  measure: unique_click_rate{
    type: number
    sql: cast (${unique_clicks} as decimal) / (case when (${unique_views}) >0  then ${unique_views} else 1 end );;
    value_format: "#.00%"
  }

}
