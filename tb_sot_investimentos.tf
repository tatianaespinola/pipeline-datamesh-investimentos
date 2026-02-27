resource "aws_glue_catalog_database" "database_sot" {
  name = var.database_name_sot
}

resource "aws_glue_catalog_table" "sot_investimentos" {
  name          = var.table_sot_name
  database_name = aws_glue_catalog_database.database_sot.name
  table_type    = "EXTERNAL_TABLE"

  parameters = {
    "classification" = "csv"
    "skip.header.line.count" = "1"
  }

  storage_descriptor {
    location      = var.s3_location_sot
    input_format  = "org.apache.hadoop.mapred.TextInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    ser_de_info {
      name                  = "csv_serde"
      serialization_library = "org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe"

      parameters = {
        "field.delim"         = ","
        "skip.header.line.count" = "1"
      }
    }

    # Schema baseado no seu dataset

    columns {
      name = "transaction_id"
      type = "int"
    }

    columns {
      name = "customer_id"
      type = "string"
    }

    columns {
      name = "product_type"
      type = "string"
    }

    columns {
      name = "transaction_type"
      type = "string"
    }

    columns {
      name = "transaction_date"
      type = "string"
    }

    columns {
      name = "amount"
      type = "double"
    }

    columns {
      name = "channel"
      type = "string"
    }
  }
}