view: view_today_backorder {
  sql_table_name: ARC_COSTING.VIEW_TODAY_BACKORDER ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: consider_floor {
    type: yesno
    sql: ${TABLE}.consider_floor ;;
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

  dimension_group: event_time_cst {
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
    sql: CAST(${TABLE}.event_time_cst AS TIMESTAMP) ;;
  }

  dimension_group: inhand {
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
    sql: ${TABLE}.inhand_date ;;
  }

  dimension_group: inhand_date_cst {
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
    sql: CAST(${TABLE}.inhand_date_cst AS TIMESTAMP) ;;
  }

  dimension: lat_long {
    type: string
    sql: ${TABLE}.lat_long ;;
  }

  dimension: loc_count {
    type: number
    sql: ${TABLE}.locCount ;;
  }

  dimension: loc_lat_lon {
    type: string
    sql: ${TABLE}.loc_lat_lon ;;
  }

  dimension: order_line_key {
    type: string
    sql: ${TABLE}.order_line_key ;;
  }

  dimension: order_line_type {
    type: string
    sql: ${TABLE}.order_line_type ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}.order_no ;;
  }

  dimension: order_qty {
    type: number
    sql: ${TABLE}.order_qty ;;
  }

  dimension: req_details {
    hidden: yes
    sql: ${TABLE}.req_details ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: VIEW_TODAY_BACKORDER__req_details {
  dimension: condition {
    type: number
    sql: ${TABLE}.condition ;;
  }

  dimension: giftpack {
    type: yesno
    sql: ${TABLE}.giftpack ;;
  }

  dimension: los {
    type: string
    sql: ${TABLE}.los ;;
  }

  dimension_group: order {
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
    sql: ${TABLE}.orderDate ;;
  }

  dimension_group: req {
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
    sql: ${TABLE}.reqDate ;;
  }
}
