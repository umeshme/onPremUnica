view: uare_channels_details {
  sql_table_name: UARE_CHANNELS_DETAILS ;;
  label: "Channels"

  dimension: audiencelevel {
    label: "Audience"
    type: string
    sql: ${TABLE}.AUDIENCELEVEL ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
    drill_fields: [mailing_instance]
  }

  dimension: campaigncode {
    label: "Campaign Code"
    type: string
    sql: ${TABLE}.CAMPAIGNCODE ;;
  }

  dimension: campaignid {
    label: "Campaign ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.CAMPAIGNID ;;
  }

  dimension: containerid {
    label: "Container ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.CONTAINERID ;;
    primary_key: yes
  }

  dimension: containername {
    label: "Container Name"
    type: string
    sql: ${TABLE}.CONTAINERNAME ;;
  }

  dimension: mailing_code {
    label: "Mailing Code"
    type: string
    sql: ${TABLE}.MAILINGCODE ;;
  }

  dimension: mailing_instance {
    type: string
    sql: ${TABLE}.MAILING_INSTANCE ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

}
