view: bby_locs {
  sql_table_name: ARC_COSTING.BBY_LOCS ;;

  dimension: loc_lat_lon_extract {
    type: location
    sql_latitude:SPLIT(bby_locs.loc_lat_lon, ',')[OFFSET(0)] as Loc_lat ;;
    sql_longitude:SPLIT(bby_locs.loc_lat_lon, ',')[OFFSET(1)] Loc_long ;;
  }

  dimension: loc_lat_lon {
    type: string
    sql: ${TABLE}.loc_lat_lon ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
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
