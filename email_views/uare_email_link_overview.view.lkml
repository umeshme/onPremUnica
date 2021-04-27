view: uare_email_link_overview {
  sql_table_name: UARE_EMAIL_OVERVIEW ;;
  label: "Email Overview"

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

  measure: challenge_resp {
      label: "Challenge Response"
      type: sum
      sql: ${TABLE}.CHALLENGE_RESP ;;
    }

  dimension: containerid {
    label: "Container ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.CONTAINERID ;;
  }

  measure: hard_bounce {
    type: sum
    sql: ${TABLE}.HARD_BOUNCE ;;
  }

  measure: isp_feedback {
    type: sum
    sql: ${TABLE}.ISP_FEEDBACK ;;
  }

  measure: mail_bounce {
    type: sum
    sql: ${TABLE}.MAIL_BOUNCE ;;
  }

  measure: other {
    type: sum
    sql: ${TABLE}.OTHER ;;
  }

  measure: out_of_office {
    type: sum
    sql: ${TABLE}.OUT_OF_OFFICE ;;
  }

  measure: send_failed {
    type: sum
    sql: ${TABLE}.SEND_FAILED ;;
  }

  measure: soft_bounce {
    type: sum
    sql: ${TABLE}.SOFT_BOUNCE ;;
  }

  measure: technical_issue {
    type: sum
    sql: ${TABLE}.TECHNICAL_ISSUE ;;
  }

  measure: total_clicks {
    type: sum
    sql: ${TABLE}.TOTAL_CLICKS ;;
  }

  measure: total_failed {
    type: sum
    sql: ${TABLE}.TOTAL_FAILED ;;
    drill_fields: [containerid, cellcode, send_failed, mail_bounce, hard_bounce, soft_bounce, isp_feedback, out_of_office, technical_issue, challenge_resp,other, unknown]
  }

  measure: total_sent {
    type: sum
    sql: ${TABLE}.TOTAL_SENT ;;
  }

  measure: total_delivered {
    type: number
    sql: (${total_sent} - ${total_failed}) ;;
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

  measure: unknown {
    type: sum
    sql: ${TABLE}.UNKNOWN ;;
  }

  dimension: url_name {
    label: "Email Link"
    type: string
    sql: ${TABLE}.URL_NAME ;;
  }

  measure: total_click_rate{
    type: number
    sql: cast (${total_clicks} as decimal) / (case when (${total_views}) >0  then ${total_sent} else 1 end );;
    value_format: "#.00%"
  }

  measure: unique_click_rate{
    type: number
    sql: cast (${unique_clicks} as decimal) / (case when (${unique_views}) >0  then ${total_sent} else 1 end );;
    value_format: "#.00%"
  }

}
