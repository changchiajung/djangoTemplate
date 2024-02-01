resource "aws_iam_role" "ec2_code_deploy_role" {
  name               = var.ec2_code_deploy_role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  tags               = var.module_tags
}

resource "aws_iam_role_policy_attachment" "ec2_code_deploy_attachment" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforAWSCodeDeploy"
  role       = aws_iam_role.ec2_code_deploy_role.name
}

resource "aws_iam_instance_profile" "ec2_code_deploy_role_profile" {
  name = var.ec2_code_deploy_role_name
  role = aws_iam_role.ec2_code_deploy_role.name
}

resource "aws_iam_role" "code_deploy_role" {
  name               = var.code_deploy_role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  tags               = var.module_tags
}

resource "aws_iam_role_policy_attachment" "code_deploy_attachment" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole"
  role       = aws_iam_role.code_deploy_role.name
}
