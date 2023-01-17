resource "local_file" "my_local_file" {
    filename = "${var.filename}"
    content = "${var.content} ${random_pet.my_pet.id}"
    
}

resource "random_pet" "my_pet" {
    prefix = var.prefix
    separator = var.separator
}

resource "tls_private_key" "pvtkey" {
    algorithm="RSA"
    rsa_bits=4096
}

resource "local_file" "key_file" {
    filename="/Users/bahkhan/VAIPRATECH/terraform-practice/key.txt"
    content = "${tls_private_key.pvtkey.private_key_pem}"
}