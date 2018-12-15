view: view_today_multiline_1 {
  sql_table_name: ARC_COSTING.VIEW_TODAY_MULTILINE_1 ;;

  dimension: consolidate {
    type: yesno
    sql: ${TABLE}.consolidate ;;
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

  dimension: line_sourcing_trans_id {
    type: number
    sql: ${TABLE}.line_sourcing_trans_id ;;
  }

  dimension: los {
    type: string
    sql: ${TABLE}.los ;;
  }

  dimension: multiline_locations {
    hidden: yes
    sql: ${TABLE}.multiline_locations ;;
  }

  dimension: multiline_locations_count {
    type: number
    sql: ${TABLE}.multiline_locations_count ;;
  }

  dimension: multiline_locations_lat_long {
    type: string
    sql: ${TABLE}.multiline_locations_lat_long ;;
  }

  dimension: order_line_key {
    type: string
    sql: ${TABLE}.order_line_key ;;
  }

  dimension: order_lines_count {
    type: number
    sql: ${TABLE}.order_lines_count ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}.order_no ;;
  }

  dimension: order_qty {
    type: number
    sql: ${TABLE}.order_qty ;;
  }

  dimension: orderline_locations_carrier_data {
    hidden: yes
    sql: ${TABLE}.orderline_locations_carrierData ;;
  }

  dimension: orderline_locations_count {
    type: number
    sql: ${TABLE}.orderline_locations_count ;;
  }

  dimension: orderline_locations_lat_long {
    type: string
    sql: ${TABLE}.orderline_locations_lat_long ;;
  }

  dimension: orderline_locations_loc_seq {
    type: number
    sql: ${TABLE}.orderline_locations_locSeq ;;
  }

  dimension: orderline_locations_loc_type {
    type: string
    sql: ${TABLE}.orderline_locations_locType ;;
  }

  dimension: orderline_locations_location_id {
    type: string
    sql: ${TABLE}.orderline_locations_locationId ;;
  }

  dimension: orderline_req_details {
    hidden: yes
    sql: ${TABLE}.orderline_req_details ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: sku_desc {
    type: string
    sql: ${TABLE}.sku_desc ;;
  }

  dimension: sku_prod_class {
    type: string
    sql: ${TABLE}.SKU_PROD_CLASS ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  dimension: zip_lat_long {
    type: string
    sql: ${TABLE}.zip_lat_long ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: VIEW_TODAY_MULTILINE_1__orderline_req_details {
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

view: VIEW_TODAY_MULTILINE_1__orderline_locations_carrier_data {
  dimension: carrier_id {
    type: string
    sql: ${TABLE}.carrierId ;;
  }

  dimension: late_next_day {
    type: yesno
    sql: ${TABLE}.lateNextDay ;;
  }

  dimension: ship_zone {
    type: number
    sql: ${TABLE}.shipZone ;;
  }

  dimension: tnt {
    type: number
    sql: ${TABLE}.tnt ;;
  }
}

view: VIEW_TODAY_MULTILINE_1__multiline_locations {
  dimension: loc_cost {
    type: number
    sql: ${TABLE}.locCost ;;
  }

  dimension: loc_type {
    type: string
    sql: ${TABLE}.locType ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.locationId ;;
  }

  dimension: location_rank {
    type: number
    sql: ${TABLE}.locationRank ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: release_id {
    type: number
    sql: ${TABLE}.releaseId ;;
  }
}
