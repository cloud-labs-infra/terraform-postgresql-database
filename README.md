# Postgresql database
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.4 |
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | 1.19.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_postgresql"></a> [postgresql](#provider\_postgresql) | 1.19.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [postgresql_database.main](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.19.0/docs/resources/database) | resource |
| [postgresql_role.owner](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.19.0/docs/resources/role) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_connections"></a> [allow\_connections](#input\_allow\_connections) | If `false` then no one can connect to this database | `bool` | `true` | no |
| <a name="input_connection_limit"></a> [connection\_limit](#input\_connection\_limit) | How many concurrent connections can be established to this database | `number` | `-1` | no |
| <a name="input_encoding"></a> [encoding](#input\_encoding) | Character set encoding to use in the database | `string` | `"UTF8"` | no |
| <a name="input_lc_collate"></a> [lc\_collate](#input\_lc\_collate) | Collation order `LC_COLLATE` to use in the database | `string` | `"C"` | no |
| <a name="input_lc_ctype"></a> [lc\_ctype](#input\_lc\_ctype) | Character classification `LC_CTYPE` to use in the database | `string` | `"C"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the database | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | Role's password parameters | <pre>object({<br>    length  = optional(number, 20)<br>    special = optional(bool, false)<br>  })</pre> | `{}` | no |
| <a name="input_role"></a> [role](#input\_role) | The name of the role, default - name of database | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_owner_name"></a> [db\_owner\_name](#output\_db\_owner\_name) | Database owner name |
| <a name="output_db_owner_password"></a> [db\_owner\_password](#output\_db\_owner\_password) | Database owner password |
| <a name="output_name"></a> [name](#output\_name) | Database name |
<!-- END_TF_DOCS -->