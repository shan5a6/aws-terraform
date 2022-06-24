variable "env" {
	type = string
}

locals {
	env = {
		dev = {
			bucketname = "dvsbatch2-2022-dev"
			tags = {
					"Env" = "Dev"
					"Dept" = "DevOps"
				}
		}
		prod = {
			bucketname = "dvsbatch2-2022-prod"
			tags = {
					"Env" = "Prod"
					"Dept" = "DevOps"
				}
		}
	}

}
module "s3" {
	source = "/root/modules/s3/"
	bucketname = "${local.env[var.env].bucketname}"
	tags    = "${local.env[var.env].tags}"

}
