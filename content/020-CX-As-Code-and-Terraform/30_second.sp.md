---
title: "¿Qué es CX As Code?"
chapter: false
weight: 20
---

## ¿Qué es CX As Code?

CX as Code es una herramienta de configuración que le permite definir objetos de Genesys Cloud como Colas, Habilidades, Usuarios, etc. en archivos de texto plano y luego aplicar esa configuración en una o varias organizaciones de Genesys Cloud CX.

Los usos de CX as code podrían ser:
- Aprovisionamiento de las configuraciones iniciales de una organización Genesys CX.
- Despliegue de la infraestructura CX en múltiples organizaciones Genesys CX
- Replicación de la infraestructura central de CX en un entorno de recuperación ante desastres (DR)


![CXasCodeOverview](/images/CXasCodeOverview.jpg)


##

## Recursos CX as Code 

Los recursos CX as Code se utilizan para **crear** componentes de configuración utilizando entradas (como el nombre de una habilidad), sin embargo; algunos recursos tienen numerosas dependencias, u objetos de configuración que deben existir o crearse en conjunto para que el recurso sea creado.



> A continuación se muestra un ejemplo de un recurso con varias entradas (nombre, descripción) y dependencias de fuentes de datos (queue_flow_id, whisper_prompt_id)

![image](/images/CXResource.PNG)

## Fuentes de datos CX as Code

Las fuentes de datos son similares a las solicitudes GET, permitiéndole obtener información que ya existe en la plataforma para ser referenciada dentro de los recursos por el nombre del componente como se muestra a continuación

> A continuación se muestra un ejemplo de una fuente de datos, estamos recuperando el saludo de bienvenida por su nombre "Welcome_Greeting", esto puede ser referenciado en el ejemplo de recurso anterior para rellenar el aviso de susurro (whisper prompt) para la cola.

![image](/images/CXDataSource.PNG)

## Herramientas de alojamiento en GitHub para CX as Code

En este curso utilizaremos Github como proveedor de alojamiento de repositorios, no sólo para alojar, sino también para extraer o compartir planos previamente desarrollados para diferentes casos de uso, tal y como se encuentran en el Centro de Desarrolladores de Genesys.

GitHub es una plataforma de alojamiento de código para el control de versiones y la colaboración. Le permite a usted y a otros trabajar juntos en proyectos desde cualquier lugar. Si esta es la primera vez que trabaja con Github, vamos a avanzar juntos a través del siguiente enlace en algunos de los termonología básica, el uso de Github y escenarios de por qué Github es útil para usted y su equipo. 

[Primeros pasos con Github](https://docs.github.com/en/get-started/quickstart/hello-world)

## Requisitos de acceso a la autenticación

Dentro de los recursos en el registro terraform verá una lista definida de los requisitos de acceso a la API para el cliente Oauth que ha creado, que describen los permisos que su cliente Oauth requiere para ejecutar el recurso específico que está revisando

![image](/images/CXAuthReq.PNG)
