view: multiline_sourcing {
  sql_table_name: ARC_COSTING.MULTILINE_SOURCING ;;

  dimension_group: partitionTime {
    type: time
    timeframes: [date,week,month,year]
    sql: _PARTITIONTIME ;;
  }

  dimension: consolidate {
    type: yesno
    sql: ${TABLE}.consolidate ;;
  }

  dimension_group: eventTime {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.eventTime ;;
    convert_tz: yes
  }

  dimension: event_transaction_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.event_transactionId ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.eventType ;;
  }

  dimension_group: orderTime {
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

  dimension: order_lines {
    hidden: yes
    sql: ${TABLE}.orderLines ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}.order_no ;;
  }

  dimension: orderlines_count {
    type: number
    sql: ${TABLE}.orderlines_count ;;
  }

  dimension_group: publish {
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
    sql: ${TABLE}.publishTime ;;
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.trans_id ;;
  }

  measure: count {
    type: count
    drill_fields: [event_transaction_id]
  }
}

view: MULTILINE_SOURCING__order_lines {
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: consider_floor {
    type: yesno
    sql: ${TABLE}.consider_floor ;;
  }

  dimension: consolidation {
    hidden: yes
    sql: ${TABLE}.consolidation ;;
  }

  dimension: email_addr_force_source {
    type: yesno
    sql: ${TABLE}.emailAddrForceSource ;;
  }

  dimension: gift_pack_enabled {
    type: yesno
    sql: ${TABLE}.giftPackEnabled ;;
  }

  dimension: inhand_date {
    type: string
    sql: ${TABLE}.inhand_date ;;
  }

  dimension: line_sourcing_trans_id {
    type: number
    sql: ${TABLE}.line_sourcing_trans_id ;;
  }

  dimension: loc_count {
    type: number
    sql: ${TABLE}.locCount ;;
  }

  dimension: locations {
    hidden: yes
    sql: ${TABLE}.locations ;;
  }

  dimension: los {
    type: string
    sql: ${TABLE}.los ;;
  }

  dimension: ltl {
    type: yesno
    sql: ${TABLE}.ltl ;;
  }

  dimension: order_line_key {
    type: string
    sql: ${TABLE}.order_line_key ;;
  }

  dimension: order_line_type {
    type: string
    sql: ${TABLE}.order_line_type ;;
  }

  dimension: order_qty {
    type: number
    sql: ${TABLE}.order_qty ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }
}

view: MULTILINE_SOURCING__order_lines__consolidation {
  dimension: carrier_service_code {
    type: string
    sql: ${TABLE}.carrierServiceCode ;;
  }

  dimension: carrier_service_group {
    type: string
    sql: ${TABLE}.carrierServiceGroup ;;
  }

  dimension: gift_wrap {
    type: yesno
    sql: ${TABLE}.giftWrap ;;
  }

  dimension: mrr_line_excluded {
    type: yesno
    sql: ${TABLE}.mrr_line_excluded ;;
  }

  dimension: mrr_release_id {
    type: number
    sql: ${TABLE}.mrr_releaseId ;;
  }

  dimension: pre_order_flag {
    type: yesno
    sql: ${TABLE}.preOrderFlag ;;
  }

  dimension: ship_to_key {
    type: string
    sql: ${TABLE}.shipToKey ;;
  }

  dimension: translated_key {
    type: string
    sql: ${TABLE}.translatedKey ;;
  }

  dimension: translated_value {
    type: string
    sql: ${TABLE}.translatedValue ;;
  }
}

view: MULTILINE_SOURCING__order_lines__locations {
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
