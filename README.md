# zk-osgi-patch
This repository is to hold patches and scripts to create zk osgi jars for idempiere. 

Usage:
* Clone https://github.com/zkoss/zk
* Apply zk-osgi.patch, copy build-maven-repo and build-p2-repo to the clone folder
* ./build
* at build-maven-repo folder, ./build.sh
* at build-maven-repo folder, mvn -Djetty.http.port=8081 jetty:run
* at build-p2-repo, mvn verify
* to test the generated zk p2 repo, at build-p2-repo, mvn -f pom-jetty-run.xml -Djetty.http.port=8082 jetty:run
