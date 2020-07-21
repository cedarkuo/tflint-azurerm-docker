# tflint-azurerm-docker

This project is for build the docker [tflint](https://github.com/terraform-linters/tflint) with [tflint-ruleset-azurerm](https://github.com/terraform-linters/tflint-ruleset-azurerm) plugin.

And it haven't wrap `.tflint.hcl` file in it, don't forget mount your .tflint.hcl setting for enable azurerm plugin.

```
plugin "azurerm" {
    enabled = true
}
```

