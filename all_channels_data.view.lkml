view: all_channels_data {
  derived_table: {sql: select channel from uare_channels_details where channel = 'Email'
                        UNION ALL
                       select channel from uare_channels_details where channel = 'SMS' ;;
    }

    dimension:  channel{
      type: string
      sql: ${TABLE}.channel ;;
    }
}
