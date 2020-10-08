# zk-osgi-patch
This repository is to hold patches and scripts to create zk osgi jars for idempiere. 

Usage:
* git clone https://github.com/zkoss/zk
* Create branch for the tags you want to build from. For e.g, for v9.0.1.2, git checkout tags/v9.0.1.2 -b b9.0.1.2
* Apply zk-osgi.patch, copy build-maven-repo and build-p2-repo to the clone folder
* Change version at build-maven-repo/pom.xml and build-maven-repo/mvn-deploy.sh
* Change version at build-p2-repo/pom.xml and build-p2-repo/pom-jetty-run.xml
* at zk source folder, ./build
* at build-maven-repo folder, ./build.sh
* at build-maven-repo folder, mvn -Djetty.http.port=8081 jetty:run
* at build-p2-repo, mvn verify
* to test the generated zk p2 repo (http://localhost:8082/zk.p2/), at build-p2-repo, mvn -f pom-jetty-run.xml -Djetty.http.port=8082 jetty:run
