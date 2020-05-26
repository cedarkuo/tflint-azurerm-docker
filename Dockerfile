FROM wata727/tflint:0.16.1

LABEL maintainer=cedarkuo

RUN wget https://github.com/terraform-linters/tflint-ruleset-azurerm/releases/download/v0.1.0/tflint-ruleset-azurerm_linux_amd64.zip -O /root/tflint-ruleset-azurerm_linux_amd64.zip \
    && mkdir -p /root/.tflint.d/plugins/ \
    && unzip /root/tflint-ruleset-azurerm_linux_amd64.zip -d /root/.tflint.d/plugins/ \
    && rm /root/tflint-ruleset-azurerm_linux_amd64.zip

ENTRYPOINT ["tflint"]
WORKDIR /data
