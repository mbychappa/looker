view: view_today_multiline {
  sql_table_name: ARC_COSTING.VIEW_TODAY_MULTILINE ;;

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

  dimension: inhand_date {
    type: string
    sql: ${TABLE}.inhand_date ;;
  }

  dimension: order_line_key {
    type: string
    sql: ${TABLE}.order_line_key ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}.order_no ;;
  }

  dimension: orderline_category {
    type: string
    sql: ${TABLE}.orderline_category ;;
  }

  dimension: orderline_consider_floor {
    type: yesno
    sql: ${TABLE}.orderline_consider_floor ;;
  }

  dimension: orderline_loc_count {
    type: number
    sql: ${TABLE}.orderline_locCount ;;
  }

  dimension: orderline_loc_lat_lon {
    type: string
    sql: ${TABLE}.orderline_loc_lat_lon ;;
  }

  dimension: orderline_locations {
    hidden: yes
    sql: ${TABLE}.orderline_locations ;;
  }

  dimension: orderline_locations_carrier_data {
    hidden: yes
    sql: ${TABLE}.orderline_locations_carrierData ;;
  }

  dimension: orderline_locations_location_attributes_data {
    hidden: yes
    sql: ${TABLE}.orderline_locations_locationAttributesData ;;
  }

  dimension: orderline_locations_meet_in_hand_date {
    type: number
    sql: ${TABLE}.orderline_locations_meetInHandDate ;;
  }

  dimension: orderline_locations_shipping_method {
    type: number
    sql: ${TABLE}.orderline_locations_shippingMethod ;;
  }

  dimension: orderline_order_qty {
    type: number
    sql: ${TABLE}.orderline_order_qty ;;
  }

  dimension: orderline_req_details {
    hidden: yes
    sql: ${TABLE}.orderline_req_details ;;
  }

  dimension: orderline_state {
    type: string
    sql: ${TABLE}.orderline_state ;;
  }

  dimension: orderline_zip_code {
    type: string
    sql: ${TABLE}.orderline_zip_code ;;
  }

  dimension: orderline_zip_lat_long {
    type: string
    sql: ${TABLE}.orderline_zip_lat_long ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}

view: VIEW_TODAY_MULTILINE__orderline_req_details {
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

view: VIEW_TODAY_MULTILINE__orderline_locations_location_attributes_data {
  dimension: air_cut_off_time {
    type: string
    sql: ${TABLE}.airCutOffTime ;;
  }

  dimension: cut_off_time {
    type: string
    sql: ${TABLE}.cutOffTime ;;
  }

  dimension: gift_packaging_enabled {
    type: yesno
    sql: ${TABLE}.giftPackagingEnabled ;;
  }

  dimension: late_night_cut_off_time {
    type: string
    sql: ${TABLE}.lateNightCutOffTime ;;
  }

  dimension: location_over_capacity {
    type: yesno
    sql: ${TABLE}.locationOverCapacity ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.locationType ;;
  }

  dimension: sfs_enabled {
    type: yesno
    sql: ${TABLE}.sfsEnabled ;;
  }

  dimension: sfs_open_box_eligible {
    type: yesno
    sql: ${TABLE}.sfsOpenBoxEligible ;;
  }
}

view: VIEW_TODAY_MULTILINE__orderline_locations_carrier_data {
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

view: VIEW_TODAY_MULTILINE__orderline_locations {
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
