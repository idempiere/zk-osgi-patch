dir=`pwd`

./create-osgi-sources.sh

./mvn-deploy.sh file:///$dir/repository
