# CLI driven workflow.

## Summary

- This exercise is a simple CLI driven workflow.

- The resources are created on Azure by Terraform. 

- But the tarrafrom tool sitting on terrarom cloud and not on developers machine. 

## Steps

- Inside of an terraform cloud Organization, Create a workspace as follows. Select Cli Driven Workflow.

![Create Workspace ](./Images/CliDrivenWorkflow.jpg)

- Give a namd and description .

![Name and Description for Workspace](./Images/NameAndDescriptionToWorkspace.jpg)

- Add env vars to the workspace which will enable terraform to connect to Azure.

```t
{
  "appId": "44b6dd03-f6a0-450a-9cec-d6df09767190",
  "displayName": "tfvivl-terraform-sp-hcta",
  "password": "70v8Q~yO-CJFlvboCYNcM1i2FQtvdHLxIJXWVbYR",
  "tenant": "f6b411b7-3fd3-476c-95dd-c41f67b5fc30"
}

ARM_CLIENT_ID="44b6dd03-f6a0-450a-9cec-d6df09767190"
ARM_CLIENT_SECRET="70v8Q~yO-CJFlvboCYNcM1i2FQtvdHLxIJXWVbYR"
ARM_SUBSCRIPTION_ID="12b01360-f122-4223-bcf0-b1704509de3c"
ARM_TENANT_ID="f6b411b7-3fd3-476c-95dd-c41f67b5fc30"

```

![Name and Description for Workspace](./Images/VariablesToWorkspace.jpg)

- Now run the commands from teh commands.sh file.

