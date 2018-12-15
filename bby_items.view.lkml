view: bby_items {
  sql_table_name: ARC_COSTING.BBY_ITEMS ;;

  dimension: prod_class_nm {
    type: string
    sql: ${TABLE}.PROD_CLASS_NM ;;
  }

  dimension: sku_desc {
    type: string
    sql: ${TABLE}.SKU_DESC ;;
  }

  dimension: sku_id {
    type: number
    sql: ${TABLE}.SKU_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
