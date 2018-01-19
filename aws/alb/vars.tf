/*
 * Required variables
 */
variable "app_name" {
  type = "string"
}

variable "app_env" {
  type = "string"
}

variable "vpc_id" {
  type = "string"
}

variable "security_groups" {
  type = "list"
}

variable "subnets" {
  type = "list"
}

variable "certificate_arn" {
  type = "string"
}

/*
 * Optional variables
 */
variable "port" {
  type    = "string"
  default = 80
}

variable "protocol" {
  type    = "string"
  default = "HTTP"
}

variable "access_logs_enabled" {
  type    = "string"
  default = "false"
}

variable "access_logs_bucket" {
  type    = "string"
  default = ""
}

variable "alb_name" {
  type        = "string"
  default     = ""
  description = "Manual override for ALB name (which is otherwise assembled from other given data)"
}

variable "internal" {
  type    = "string"
  default = "false"
}

variable "ssl_policy" {
  type    = "string"
  default = "ELBSecurityPolicy-2015-05"
}

variable "tg_name" {
  type        = "string"
  default     = ""
  description = "Manual override for ALB Target Group name (which is otherwise assembled from other given data)"
}

variable "health_check_interval" {
  default = "30"
}

variable "health_check_path" {
  default = "/"
}

variable "health_check_port" {
  default = "traffic-port"
}

variable "health_check_protocol" {
  default = "HTTP"
}

variable "health_check_timeout" {
  default = "5"
}

variable "healthy_threshold" {
  default = "5"
}

variable "unhealthy_threshold" {
  default = "2"
}

variable "health_check_status_codes" {
  default = "200"
}

variable "load_balancer_type" {
  default = "application"
}
