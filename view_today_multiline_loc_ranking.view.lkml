view: view_today_multiline_loc_ranking {
  sql_table_name: ARC_COSTING.VIEW_TODAY_MULTILINE_LOC_RANKING ;;

  dimension: consolidate {
    type: yesno
    sql: ${TABLE}.consolidate ;;
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

  dimension: location_id {
    type: string
    sql: ${TABLE}.locationId ;;
  }

  dimension: location_rank {
    type: number
    sql: ${TABLE}.locationRank ;;
  }

  dimension: multiline_locations_count {
    type: number
    sql: ${TABLE}.multiline_locations_count ;;
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

  dimension: orderline_locations_count {
    type: number
    sql: ${TABLE}.orderline_locations_count ;;
  }

  dimension: orderline_locations_loc_seq {
    type: number
    sql: ${TABLE}.orderline_locations_locSeq ;;
  }

  dimension: orderline_locations_location_id {
    type: string
    sql: ${TABLE}.orderline_locations_locationId ;;
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
