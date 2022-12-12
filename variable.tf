


variable "myapp_1" {
#   type = object({
#     aws_region = string
#     app_name       = string
#     app_image      = string
#     container_port = number
#     tg_hc_path = string
#     domain_name = string
#     ecs_clustername = string
#     desired_count = number
#   })
# }

variable "container_definition" {
  type = list(object({
    name = string
    image  = string
    cpu  = string
    memory = number
    essential = string
    portMappings = list()
  }))
}
variable "networkMode" {
  type = string
  default = "bridge"
}

variable "container_port" {
  type = number
}

variable "host_port" {
  type = number
  default = 0
}

#alb variables
variable "alb_name" {
  type = string
  default = "my-alb" 
}

/*
variable "tg_name" {
    type = string
    default = "ecs-target-group" 
}
*/
variable "tg_port" {
  type = number
  default = 80
}

variable "vpc_id" {
  type = string
  default = "vpc-04f38cbe913c1555d" 
}

variable "tg_protocol" {
  type = string
  default = "HTTP"
}

variable "tg_type" {
  type = string
  default = "instance"
}

variable "tg_healthy_threshold" {
  type = number
  default = 3
}

variable "tg_hc_interval" {
  type = string
  default = "30"
}

variable "tg_hc_protocol" {
  type = string
  default = "HTTP"
}

variable "tg_hc_matcher" {
  type = string
  default = "200"

}

variable "tg_hc_timeout" {
  type = string
  default = "3"
}

variable "tg_hc_path" {
  type = string
}

variable "tg_unhealthy_threshold" {
  type = string
  default = "2"
}


#ecs cluster variables
variable "ecs_clustername" {
  type = string
}

variable "desired_count" {
  type    = number
  default = 1
}

#ALB Listener Rule
/*
variable "alb_listener_arn" {
  type    = string
  default = "arn:aws:elasticloadbalancing:us-west-2:963021055388:listener/app/my-alb/67cfdb4cc96084a7/e57fd7922a5764e8"
}
*/

/*
variable "alb_listener_priority" {
  type = number
}
*/
variable "alb_action_type" {
  type    = string
  default = "forward"
}

variable "domain_name" {
  type = string
  
}

variable "name" {
    default = "demo1"
}
variable "asg_max" {
    default = 3
}
variable "asg_min" {
    default = 1
}
variable "health_check_type" {
    default = "ELB"
}
variable "desired_capacity" {
    default = 1
}
variable "force_delete" {
    default = "true"
}
variable "instance_types" {
    default = "t2.micro"
}
variable "asg_sg" { 
}

variable "vpc_zone_id" {
    default = []
}
variable "health_check_grace_period" { 
    default = 300
}
variable "image_id" {
    default = "ami-0fe77b349d804e9e6"
}

variable "vpc_cidr" {

}

variable "name" {
  
}
variable "from_port" {
    default = "80"
}
variable "to_port" {
    default = "80"
}


variable "sg_vpc_id" {

}