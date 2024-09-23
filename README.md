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

Descarga e importar el proyecto de github  https://github.com/fbecerraa/Consultas_Petstore/tree/master a IntelliJ IDEA.
Las dependencias se encuentran agregadas al archivo pom.xml, descargar los plugins en IntelliJ IDEA en settings/plugins:

      - Cucumber +
      - Cucumber for java
      - Gherkin
      - Karate

![image](https://github.com/user-attachments/assets/64a35faf-3b29-4c7d-b6c3-f9651375b565)

3. Instrucciones para ejecutar los test.

La ejecución del proyecto se realiza desde el archivo RunnerKarate ubicado en src/test/java/config/. Los test se encuentran en el archivo feature one_test_inicial.feature ubicado en src/test/resources/features/.

En el archivo RunnerKarate se puede configurar la ejecución de los Features o escenarios mediante un tag, para el proyecto actual se ha creado el tag @feature que ejecutará todas los escenarios del archivo, se puede cambiar por el tag @prueba si se requiere ejecutarlos a nivel de escenario.

![image](https://github.com/user-attachments/assets/9ba57730-ad1b-4d0c-8d40-15212e8b681d)

Al ejecutar RunnerKarate se puede ver el resultado de la ejecución en la parte inferior, al final se puede encontrar un reporte en HTML con el resultado detallado de la ejecución actual.

![image](https://github.com/user-attachments/assets/42b00db1-9bfc-4e39-9401-cdfc221317d4)



