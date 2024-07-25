# module "ec2_optionpulse" {
#   source = "git::https://github.com/terraform-aws-modules/terraform-aws-iam.git?ref=88435a9"

#   name = "${var.env}-instance-profile"

# }


resource "aws_iam_role" "instance_role" {
  name = "instance_profile_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_role_policy_attachment" "instance_ssm_policy" {
  role       = aws_iam_role.instance_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}
resource "aws_iam_instance_profile" "instance_profile" {
  name = "instance_profile"
  role = aws_iam_role.instance_role.name

}