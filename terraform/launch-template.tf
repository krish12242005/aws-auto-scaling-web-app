data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_launch_template" "web" {
  name_prefix   = "${var.project_name}-"
  image_id      = data.aws_ssm_parameter.al2023_ami.value
  instance_type = "t3.micro"

  vpc_security_group_ids = [
    aws_security_group.web.id
  ]

  user_data = base64encode(<<-EOF
    #!/bin/bash

    dnf update -y
    dnf install -y httpd

    systemctl enable httpd
    systemctl start httpd

    cat > /var/www/html/index.html <<'HTML'
    <!DOCTYPE html>
    <html>
    <head>
      <title>AWS Auto Scaling Web App</title>
      <style>
        body {
          font-family: Arial, sans-serif;
          background: #0f172a;
          color: white;
          text-align: center;
          padding-top: 120px;
        }

        h1 {
          color: #38bdf8;
        }

        .box {
          display: inline-block;
          padding: 30px;
          border-radius: 15px;
          background: #1e293b;
          box-shadow: 0 0 25px rgba(56,189,248,0.3);
        }
      </style>
    </head>

    <body>
      <div class="box">
        <h1>AWS Auto Scaling Web App ??</h1>
        <p>Instance is running successfully!</p>
        <p>Managed by Auto Scaling Group + ALB</p>
      </div>
    </body>
    </html>
    HTML
  EOF
  )

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name    = "${var.project_name}-web-server"
      Project = var.project_name
    }
  }

  tags = {
    Name    = "${var.project_name}-launch-template"
    Project = var.project_name
  }
}
