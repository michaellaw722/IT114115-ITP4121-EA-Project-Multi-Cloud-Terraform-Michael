output "aws_vpc" {
  value       = aws_vpc.EKSProject.id
}

output "Public_Subnet1a_id" {
  value       = aws_subnet.Public_Subnet1a.id
}

output "Public_Subnet1b_id" {
  value       = aws_subnet.Public_Subnet1b.id
}

output "Public_Subnet1a_CIDR" {
  value       = aws_subnet.Public_Subnet1a.cidr_block
}

output "Public_Subnet1b_CIDR" {
  value       = aws_subnet.Public_Subnet1b.cidr_block
}



output "Private_Subnet1a_id" {
  value       = aws_subnet.Private_Subnet1a.id
}

output "Private_Subnet1b_id" {
  value       = aws_subnet.Private_Subnet1b.id
}

output "Private_Subnet1a_CIDR" {
  value       = aws_subnet.Private_Subnet1a.cidr_block
}

output "Private_Subnet1b_CIDR" {
  value       = aws_subnet.Private_Subnet1b.cidr_block
}

output "EKS_SG" {
  value       = aws_security_group.EKS_SG.id
}

output "EKS_SG_Name" {
  value       = aws_security_group.EKS_SG.name
}
