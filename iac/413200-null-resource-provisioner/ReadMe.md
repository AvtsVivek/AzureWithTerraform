# Introduction to Null Resource

- Null Resource with provisioners.

- Time will be printed in the file provisioner-output.txt inside of directory local-exec-output-files.

- For this to work, you need to ensure that a folder by name **local-exec-output-files** exists. Take a look at the working_dir parameter below.

```
  provisioner "local-exec" {
    when        = create
    command     = "Get-Date > provisioner-output.txt"
    interpreter = ["PowerShell", "-Command"]
    working_dir = "local-exec-output-files/"
  }
```

- https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource