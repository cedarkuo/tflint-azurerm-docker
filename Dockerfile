FROM alpine:3.11

LABEL maintainer=cedarkuo

ENV TFLINT_VER=v0.21.0
ENV AZRUERM_PLUGIN_VER=v0.5.1

RUN wget https://github.com/terraform-linters/tflint/releases/download/${TFLINT_VER}/tflint_linux_amd64.zip -P /tmp \
    && unzip /tmp/tflint_linux_amd64.zip -d /usr/local/bin/ \
    && rm /tmp/tflint_linux_amd64.zip

RUN wget https://github.com/terraform-linters/tflint-ruleset-azurerm/releases/download/${AZRUERM_PLUGIN_VER}/tflint-ruleset-azurerm_linux_amd64.zip -P /tmp \
    && mkdir -p /root/.tflint.d/plugins/ \
    && unzip /tmp/tflint-ruleset-azurerm_linux_amd64.zip -d /root/.tflint.d/plugins/ \
    && rm /tmp/tflint-ruleset-azurerm_linux_amd64.zip

ENTRYPOINT ["tflint"]
WORKDIR /data
