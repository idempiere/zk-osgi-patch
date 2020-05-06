1) ./build 
2) cd build-maven-repo & ./build.sh
3) mvn verify
4) To host p2 repository for local testing:
   mvn -Djetty.http.port=8083 -f pom-jetty-run.xml jetty:run
