---------------------------------------------------------------
|                            README                           |
---------------------------------------------------------------

1. Prerequisitos.

Este proyecto tiene los siguientes prerequisitos:

 - Maquina local con el sistema operativo Windows 11
 - IntelliJ IDEA 2024.2.2 (Community Edition)
    - Plugins en IntelliJ IDEA
      - Cucumber +
      - Cucumber for java
      - Gherkin
      - Karate    
- Maven version 3.9.1 (Configurado en variables de entorno de sistema)
- JDK versión 17 (Configurado en variables de entorno de sistema)

2. Configuraciones previas.

Descargar los plugins en IntelliJ IDEA en settings/plugins:

      - Cucumber +
      - Cucumber for java
      - Gherkin
      - Karate
      - Maven

Descarga e importar el proyecto de github  https://github.com/fbecerraa/Consultas_Petstore/tree/master a IntelliJ IDEA.
Las dependencias se encuentran agregadas al archivo pom.xml.

En intelliJ IDEA seleccionar Projects, Get from VCS luego agregar la url del proyecto de github y Clonar.

3. Instrucciones para ejecutar los test.

La ejecución del proyecto se realiza desde el archivo RunnerKarate ubicado en src/test/java/config/. Los test se encuentran en el archivo feature one_test_inicial.feature ubicado en src/test/resources/features/.

En el archivo RunnerKarate se puede configurar la ejecución de los Features o escenarios mediante un tag, para el proyecto actual se ha creado el tag @feature que ejecutará todas los escenarios del archivo, se puede cambiar por el tag @prueba si se requiere ejecutarlos a nivel de escenario.

Al ejecutar RunnerKarate se puede ver el resultado de la ejecución en la parte inferior, al final se puede encontrar un reporte en HTML con el resultado detallado de la ejecución actual.

Al abrir el reporte en un navegador se puede observar el detalle de ejecución, el feature, título, tests pasados, test fallidos, escenarios y tiempo de ejecución.

Al abrir el Feature se presenta el detalle de ejecución de cada uno de los escenarios.
