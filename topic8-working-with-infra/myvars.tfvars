/*vpc values*/
vpc_cidr = "10.10.0.0/16"
vpc_name = "dvsvpc1"
igw_name = "dvsvpc1-igw"
route_name = "dvsvpc1-route1"
vpc_sub_cidr = "10.10.15.0/24"
sub_name = "dvsvpc1-sub1"
sec_grp_name = "dvsvpc1-sg1"

/*ec2 values*/
ami_id="ami-0cff7528ff583bf9a"
ec2_size="t2.micro"
ec2_name="dvs-server1"
ec2_key="shaan-ramana-nvirg-key"


/*s3 values*/
bucketname="dvsbatch2-2022"
tags = {
    Environment = "Dev"
        Department      = "DevOps"
  }

