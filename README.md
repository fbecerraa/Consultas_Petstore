# README

1. **Prerequisitos**

   Este proyecto tiene los siguientes prerequisitos:

   - Máquina local con el sistema operativo Windows 11
   - IntelliJ IDEA 2024.2.2 (Community Edition)
     - Plugins en IntelliJ IDEA:
       - Cucumber +
       - Cucumber for Java
       - Gherkin
       - Karate
   - Maven versión 3.9.1 (Configurado en variables de entorno de sistema y en IntelliJ IDEA en `File > Settings > Build, Execution, Deployment > Build Tools > Maven > Maven home path` especificar la ruta de instalación de Maven)
   - JDK versión 17 (Configurado en variables de entorno de sistema), en IntelliJ IDEA en `File > Project Structure > Project` seleccionar el SDK 17.

2. **Configuraciones Previas**

   Descargar los plugins en IntelliJ IDEA en `Settings > Plugins`:

   - Cucumber +
   - Cucumber for Java
   - Gherkin
   - Karate
   - Maven

   Descarga e importa el proyecto de GitHub Consultas_Petstore a IntelliJ IDEA. Las dependencias se encuentran agregadas al archivo `pom.xml`.

   En IntelliJ IDEA seleccionar `Projects > Get from VCS`, luego agregar la URL del proyecto de GitHub y clonar.

3. **Instrucciones para Ejecutar los Test**

   La ejecución del proyecto se realiza desde el archivo `RunnerKarate` ubicado en `src/test/java/config/`. Los tests se encuentran en el archivo feature `one_test_inicial.feature` ubicado en `src/test/resources/features/`.

   En el archivo `RunnerKarate` se puede configurar la ejecución de los Features o escenarios mediante un tag. Para el proyecto actual se ha creado el tag `@feature` que ejecutará todos los escenarios del archivo. Se puede cambiar por el tag `@prueba` si se requiere ejecutarlos a nivel de escenario.

   Al ejecutar `RunnerKarate` se puede ver el resultado de la ejecución en la parte inferior. Al final se puede encontrar un reporte en HTML con el resultado detallado de la ejecución actual.

   Al abrir el reporte en un navegador se puede observar el detalle de ejecución, el feature, título, tests pasados, tests fallidos, escenarios y tiempo de ejecución.

   Al abrir el Feature se presenta el detalle de ejecución de cada uno de los escenarios.
