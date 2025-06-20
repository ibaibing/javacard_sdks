

# Fork Description

Please read the original author's [README](README.md) before reading this document.

The main content is from [oracle_javacard_sdks](https://github.com/martinpaljak/oracle_javacard_sdks.git). Thanks you to the project author.

The following blue items are the parts I collected and sorted out personally. The purpose is to learn Java Card technology and study the history of Java Card.

| SDK                                                  | Converter Version                                 | JDK Version                      | Description |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| jc20_kit | N/A | - | Developer Release 2 release of 20 February 1998. No data source was found, and the age was too old to use, [It's just a memorial]. |
| jc21_kit | 1.0 | - | New added, deleted **samples** , **demo** and **doc** folder, rename **bin** to **lib** ,and there's no validation for ant-Javacard compatibility. |
|jc211_kit|1.1|JDK8|-|
|jc212_kit|1.2|JDK8|-|
|jc220_kit|1.3|JDK8|New added, deleted **samples** and **doc** folder, in fact it's version 2.2_01,and there's no validation for ant-Javacard compatibility.|
|jc221_kit|1.3|JDK8|-|
|jc222_kit|1.3|JDK8|-|
|jc301_kit_ClassicEdition|v3.0.1|JDK11|• New added, deleted **samples** and **doc** folder,and there's no validation for ant-Javacard compatibility<br/>• ant-javacard will throw an exception error: invalid flag -useproxyclass.,because the converter doesn't support the option **-useproxyclass** <br/>•If you want to use it manually, see the NOTES |
|jc302_kit_ClassicEdition|v3.0.2|JDK11|New added, deleted **samples** and **doc** folder,and there's no validation for ant-Javacard compatibility|
|jc303_kit|v3.0.3|JDK11|-|
|jc304_kit|v3.0.4|JDK11|-|
|jc305u1_kit|v3.0.5|JDK11|-|
|jc305u2_kit|v3.0.5|JDK11|-|
|jc305u3_kit|v3.0.5|JDK11|-|
|jc305u4_kit|v3.0.5|JDK11|-|
|jc310b43_kit|v3.1.0|JDK11|-|
|jc310r20210706_kit|v3.1.0|JDK11|-|
|jc320v24.0_kit|v3.2.0|JDK11|-|
|jc320v24.1_kit|v24.1|JDK11|-|
|jc320v25.0_kit|v25.0|JDK8,JDK11 both OK|-|

## NOTES

Use jc301_kit_ClassicEdition directory.

1.First configure the environment according to the instructions for [building-javacard-applet](https://github.com/ibaibing/building-javacard-applet/blob/main/README.md), but jc301 need JDK1.8, and then,

2.Use JCSDK directly like this:
```bash
cd your_project
```

```bash
javac 
-classpath .\libs\jcsdks\jc301_kit_ClassicEdition\lib\api_classic.jar;.\bin\Release;.\libs\gpapis\CORE\1.0\gpapi-globalplatform.jar; 
-target 1.5 
-source 1.5 
-d .\bin\Release 
-g src\HelloWorld\*.java
```

```bash
java 
-Djc.home=.\libs\jcsdks\jc301_kit_ClassicEdition  
-classpath .\libs\jcsdks\jc301_kit_ClassicEdition\lib\tools.jar com.sun.javacard.converter.Main 
-exportpath .\bin\Release;.\libs\jcsdks\jc301_kit_ClassicEdition\api_export_files;.\libs\gpapis\CORE\1.0\exports 
-out JCA CAP EXP  
-classdir .\bin\Release  
-d .\bin\Release 
-i 
-applet 0xD0:0x48:0x65:0x6c:0x6c:0x6F:0x77:0x6F:0x72:0x6c:0x64 HelloWorld HelloWorld 0xD0:0x48:0x65:0x6c:0x6c:0x6F:0x77:0x6F:0x72:0x6c:0x64:0x00 1.00
```



