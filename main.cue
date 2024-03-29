package cueconsumer

import "github.com/karandit/cuesandbox"

_default_storage_type : cuesandbox.StorageType
_default_storage_type : "io1"

tf : [string] : {
}

tf : mysql : cuesandbox.MySql
tf : mysql : {
	aws_region :        "eu-central-1"
	name : 	            "mysql-db"
	instance_class :    "t2.micro"
	allocated_storage : 45
	storage_type :      _default_storage_type
	master_username :   "root"
	master_password :   "something"
}

tf : alb : cuesandbox.AsgElb
tf : alb : {
	aws_region :    "eu-central-1"
        name :          "load-balancer-008"
	instance_type : "t2.micro"
	min_size :      2
	max_size :      2
	server_port :   8080
	elb_port :      33899
}
