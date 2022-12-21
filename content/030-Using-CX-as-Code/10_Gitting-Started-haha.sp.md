---
title: "Empezar a trabajar"
chapter: false
weight: 10
locale: "es-ES"
---

## Crear un repositorio local de archivos

Lo primero es lo primero, vamos a crear un repositorio local de archivos o "repo". Esto es una forma elegante de crear una carpeta local en tu máquina que se utilizará para almacenar código y proyectos de desarrollo. El almacenamiento de código en su máquina le permite trabajar y realizar cambios en su proyecto antes de empujar sus cambios a un repositorio de GitHub, donde reside la configuración fuente. 


> Es una buena práctica no incluir espacios en el nombre de esta carpeta, o archivos en general durante el desarrollo. En su lugar considere nombrar los archivos como: "ThisFile" o "This_File".

## Abra esta carpeta en VSCode

Puede hacer clic con el botón derecho del ratón dentro de esta carpeta y seleccionar "Abrir con código" o navegar hasta ella desde VSCode Directly

![image](/images/CXFolderNav.PNG)

## Crear un cliente OAuth
Genere un cliente Oauth con credenciales de cliente en el panel de administración de Genesys Cloud.

La pestaña roles es donde se especifican los permisos que tendrá este cliente.
> es una buena práctica limitar los permisos de los clientes a sólo sus funciones requeridas

![image](/images/CXAuthClient.PNG)

## Clonar su repositorio

Aquí, vamos a ver cómo clonar su repositorio Terraform desde el repositorio GitHub proporcionado [aquí](https://github.com/MyPureCloud/terraform-provider-genesyscloud)

Para empezar, hay dos maneras de clonar su repositorio. La primera es bifurcar el repositorio y la segunda es clonar el repositorio directamente. En este caso, recomendamos primero bifurcar el repositorio, y luego clonarlo en su máquina dentro de VS Code.

Usted notará dentro de Github, hay un botón para bifurcar (fork) el repositorio a su cuenta de Github en la parte superior derecha:

![image](/images/GitHubFork.png)

Una vez que haya seleccionado fork, accederá a una página en la que podrá seleccionar dónde quiere que resida su repositorio dentro de GitHub y crear su repositorio bifurcado (forked) 

![image](/images/CreateFork.png)

¡Buen trabajo! Ya ha creado el repositorio. Ahora es el momento de clonarlo en su máquina local para empezar a trabajar con los recursos proporcionados. Antes de hacerlo, asegúrese de tener su archivo abierto en GITHub y de haber configurado correctamente su máquina para usar GIThub, terraform y VScode. Una vez que esté listo, comenzamos copiando el enlace HTTPS que se encuentra debajo del botón de código en GitHub como se muestra a continuación:

![image](/images/GitCloneFork.png)

Ahora, nos vamos a VS code donde hemos abierto el archivo donde vivirá nuestro repositorio dentro de nuestra máquina local. Dentro de VS Code, abrimos una nueva terminal para ejecutar el comando "GIT Clone" para extraer el repositorio a su máquina local como se ve a continuación:

![image](/images/VSTerminal.png)

Con el terminal ahora abierto ejecutaremos el siguiente comando:

![image](/images/GITclonecommand.png)

> **¡Y ya está! Ahora ha clonado con éxito un repositorio en su máquina local para empezar a trabajar en sus primeros scripts terraform. En el siguiente módulo, trabajaremos con algunos scripts terraform de ejemplo para empezar con los fundamentos de la creación de su canalización de código para configurar sus despliegues de Genesys CX.** 
