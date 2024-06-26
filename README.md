# zk-osgi-patch
This repository is to hold patches and scripts to create zk osgi jars for idempiere. 

Usage:
* *git clone https://github.com/zkoss/zk*
* Create branch for the tags you want to build from. For e.g, for v10.0.1, *git checkout tags/v10.0.1 -b b10.0.1*
* If you have multiple JDK install, set JAVA_HOME to JDK11
* Build iceblue_c theme
  * *git clone https://github.com/zkoss/zkThemeTemplate*
  * Switch to tagged version, for e.g *git check tags/v10.0.1 -b b10.0.1*
  * Edit src/archive/web/zul/less/_zkvariables.less, change @themeProfile to "compact"
  * *./init.sh*, use org.zkoss.theme for group id and iceblue_c for theme name
  * *npm install*
  * *mvn clean package*
  * Replace zk/dist/lib/iceblue_c.jar with zkThemeTemplate/target/iceblue_c-<version>.jar
* Build iceblue_c theme sources jar
  * Remark --compress in pom.xml (line 136)
  * *mvn clean package*
  * Copy zkThemeTemplate/target/iceblue_c-<version>.jar to zk/dist/lib. rename the copied jar to iceblue_c-sources.jar
* Update dist/lib/breeze.jar
  * Rename dist/lib/breeze.jar to dist/lib/breeze.zip and unzip it
  * Copy dist/lib/breeze/breeze-<version>.jar and breeze-<version>-sources.jar to dist/lib. remove the version postfix (for e.g, rename breeze-10.0.1.jar to breeze.jar and breeze-10.0.1-sources.jar to breeze-sources.jar)
* Build zk
  * Apply zk-osgi.patch (*git apply zk-osgi.patch*)
  * Copy build-maven-repo and build-p2-repo to the clone folder
  * Change version at build-maven-repo/pom.xml and build-maven-repo/mvn-deploy.sh
  * Change version at build-p2-repo/pom.xml and build-p2-repo/pom-jetty-run.xml
  * *npm install*
  * *./gradlew build*
  * *./gradlew buildOSGi*
* Build keikai
  * *git clone https://github.com/hengsin/keikai*
  * Switch to zk10 branch, *git checkout zk10*
  * *mvn -P=official verify*
* Remove local maven cache, *rm -r -f ~/.m2/repository/org/zkoss*
* At build-maven-repo folder, *./build.sh*
* At keikai folder, *./mvn-deploy.sh file://{absolute path to zk source}/build-maven-repo/repository*
* At build-maven-repo folder, *mvn -Djetty.http.port=8081 jetty:run*
* At build-p2-repo, *mvn verify*
* To test the generated zk p2 repo (http://localhost:8082/p2.zk/), at build-p2-repo, *mvn -f pom-jetty-run.xml -Djetty.http.port=8082 jetty:run*

Update Target Platform:
* Update zk.version at org.idempiere.parent/pom.xml
* Remove all jar files at org.idempiere.zk.extra/lib
* Update binary.file/maven.zk
  * At build-maven-repo folder, deploy maven library to binary.file/maven.zk
    * *./mvn-deploy.sh file://{absolute path to binary.file}/binary.file/maven.zk/*
  * At keikai
    * *./mvn-deploy.sh file://{absolute path to binary.file}/binary.file/maven.zk/*
  * At binary.file/p2.zk, create a new folder for the new version, for e.g 10.0.1. Copy all files from build-p2-repo/target/repository to the new folder.
  * At binary.file/p2.zk/<new version>, copy index.html from previous version. Change the version number in index.html. 
  * Push binary.file changes.
* Wait for https://idempiere.github.io/binary.file/p2.zk/{zk version}/ (replace {zk version} with the just deployed zk version, for e.g 10.0.1).
* Update zk library and repository version in org.idempiere.p2.targetplatform/org.idempiere.p2.targetplatform.tpd
* Generate new org.idempiere.p2.targetplatform/org.idempiere.p2.targetplatform.target from org.idempiere.p2.targetplatform.tpd, update target name and sequenceNumber in org.idempiere.p2.targetplatform.target
* At iDempiere source folder, *mvn clean verify*
