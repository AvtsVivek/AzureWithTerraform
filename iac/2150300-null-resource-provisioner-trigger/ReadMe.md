# Introduction to Null Resource

- Null Resource with provisioners with Triggers.

- Time will be printed in the file provisioner-output.txt inside of directory local-exec-output-files.

- https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource#optional

- Differnce with earlier example(2150200-null-resource-provisioner) and this is the following.
    In the null resource, triggers are added.
    
    triggers = {
        always-update = timestamp()
    }

    

