view: orderline_sourcing {
  sql_table_name: ARC_COSTING.ORDERLINE_SOURCING ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: consider_floor {
    type: yesno
    sql: ${TABLE}.consider_floor ;;
  }

  dimension: email_addr_force_source {
    type: yesno
    sql: ${TABLE}.emailAddrForceSource ;;
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

  dimension: event_transaction_id {
    type: string
    sql: ${TABLE}.event_transactionId ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.eventType ;;
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

  dimension: loc_count {
    type: number
    sql: ${TABLE}.locCount ;;
  }

  dimension: locations {
    hidden: yes
    sql: ${TABLE}.locations ;;
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

  dimension: req_details {
    hidden: yes
    sql: ${TABLE}.req_details ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.trans_id ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  dimension: zip_ltln {
    type: string
    sql: ${TABLE}.zip_LTLN ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: ORDERLINE_SOURCING__req_details {
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

view: ORDERLINE_SOURCING__locations {
  dimension: carrier_data {
    hidden: yes
    sql: ${TABLE}.carrierData ;;
  }

  dimension: cost_pattern_data {
    hidden: yes
    sql: ${TABLE}.costPatternData ;;
  }

  dimension: full_inventory {
    type: number
    sql: ${TABLE}.fullInventory ;;
  }

  dimension: inventory_type {
    type: string
    sql: ${TABLE}.inventoryType ;;
  }

  dimension: loc_cost {
    type: number
    sql: ${TABLE}.locCost ;;
  }

  dimension: loc_seq {
    type: number
    sql: ${TABLE}.locSeq ;;
  }

  dimension: loc_type {
    type: string
    sql: ${TABLE}.locType ;;
  }

  dimension: location_attributes_data {
    hidden: yes
    sql: ${TABLE}.locationAttributesData ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.locationId ;;
  }

  dimension: location_over_capacity {
    type: number
    sql: ${TABLE}.locationOverCapacity ;;
  }

  dimension: location_rank {
    type: number
    sql: ${TABLE}.locationRank ;;
  }

  dimension: location_type {
    type: number
    sql: ${TABLE}.locationType ;;
  }

  dimension: los_configuration_data {
    hidden: yes
    sql: ${TABLE}.losConfigurationData ;;
  }

  dimension: meet_in_hand_date {
    type: number
    sql: ${TABLE}.meetInHandDate ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: ship_zone {
    type: number
    sql: ${TABLE}.shipZone ;;
  }

  dimension: shipping_method {
    type: number
    sql: ${TABLE}.shippingMethod ;;
  }

  dimension: sku_attributes_data {
    hidden: yes
    sql: ${TABLE}.skuAttributesData ;;
  }

  dimension: sku_location_attributes_data {
    hidden: yes
    sql: ${TABLE}.skuLocationAttributesData ;;
  }

  dimension: sku_location_inventory_health {
    type: number
    sql: ${TABLE}.skuLocationInventoryHealth ;;
  }

  dimension: sku_location_status {
    type: number
    sql: ${TABLE}.skuLocationStatus ;;
  }

  dimension: tnt {
    type: number
    sql: ${TABLE}.tnt ;;
  }
}

view: ORDERLINE_SOURCING__locations__location_attributes_data {
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

view: ORDERLINE_SOURCING__locations__los_configuration_data {
  dimension: los_config_id {
    type: string
    sql: ${TABLE}.losConfigId ;;
  }

  dimension: los_config_priority {
    type: number
    sql: ${TABLE}.losConfigPriority ;;
  }

  dimension: los_id {
    type: string
    sql: ${TABLE}.losId ;;
  }
}

view: ORDERLINE_SOURCING__locations__sku_location_attributes_data {
  dimension_group: min_age {
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
    sql: ${TABLE}.minAge ;;
  }

  dimension: min_price {
    type: string
    sql: ${TABLE}.minPrice ;;
  }

  dimension: sku_condition_lock {
    type: yesno
    sql: ${TABLE}.skuConditionLock ;;
  }

  dimension: sku_location_condition_lock {
    type: yesno
    sql: ${TABLE}.skuLocationConditionLock ;;
  }

  dimension: sku_location_gift_lock {
    type: yesno
    sql: ${TABLE}.skuLocationGiftLock ;;
  }

  dimension: sku_location_inventory_health {
    type: number
    sql: ${TABLE}.skuLocationInventoryHealth ;;
  }

  dimension: sku_location_lock {
    type: yesno
    sql: ${TABLE}.skuLocationLock ;;
  }

  dimension: sku_location_on_hand_inventory {
    type: number
    sql: ${TABLE}.skuLocationOnHandInventory ;;
  }

  dimension: sku_location_with_floor_inventory {
    type: number
    sql: ${TABLE}.skuLocationWithFloorInventory ;;
  }
}

view: ORDERLINE_SOURCING__locations__sku_attributes_data {
  dimension: sku_active {
    type: yesno
    sql: ${TABLE}.skuActive ;;
  }

  dimension: sku_avail_in_store {
    type: yesno
    sql: ${TABLE}.skuAvailInStore ;;
  }

  dimension: sku_department_id {
    type: number
    sql: ${TABLE}.skuDepartmentId ;;
  }

  dimension: sku_lock {
    type: yesno
    sql: ${TABLE}.skuLock ;;
  }

  dimension: sku_sourcing_indicator {
    type: string
    sql: ${TABLE}.skuSourcingIndicator ;;
  }
}

view: ORDERLINE_SOURCING__locations__cost_pattern_data {
  dimension: cost_pattern_id {
    type: string
    sql: ${TABLE}.costPatternId ;;
  }

  dimension: full_inventory {
    type: number
    sql: ${TABLE}.fullInventory ;;
  }

  dimension: location_over_capacity {
    type: number
    sql: ${TABLE}.locationOverCapacity ;;
  }

  dimension: location_rank {
    type: number
    sql: ${TABLE}.locationRank ;;
  }

  dimension: lpn_age {
    type: number
    sql: ${TABLE}.lpnAge ;;
  }

  dimension: lpn_price {
    type: number
    sql: ${TABLE}.lpnPrice ;;
  }

  dimension: meet_in_hand_date {
    type: number
    sql: ${TABLE}.meetInHandDate ;;
  }

  dimension: ship_zone {
    type: number
    sql: ${TABLE}.shipZone ;;
  }

  dimension: shipping_method {
    type: number
    sql: ${TABLE}.shippingMethod ;;
  }

  dimension: sku_location_inventory {
    type: number
    sql: ${TABLE}.skuLocationInventory ;;
  }

  dimension: tnt {
    type: number
    sql: ${TABLE}.tnt ;;
  }
}

view: ORDERLINE_SOURCING__locations__carrier_data {
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
