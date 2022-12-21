---
title: "¿Por qué usar CX as Code?"
chapter: false
weight: 10
locale: "es-ES"
---

## ¿Por qué usar CX as Code?

Puede que estés mirando algunos de los artículos de recursos, o que te hayas saltado algunas páginas del taller y te hayas preguntado "¿Por qué iba a pasar por todo esto para simplemente construir una habilidad?".

Si bien este taller está destinado a proporcionar un conocimiento fundacional de CX as Code, el alcance de CX as Code va mucho más allá de pasar 4 horas construyendo una habilidad

Las funciones administrativas de Genesys Cloud dentro de la interfaz gráfica de usuario están diseñadas para ser increíblemente sencillas, pero existen numerosas aplicaciones en las que CX as Code puede reforzar y automatizar sus capacidades administrativas


### Configuración Multi-Org
CX as Code le permite compilar una vez y desplegar en todas partes, acelerando los despliegues multiorg o los cambios de configuración.

### Facilidad de Administración
CX as Code alivia la necesidad de que los administradores se preocupen acerca de qué objetos de configuración tienen qué dependencias; Terraform hará referencia a los recursos solicitados y a las fuentes de datos para trazar el orden lógico de cómo las cosas necesitan ser construidas basadas en las dependencias requeridas.

> A continuación se muestra un ejemplo de un recurso de teléfono de construcción con numerosas dependencias, tales como el sitio y la información de la base, que tendría que ser construido antes de ser capaz de construir este teléfono. Terraform mapeará la secuencia de construcción requerida para asegurar que todas las dependencias sean construidas en el orden necesario para lograr la construcción del teléfono.

![image](/images/CXDependencies.PNG)

Además de los casos de uso anteriores, si alguno de estos puntos le preocupa, CX as Code puede ser la solución;
1. Infraestructura inmutable
2. Tareas de aprovisionamiento, gestión de la configuración y DevOps
3. Construcción de una canalización CI/CD