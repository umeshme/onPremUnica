connection: "deliverds"

include: "/email_views/*.view.lkml"
include: "/landing_page_views/*.view.lkml"
include: "*.view.lkml"
include: "*.dashboard.lookml"
# include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: uare_email_overview {
  label: "Email Campaign Summary"
  group_label: "Email"
  sql_always_where: ${url_name} = 'Mailing Level' ;;
}


explore: uare_email_link_overview {
  label: "Email Campaign Link Summary"
  group_label: "Email"
  sql_always_where: ${url_name} != 'Mailing Level' ;;

}

explore: uare_email_day {
  label: "Email Campaign Summary by day"
  group_label: "Email"
  sql_always_where: ${url_name} =  'Mailing Level';;
}

explore: uare_email_link_day {
  label: "Email Campaign Link Summary by day"
  group_label: "Email"
  sql_always_where: ${url_name} !=  'Mailing Level';;
}

explore: uare_unsubscribe_email {
  label: "Email Campaign Unsubscribe Summary"
  group_label: "Email"
}

explore: uare_email_recipient_click {
  label: "Email Campaign Recipient Details"
  group_label: "Email"
}

explore: uare_lp_overview {
  label: "Landing Page Summary"
  group_label: "Landing Page"
  sql_always_where: ${lp_link} =  'Landing Page Level';;
}

explore: uare_lp_link_overview {
  label: "Landing Page Link Overview"
  group_label: "Landing Page"
  sql_always_where: ${lp_link} !=  'Landing Page Level';;
}

explore: uare_lp_day {
  label: "Landing Page Summary by day"
  group_label: "Landing Page"
  sql_always_where: ${lp_link} =  'Landing Page Level';;
}

explore: uare_lp_link_day {
  label: "Landing Page Link Summary by day"
  group_label: "Landing Page"
  sql_always_where: ${lp_link} !=  'Landing Page Level';;
}

explore: all_channels_data {
  label: "Channel Performance"
  group_label: "All Channels"
}
