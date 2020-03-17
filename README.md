# _Terraform Module: terraform-module-aws-efs-mount-target_
_Terraform Module for_ **_AWS Elastic File System (EFS) mount target_**


<!--BEGIN STABILITY BANNER-->
---

![_Code : Stable_](https://img.shields.io/badge/Code-Stable-brightgreen?style=for-the-badge&logo=github)

> **_This is a stable example. It should successfully build out of the box_**
>
> _This examples does is built on Construct Libraries marked "Stable" and does not have any infrastructure prerequisites to build._

---
<!--END STABILITY BANNER-->


## _General_

_This module may be used to create_ **_Elastic File System (EFS) mount target_** _resources in AWS cloud provider...._

---


## Prerequisites

_This module needs_ **_Terraform 0.12.23_** _or newer._
_You can download the latest Terraform version from_ [here](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._


---

## Features Branches

_Below we are able to check the resources that are being created as part of this module call:_

* **_Elastic File System (EFS) mount target_**


---


## Usage

## Using this repo

_To use this module, add the following call to your code:_

```tf
module "efs_mount_target" {
  source = "git::https://github.com/nitinda/terraform-module-aws-efs-mount-target.git?ref=master"

  file_system_id = var.file_system_id
  subnet_id      = var.subnet_id
}
```

```tf
module "efs_mount_target" {
  source = "git::https://github.com/nitinda/terraform-module-aws-efs-mount-target.git?ref=master"

  file_system_id = var.file_system_id
  subnet_id      = var.subnet_id

  security_groups = [var.security_groups]
}
```

---

## Inputs

_The variables required in order for the module to be successfully called from the deployment repository are the following:_


|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** |
|:----|:----|-----:|:---:|
| **_file\_system\_id_** | _The ID of the file system for which the mount target is intended_ | _string_ | **_Required_** |
| **_subnet\_id_** | _The ID of the subnet to add the mount target in_ | _string_ | **_Required_** |
| **_ip\_address_** | _The address at which the file system <br/> may be mounted via the mount target_ | _string_ |  **_Optional <br/> (Default - null)_** |
| **_security\_groups_** | _A list of up to 5 VPC security group IDs_ | _list(string)_ |  **_Optional <br/> (Default - [])_** |


---


## _Outputs_

### _General_

_This module has the following outputs:_

* **_id_**
* **_arn_**

---

### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<module_name>.<output_variable_name>
```

---


## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**
