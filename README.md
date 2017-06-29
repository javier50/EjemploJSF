# EjemploJSF
CRUD utilizando JSF 2.2 con Primefaces.

Este ejemplo trabaja sin problemas con Weblogic 12.2.1

### Requisitos previos
* **Weblogic 12.2.1**
* **Mysql**

Si desplegar el proyecto en la versión 12.1.3 de Weblogic tendras que agregar la siguiente configuración

weblogic.xml
```
	<container-descriptor>
        <prefer-application-packages>
            <package-name>javax.faces.*</package-name>
            <package-name>com.sun.faces.*</package-name>
            <package-name>com.bea.faces.*</package-name>
        </prefer-application-packages>
        <prefer-application-resources>
            <resource-name>javax.faces.*</resource-name> 
            <resource-name>com.sun.faces.*</resource-name> 
            <resource-name>com.bea.faces.*</resource-name> 
            <resource-name>META-INF/services/javax.servlet.ServletContainerInitializer</resource-name>
            <resource-name>META-INF/services/com.sun.faces.spi.FacesConfigResourceProvider</resource-name>
        </prefer-application-resources>
    </container-descriptor>
```

beans.xml
```
    <alternatives>
        <class>com.oracle.cdi_enabler.CdiConversation</class>
    </alternatives>
```

pom.xml 
```
        <dependency>
            <groupId>com.oracle.cdi-enabler</groupId>
            <artifactId>cdi-enabler-1_0</artifactId>
            <version>1</version>
            <scope>compile</scope>
        </dependency>
```
