terraform {
  required_version = ">= 0.12.0"
}
provider "kafka" {
bootstrap_servers = ["10.154.79.5:9092","10.154.79.6:9092","10.154.79.7:9092","10.154.79.8:9092"] #AZURE_HDINSIGHT_BROKERS environment variable
tls_enabled = false
}
module "kafkatopic" {
  source = "../modules/kafka-topic"
  topic_name="bd-testtopic"

}
