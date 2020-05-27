# tflint-azurerm-docker

This project is for build the docker tflint with tflint-ruleset-azurerm plugin.

And it haven't wrap `.tflint.hcl` file in it, don't forget mount your .tflint.hcl setting for enable azurerm plugin.

```
plugin "azurerm" {
    enabled = true
}
```

