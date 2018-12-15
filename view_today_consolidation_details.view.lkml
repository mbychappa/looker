view: view_today_consolidation_details {
  sql_table_name: ARC_COSTING.VIEW_TODAY_CONSOLIDATION_DETAILS ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.eventTime ;;
  }

  dimension: is_consolidated {
    type: yesno
    sql: ${TABLE}.IS_CONSOLIDATED ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: mrr_id {
    type: number
    sql: ${TABLE}.MRR_ID ;;
  }

  dimension: order_line_key {
    type: string
    sql: ${TABLE}.order_line_key ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}.order_no ;;
  }

  dimension: orderline_consol_count {
    type: number
    sql: ${TABLE}.orderline_consol_count ;;
  }

  dimension: orderlines_count {
    type: number
    sql: ${TABLE}.orderlines_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
