FROM alpine:3.11

LABEL maintainer=cedarkuo

RUN wget https://github.com/terraform-linters/tflint/releases/download/v0.16.1/tflint_linux_amd64.zip -P /tmp \
    && unzip /tmp/tflint_linux_amd64.zip -d /usr/local/bin/ \
    && rm /tmp/tflint_linux_amd64.zip

RUN wget https://github.com/terraform-linters/tflint-ruleset-azurerm/releases/download/v0.1.0/tflint-ruleset-azurerm_linux_amd64.zip -P /tmp \
    && mkdir -p /root/.tflint.d/plugins/ \
    && unzip /tmp/tflint-ruleset-azurerm_linux_amd64.zip -d /root/.tflint.d/plugins/ \
    && rm /tmp/tflint-ruleset-azurerm_linux_amd64.zip

ENTRYPOINT ["tflint"]
WORKDIR /data
