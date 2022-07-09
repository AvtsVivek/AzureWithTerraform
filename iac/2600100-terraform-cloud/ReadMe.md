## Introduction
- Create a new Terraform Cloud Organization
- Inside of that organization, create a new workspace
- Copy & Check-In Terraform Configurations in to Github Repository
- Create Terraform Cloud Account
- Create Organization
- Create Workspace by integrating with Github.com Git Repo we recently created
- Learn about Workspace related Queue Plan, Runs, States, Variables and Settings

# Steps
- Login to [Terraform Cloud Account](https://app.terraform.io/session)


![User Settings in Terraform Cloud account](./InstructionImages/TerraformCloudUserSettings.jpg)

- In the user settings, find Organizaton and click on it. Then click on Create New Organization.

![User Settings in Terraform Cloud account](./InstructionImages/CreateNewOrganization.jpg)

- Give a name, email and then click on Create org.

![New Org, name and email](./InstructionImages/NameEmailForNewOrg.jpg)


- Time to choose a workflow. Select Version control workflow.

![New Workspace](./InstructionImages/NewWorkspaceWorkflowSelection.jpg)

- Login to github.com and go to settings. Then Applications.

![Github Account](./InstructionImages/GithubSettings.jpg)

- Observe installed GitHubApps and Authorzed GitHub Apps.

![Apps in Github](./InstructionImages/ApplicationsInGitHub.jpg)

- If needed, uninstall or revoke the installed and authorized apps.

![Authorized Github Apps](./InstructionImages/AuthorizedGithubApps.jpg)

- Connect To VCS.

![ConnectToVCS](./InstructionImages/ConnectToVCP.jpg)

- Install Terraform to github.

![Auth to Github](./InstructionImages/AuthorizedToGitHub.jpg)

- Install Terraform Cloud.

![Auth to Github](./InstructionImages/InstallTerraformCloud.jpg)


- Configure Settings. Give a name to workspace. Set the Terraform working directory. Let the other options be default. Click on Create Workspace.

![Auth to Github](./InstructionImages/ConfigureSettings.jpg)


- Once the organization and workspace is created, go to settings of the organization(not the settings of workspace), then plan and billing.

![Change plan for the org](./InstructionImages/TerraformChangePlans.jpg)


- Change plan and select trial.

![Change plan for the org](./InstructionImages/SelectTrialPlan.jpg)

- Select trial plan and click on start your free trial at the bottom.

- Now for your workspace, add environment variables. 

![Variables to workspace](./InstructionImages/VariablesToWorkspace.jpg)


- Add Variables to workspace as follows.

First create a service principal. Then verify on the portal.

```t

az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/12b01360-f122-4223-bcf0-b1704509de3c"

```

![Variables to workspace](./InstructionImages/SpActiveDirectoryAppRegistrations.jpg)

- Now add the variables to workspace.

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


Verify 

az logout
az login --service-principal -u CLIENT_ID -p CLIENT_SECRET --tenant TENANT_ID
az login --service-principal -u 44b6dd03-f6a0-450a-9cec-d6df09767190 -p 70v8Q~yO-CJFlvboCYNcM1i2FQtvdHLxIJXWVbYR --tenant f6b411b7-3fd3-476c-95dd-c41f67b5fc30
az account list-locations -o table
az logout

![Add Sensitive Vars to Workspace](./InstructionImages/EnvVarsToWorkspace.jpg)


- Start a Run .
![Start a run](./InstructionImages/StartARun.jpg)

- Now Run the workspace.
![Start a run](./InstructionImages/RunWorkspace.jpg)


- Destroy as follows.
![Start a run](./InstructionImages/Destroy.jpg)


- Delete app registrations as follows.
![Delete App Reg](./InstructionImages/DeleteAppReg.jpg)

