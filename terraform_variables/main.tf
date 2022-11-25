resource "local_file" "devops-var"{
	filename = var.file_list[0]
	content = var.content_map.content2
}


output "megha_trainer"{
	value = var.megha_trainer
}

output "aws_ec2_inst"{
	value = var.aws_ec2_object.instance
}

output "batch_no_of_students"{
	value = var.no_of_students
}
