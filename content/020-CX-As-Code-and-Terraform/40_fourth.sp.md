---
title: "Configuración de Recursos"
chapter: false
weight: 40
locale: "es-ES"
---

## ¿Qué necesitará para empezar?

Antes de ponernos manos a la obra con CX as Code, debemos tener en cuenta una serie de recursos y requisitos previos. A continuación encontrará los recursos disponibles, que varían en función del sistema operativo que esté utilizando.

# Windows

### Visual Studio Code

Puede descargar directamente VS Code -->  **[Aquí](https://code.visualstudio.com/download)**

### GitHub y GIT

Para empezar necesitaremos crear una cuenta de Github. Si ya tiene una cuenta de Github y una clave SSH generada, puede saltarse este paso. Si no tiene una cuenta de Github, por favor siga los siguientes pasos:

Crear una cuenta
Para crear una cuenta en GitHub.com, vaya a **[Github.com](https://github.com/)** y siga las instrucciones.

Instalar Git en Windows:

- Navegue hasta el último instalador de Git para Windows y descargue la última versión encontrada --> **[aquí](https://gitforwindows.org/)**
- Una vez iniciado el instalador, siga las instrucciones que aparecen en la pantalla del asistente de instalación de Git hasta completar la instalación.
- Abra el símbolo del sistema de Windows (o Git Bash si seleccionó no utilizar el símbolo del sistema estándar de Windows durante la instalación de Git).
- Escriba git version para verificar que Git fue instalado.

Nota: git-scm es un recurso popular y recomendado para descargar Git para Windows. La ventaja de descargar Git desde git-scm es que su descarga se inicia automáticamente con la última versión de Git incluida con el símbolo del sistema recomendado, Git Bash . La fuente de descarga es el mismo instalador de Git para Windows al que se hace referencia en los pasos anteriores.

##### Generar una nueva clave SSH y añadirla al ssh-agent

Encontrará documentación sobre este conjunto **[aquí](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)**

Hay dos métodos principales de clonación desde Github, SSH y HTTPS, cada uno de los cuales requiere configuración

Conexión a través de SSH:

- [Clonación con urls SSH](https://docs.github.com/en/github/getting-started-with-github/about-remote-repositories/#cloning-with-ssh-urls)
- [Generar una nueva clave SSH](https://docs.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

Y 

Conexión a través de HTTPS:

- [Clonación con urls SSH](https://docs.github.com/en/github/getting-started-with-github/about-remote-repositories/#cloning-with-https-urls)
- [Guardar en caché tus credenciales de GitHub en Git](https://docs.github.com/en/github/getting-started-with-github/caching-your-github-credentials-in-git)


### Terraform

Para empezar con Terraform, seguiremos el siguiente enlace para descargarlo en su máquina

Para windows, puede seguir las instrucciones de descarga de terraform que se encuentran en el sitio de terraform **[Aquí](https://www.terraform.io/downloads)**


Tenga en cuenta que este proceso de descarga puede tardar un poco, espere entre 10 y 30 minutos.

# MAC OS

### Visual Studio Code

Puede descargar directamente VS Code -->  **[Aquí](https://code.visualstudio.com/download)**

### GitHub y GIT

##### GitHub:

Crear una cuenta
Para crear una cuenta en GitHub.com, vaya a [Github.com](https://github.com/)** y siga las instrucciones.

##### GIT
La mayoría de las versiones de MacOS ya tendrán Git instalado, y puede activarlo a través del terminal con git version. Sin embargo, si no tiene Git instalado por cualquier razón, puede instalar la última versión de Git utilizando alguno de los métodos populares que se enumeran a continuación:

- Navegue hasta el último instalador de Git para macOS y descargue la última versión que se encuentra **[aquí](https://sourceforge.net/projects/git-osx-installer/files/git-2.23.0-intel-universal-mavericks.dmg/download?use_mirror=autoselect)
- Una vez que se haya iniciado el instalador, siga las instrucciones que se indican hasta que se complete la instalación.
- Abre el símbolo del sistema "terminal" y escribe git version para verificar que Git ha sido instalado.

Nota: git-scm es un recurso popular y recomendado para descargar Git en un Mac. La ventaja de descargar Git desde git-scm es que la descarga se inicia automáticamente con la última versión de Git. La fuente de descarga es el mismo instalador de Git para macOS al que se hace referencia en los pasos anteriores.

Instalar Git desde Homebrew
Homebrew es un popular gestor de paquetes para macOS. Si ya tiene Homwbrew instalado, puede seguir los siguientes pasos para instalar Git:

Abra una ventana de terminal e instala Git utilizando el siguiente comando: 

```
$brew install git
```

Una vez completada la salida del comando, puede verificar la instalación escribiendo: 

```
git version.
```

##### Generar una nueva clave SSH y añadirla al ssh-agent

Encontrará documentación sobre este conjunto **[aquí](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)**

Existen dos métodos principales para clonar desde Github, SSH y HTTPS, cada uno de los cuales requiere configuración

Conexión a través de SSH:

- [Clonación con urls SSH](https://docs.github.com/en/github/getting-started-with-github/about-remote-repositories/#cloning-with-ssh-urls)
- [Generar una nueva clave SSH](https://docs.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

Y

Conexión a través de HTTPS:

- [Clonación con urls SSH](https://docs.github.com/en/github/getting-started-with-github/about-remote-repositories/#cloning-with-https-urls)
- [Guardar en caché sus credenciales de GitHub en Git](https://docs.github.com/en/github/getting-started-with-github/caching-your-github-credentials-in-git)

### Terraform

Para mac, deberá seguir los siguientes pasos

- Descargue **[brew](https://brew.sh/)** y siga las instrucciones de descarga para configurar correctamente brew en su Mac
- una vez que haya descargado brew en su Mac OS, puede descargar terraform desde el enlace proporcionado anteriormente o pegar los siguientes comandos en su línea de comandos

```
$ brew tap hashicorp/tap
$ brew install hashicorp/tap/terraform

```