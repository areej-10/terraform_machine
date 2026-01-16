output "webserver_public_ips" {
  # Access the 'public_ip' output from the module for each instance in the count
  value = [for instance in module.myapp-webserver : instance.public_ip]
}

output "prod-webserver_public_ips" {
  value = [for instance in module.myapp-webserver-prod : instance.public_ip]
}