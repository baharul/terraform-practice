resource "local_file" "my_local_file" {
    filename = var.filename
    content = var.content
    
}

resource "random_pet" "my_pet" {
    prefix = var.prefix
    separator = var.separator
}