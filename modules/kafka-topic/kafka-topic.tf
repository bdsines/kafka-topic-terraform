variable "topic_name" {
  type    = string
}
variable "topic_partitions" {
  type    = string
}

resource "kafka_topic" "topic" {
  name               = var.topic_name
  replication_factor = 2
  partitions         = var.topic_partitions

  config = {
    "segment.ms"     = "20000"
    "cleanup.policy" = "compact"
  }
}
# resource "kafka_acl" "topicacl" {
#   resource_name       = kafka_topic.topic
#   resource_type       = "Topic"
#   acl_principal       = "User:Alice"
#   acl_host            = "*"
#   acl_operation       = "Write"
#   acl_permission_type = "Deny"
# }