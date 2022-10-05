resource "ncloud_login_key" "loginkey" {
  key_name = "test-key"
}

# resource "ncloud_vpc" "test" {
#   ipv4_cidr_block = "10.0.0.0/16"
# }

# resource "ncloud_subnet" "test" {
#   vpc_no         = ncloud_vpc.test.vpc_no
#   subnet         = cidrsubnet(ncloud_vpc.test.ipv4_cidr_block, 8, 1)
#   zone           = "KR-1"
#   network_acl_no = ncloud_vpc.test.default_network_acl_no
#   subnet_type    = "PUBLIC"
#   usage_type     = "GEN"
# }

# resource "ncloud_server" "server" {
#   subnet_no                 = ncloud_subnet.test.id
#   name                      = "my-tf-server-1"
#   server_image_product_code = "SW.VSVR.OS.LNX64.UBNTU.SVR1604.B050"
#   login_key_name            = ncloud_login_key.loginkey.key_name
# }


resource "ncloud_server" "server" {
    name = "tf-test-vm1"
    server_image_product_code = "SPSW0LINUX000032"
    server_product_code = "SPSVRSTAND000004"
    login_key_name            = ncloud_login_key.loginkey.key_name

#     tag_list {
#       tag_key = "samplekey1"
#       tag_value = "samplevalue1"
#     }

#     tag_list {
#       tag_key = "samplekey2"
#       tag_value = "samplevalue2"
#     }
}
