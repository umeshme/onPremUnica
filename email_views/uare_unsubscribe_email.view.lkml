view: uare_unsubscribe_email {
  sql_table_name: UARE_UNSUBSCRIBE_EMAIL ;;

  dimension: campaign_name {
    label: "Campaign Name"
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
    drill_fields: [mailing_instance, mailingcode ,email]
  }

  dimension: campaigncode {
    type: string
    sql: ${TABLE}.CAMPAIGNCODE ;;
    drill_fields: [mailing_instance, mailingcode ,email]
  }

  dimension: campaignid {
    label: "Campaign ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.CAMPAIGNID ;;
    drill_fields: [mailing_instance, mailingcode ,email]
  }

  dimension_group: contact_date {
    label: "Contanct Date"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CONTACT_DATE_TIME ;;
    drill_fields: [campaign_name, campaigncode , mailing_instance, mailingcode ,email]
  }

  dimension: containerid {
    label: "Container ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.CONTAINERID ;;
    drill_fields: [mailing_instance, mailingcode ,email]
  }

  dimension: containername {
    label: "Mailing Name"
    type: string
    sql: ${TABLE}.CONTAINERNAME ;;
  }

  dimension: displayname {
    label: "Email Link"
    type: string
    sql: ${TABLE}.DISPLAYNAME ;;
    drill_fields: [campaign_name, campaigncode , mailing_instance, mailingcode ,email]
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
    drill_fields: [campaign_name, campaigncode ,mailing_instance, mailingcode ,email]
  }

  dimension: mailingcode {
    type: string
    sql: ${TABLE}.MAILINGCODE ;;
  }

  dimension_group: response_date {
    label: "Response Date"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.RESPONSE_DATE_TIME ;;
    drill_fields: [campaign_name, campaigncode, mailing_instance, mailingcode ,email]
  }

  dimension: urlindex {
    type: number
    sql: ${TABLE}.URLINDEX ;;
  }

  measure: Count {
    type: count_distinct
    sql: ${email} ;;
  }

}
