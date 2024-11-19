
locals {
  mytags = {
    Env   = "Training"
    Dept  = "Training"
    Owner = "Paul"
    Modified = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  }
}