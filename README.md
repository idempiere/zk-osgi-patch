# zk-osgi-patch
This repository is to hold patches and scripts to create zk osgi jars for idempiere. 

Usage:
* git clone https://github.com/zkoss/zk
* Create branch for the tags you want to build from. For e.g, for v9.0.1.2, git checkout tags/v9.0.1.2 -b b9.0.1.2
* Apply zk-osgi.patch (git apply zk-osgi.patch), copy build-sources.sh, build-maven-repo and build-p2-repo to the clone folder
* Change version at build-maven-repo/pom.xml and build-maven-repo/mvn-deploy.sh
* Change version at build-p2-repo/pom.xml and build-p2-repo/pom-jetty-run.xml
* If you have multiple JDK install, set JAVA_HOME to JDK11
* at zk source folder, ./build clean
* at zk source folder, ./build build.release
* at zk source folder, ./build-sources.sh
* Perform the manual step for zjavassist-sources.jar noted at the bottom of build-sources.sh
* Remove local maven cache at ~/.m2/repository/org/zkoss
* at build-maven-repo folder, ./build.sh
* at build-maven-repo folder, mvn -Djetty.http.port=8081 jetty:run
* at build-p2-repo, mvn verify
* to test the generated zk p2 repo (http://localhost:8082/p2.zk/), at build-p2-repo, mvn -f pom-jetty-run.xml -Djetty.http.port=8082 jetty:run

Update Target Platform:
* At build-maven-repo folder, deploy maven library to binary.file/maven.zk - ./mvn-deploy.sh file:/{path}/binary.file/maven.zk.
* At binary.file/p2.zk, create a new folder for the new version, for e.g 9.5.0. Copy all files from build-p2-repo/target/repository to the new folder.
* At binary.file/p2.zk/<new version>, copy index.html from previous version. Change the version number in index.html.
* Push binary.file changes.
* Wait for https://idempiere.github.io/binary.file/p2.zk/{zk version}/ (replace {zk version} with the just deployed zk version, for e.g 9.6.4).
* Update zk.version at org.idempiere.parent/pom.xml
* Remove all jar files at org.idempiere.zk.extra/lib
* Update zk library and repository version at org.idempiere.p2.targetplatform/org.idempiere.p2.targetplatform.target
* Update target name and sequenceNumber at org.idempiere.p2.targetplatform/org.idempiere.p2.targetplatform.target
