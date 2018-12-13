resource "null_resource" "deploy-to-apigee" {

 triggers {
   key = "${uuid()}"
 }

 provisioner "local-exec" {
 command = "sh apigeeDeployment.sh ${var.org_name} ${var.apigee_env} ${var.appname} ${var.appname}.zip ${var.apigee_user_email} ${var.apigee_user_password} ${var.override} ${var.delay} ${var.createRevsion} ${var.promotion} ${var.promotionEnvironment} $(var.org_name_new)"
 }
}