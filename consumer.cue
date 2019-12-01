package user

import "github.com/karandit/cuesandbox"

default_storage_type :: "standard"

mysql : cuesandbox.MySql
mysql : {
	aws_region :        "eu-central-1"
	name :              "the name"
	instance_class :    "t2.micro"
	allocated_storage : 45
	storage_type :      default_storage_type
	master_username :   "root"
	master_password :   "something"
}
