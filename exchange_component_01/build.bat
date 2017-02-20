"%JAVA%\bin\javac" -Xlint:all -g:none -classpath build -d build src\ILight.java
"%JAVA%\bin\javac" -Xlint:all -g:none -classpath build -d build src\EconomyLight.java

cd build
"%JAVA%\bin\jar" -cvf EconomyLight.jar ILight.class
"%JAVA%\bin\jar" -uvf EconomyLight.jar EconomyLight.class
"%JAVA%\bin\jar" -uvf EconomyLight.jar EconomyLight$Port.class

move EconomyLight.jar ..\EconomyLight.jar

pause