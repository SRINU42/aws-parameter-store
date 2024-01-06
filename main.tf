#resource "aws_ssm_parameter" "params" {
#  count = length(var.params)  
#  name  = var.params[count.index].name
#  type  = var.params[count.index].type
#  value = var.params[count.index].value
#}
#
#variable "params" {
#    default = [
#        { name = "demo1", value = "demo1", type = "String" },
#        { name = "demo2", value = "demo2 ", type = "String" }
#    ]
#
#}

resource "aws_ssm_parameter" "params" {
  count = length(var.params)  
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
    default = [
        { name = "roboshop.dev.fronted.catalogue_url", value = "http://catalogue-dev.devopssessions.store:8080/", type = "String" },
        { name = "roboshop.dev.fronted.user_url", value = "http://user-dev.devopssessions.store:8080/", type = "String" },
        { name = "roboshop.dev.fronted.cart_url", value = "http://cart-dev.devopssessions.store:8080/", type = "String" },
        { name = "roboshop.dev.fronted.shipping_url", value = "http://shipping-dev.devopssessions.store:8080/ ", type = "String" },
        { name = "roboshop.dev.fronted.payment_url", value = "http://payment-dev.devopssessions.store:8080/", type = "String" }
       
    ]

}