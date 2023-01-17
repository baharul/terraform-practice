# Explicit dependency

resource "local_file" "whale" {
    filename="/Users/bahkhan/VAIPRATECH/terraform-practice/whale"
    content="whale"
    depends_on = [local_file.krill]
}

resource "local_file" "krill" {
    filename="/Users/bahkhan/VAIPRATECH/terraform-practice/krill"
    content="krill"
}