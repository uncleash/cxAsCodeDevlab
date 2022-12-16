---
title: "Construya su código base"
chapter: false
weight: 20
---

## Configurar la estructura de archivos

A partir de aquí, vamos a empezar desde cero con dos scripts terraform y cómo empezar con terraform. A continuación verá dos archivos terraform separados que necesitará crear. Dentro de VS Code, cree nuevas carpetas con la convención de nomenclatura de abajo:

Cree dos archivos en VS code: 
1. Variables.tf
2. Main.tf

Copie el siguiente fragmento de código y péguelo en su archivo Variables.tf. Una vez copiado tendrá que introducir su ID y secreto de cliente de Oauth con la información del cliente de Oauth que creó en el paso anterior. También tendrá que reemplazar la [Región de AWS](https://help.mypurecloud.com/articles/aws-regions-for-genesys-cloud-deployment/) (que se encuentra en la columna del nombre de la región de AWS en el artículo vinculado) con la región de AWS en la que reside su org de Genesys Cloud.

```
variable "oauthclient_id" {
  default = "OAUTH ID HERE"
}
variable "oauthclient_secret" {
  default = "OAUTH SECRET HERE"
}

variable "aws_region" {
  default = "MY AWS REGION"
}
```

Copie el fragmento de código a continuación y péguelo en su archivo Main.tf. Este fragmento de código contiene su referencia de Oauth, proveedores y un recurso para construir una habilidad de enrutamiento

```
terraform {
  required_version = "~> 1.1.6"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.0.0"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id = var.oauthclient_id
  oauthclient_secret = var.oauthclient_secret
  aws_region = var.aws_region
}

resource "genesyscloud_routing_skill" "test_skill" {
  name = "Test Skill"
}

```
## Ejecución de los comandos de Terraform

Abra una terminal en Visual Studio Code.

![sdsd](/images/CXTerminal.PNG)
En su terminal, ejecutará una serie de tres comandos de terraform.

Lo primero que tendrá que ejecutar es:
```
terraform init
```
Esto debería inicializar terraform en su repositorio local permitiéndole ejecutar comandos de terraform.

El siguiente comando que ejecutará es:
```
terraform plan
```
![image](/images/CXTFPlan.PNG)

Esto le dará un desglose de lo que se creará, modificará o destruirá al ejecutar terraform apply.

Si todo se ve bien con el plan, probablemente puedas adivinar lo que vamos a ejecutar a continuación:
```
terraform apply
```
Deberá confirmar que realmente desea realizar los cambios, así que diga "yes".

![image](/images/CXTFApply.PNG)

En este punto, debería poder ingresar a la organización y ver que se realizaron los cambios. Felicidades, ha creado con éxito una habilidad usando CX as Code.