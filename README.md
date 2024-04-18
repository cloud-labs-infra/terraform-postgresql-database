# Postgresql database
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7 |
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | ~>1.19 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~>3.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_postgresql"></a> [postgresql](#provider\_postgresql) | ~>1.19 |
| <a name="provider_random"></a> [random](#provider\_random) | ~>3.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [postgresql_database.main](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/database) | resource |
| [postgresql_grant.database](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/grant) | resource |
| [postgresql_role.role](https://registry.terraform.io/providers/cyrilgdn/postgresql/latest/docs/resources/role) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_connections"></a> [allow\_connections](#input\_allow\_connections) | If `false` then no one can connect to this database | `bool` | `true` | no |
| <a name="input_connection_limit"></a> [connection\_limit](#input\_connection\_limit) | How many concurrent connections can be established to this database | `number` | `-1` | no |
| <a name="input_encoding"></a> [encoding](#input\_encoding) | Character set encoding to use in the database | `string` | `"UTF8"` | no |
| <a name="input_lc_collate"></a> [lc\_collate](#input\_lc\_collate) | Collation order `LC_COLLATE` to use in the database | `string` | `"C"` | no |
| <a name="input_lc_ctype"></a> [lc\_ctype](#input\_lc\_ctype) | Character classification `LC_CTYPE` to use in the database | `string` | `"C"` | no |
| <a name="input_make_owner"></a> [make\_owner](#input\_make\_owner) | Set role as an owner of database | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the database | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | Owner role's password parameters | <pre>object({<br>    length      = optional(number, 20)<br>    special     = optional(bool, false)<br>    min_numeric = optional(number, 2)<br>    min_lower   = optional(number, 2)<br>  })</pre> | `{}` | no |
| <a name="input_privileges"></a> [privileges](#input\_privileges) | The list of privileges to grant role for the database | `list(string)` | <pre>[<br>  "CONNECT",<br>  "CREATE",<br>  "TEMPORARY"<br>]</pre> | no |
| <a name="input_role"></a> [role](#input\_role) | The name of the role, default - name of database | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | Database name |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Role name |
| <a name="output_role_password"></a> [role\_password](#output\_role\_password) | Role password |
<!-- END_TF_DOCS -->