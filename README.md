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

![image](https://github.com/user-attachments/assets/aefd2e69-1f0a-47ff-bcd7-52b9fc22caf2)


Descarga e importar el proyecto de github  https://github.com/fbecerraa/Consultas_Petstore/tree/master a IntelliJ IDEA.
Las dependencias se encuentran agregadas al archivo pom.xml.

![image](https://github.com/user-attachments/assets/f84cd944-1071-4627-9a0e-c3b79006b426)

En intelliJ IDEA seleccionar Projects, Get from VCS luego agregar la url del proyecto de github y Clonar.

![image](https://github.com/user-attachments/assets/1aa931a2-f94e-43a1-9818-0419b4025a4d)

3. Instrucciones para ejecutar los test.

La ejecución del proyecto se realiza desde el archivo RunnerKarate ubicado en src/test/java/config/. Los test se encuentran en el archivo feature one_test_inicial.feature ubicado en src/test/resources/features/.

En el archivo RunnerKarate se puede configurar la ejecución de los Features o escenarios mediante un tag, para el proyecto actual se ha creado el tag @feature que ejecutará todas los escenarios del archivo, se puede cambiar por el tag @prueba si se requiere ejecutarlos a nivel de escenario.

![image](https://github.com/user-attachments/assets/9ba57730-ad1b-4d0c-8d40-15212e8b681d)

Al ejecutar RunnerKarate se puede ver el resultado de la ejecución en la parte inferior, al final se puede encontrar un reporte en HTML con el resultado detallado de la ejecución actual.

![image](https://github.com/user-attachments/assets/42b00db1-9bfc-4e39-9401-cdfc221317d4)

Al abrir el reporte en un navegador se puede observar el detalle de ejecución, el Feature, título, tests pasados, test fallidos, escenarios y tiempo de ejecución.

![image](https://github.com/user-attachments/assets/d6d88423-8706-4ef8-8bf7-4d8939aec42a)

Al abrir el Feature se presenta el detalle de ejecución de cada uno de los escenarios.

![image](https://github.com/user-attachments/assets/1f2f4d5a-be2b-4328-8d91-37bfa50752aa)
