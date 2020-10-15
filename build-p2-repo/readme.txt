1) ./build 
2) cd build-maven-repo & ./build.sh
3) mvn verify
4) To host p2 repository for local testing (http://localhost:8082/p2.zk/):
   mvn -Djetty.http.port=8082 -f pom-jetty-run.xml jetty:run
