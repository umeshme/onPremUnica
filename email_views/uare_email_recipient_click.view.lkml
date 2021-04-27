view: uare_email_recipient_click {
  sql_table_name: UARE_EMAIL_RECIPIENT_CLICK ;;

  dimension: campaign_name {
    label: "Campaign Name"
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
    drill_fields: [mailing_instance, mailingcode ,email, masked_email]
  }

  dimension: campaigncode {
    type: string
    sql: ${TABLE}.CAMPAIGNCODE ;;
    drill_fields: [mailing_instance, email, masked_email, displayname]
  }

  dimension: campaignid {
    label: "Campaign ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.CAMPAIGNID ;;
    drill_fields: [mailing_instance, mailingcode, email, masked_email, displayname]
  }

  dimension: containerid {
    label: "Container ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.CONTAINERID ;;
    drill_fields: [mailing_instance, mailingcode, email, masked_email, displayname]
  }

  dimension: containername {
    label: "Mailing Name"
    type: string
    sql: ${TABLE}.CONTAINERNAME ;;
    drill_fields: [mailing_instance, mailingcode, email, masked_email, displayname]
  }

  dimension: displayname {
    label: "Email Link"
    type: string
    sql: ${TABLE}.DISPLAYNAME ;;
    drill_fields: [campaign_name, mailingcode ,mailing_instance, email, masked_email, displayname]
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: masked_email {
    label: "Email (Masked)"
    type: string
    sql: ${TABLE}.MASKED_EMAIL ;;
  }

  dimension: envelopeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ENVELOPEID ;;
    hidden: yes
  }

  dimension: mailing_instance {
    label: "Mailing Instance"
    type: string
    sql: ${TABLE}.MAILING_INSTANCE ;;
  }

  dimension: mailingcode {
    type: string
    sql: ${TABLE}.MAILINGCODE ;;
    drill_fields: [mailing_instance, email, displayname]
  }

  dimension_group: responsedate {
    label: "Response"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.RESPONSE_DATE ;;
    datatype: date
    group_label: "Date Fields"
  }

  dimension: urlindex {
    type: number
    sql: ${TABLE}.URLINDEX ;;
    hidden: yes
  }

  measure: unique_clicks {
    type: sum
    label: "Unique Clicks"
    sql: ${TABLE}.UNIQUE_CLICKS ;;
  }

  measure: unique_views {
    type: sum
    label: "Unique Views"
    sql: ${TABLE}.UNIQUE_VIEWS ;;
  }

  measure: total_clicks {
    type: sum
    label: "Total Clicks"
    sql: ${TABLE}.TOTAL_CLICKS ;;
  }

  measure: total_views {
    type: sum
    label: "Total Views"
    sql: ${TABLE}.TOTAL_VIEWS ;;
    hidden: yes
  }

}
