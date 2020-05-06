rid=zk.maven.repo
gid=org.zkoss.zk
cgid=org.zkoss.common
version=9.0.1
path=../dist/lib/osgi
tpath=../dist/lib
tgid=org.zkoss.theme

mvn deploy:deploy-file -Dfile=$path/zcommon.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$cgid -DartifactId=zcommon \
	-Dsources=$path/zcommon-sources.jar -Dversion=$version
mvn deploy:deploy-file -Dfile=$path/zel.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$cgid -DartifactId=zel \
	-Dsources=$path/zel-sources.jar -Dversion=$version	
mvn deploy:deploy-file -Dfile=$path/zhtml.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zhtml \
	-Dsources=$path/zhtml-sources.jar -Dversion=$version
mvn deploy:deploy-file -Dfile=$path/zjavassist.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zjavassist \
	-Dversion=$version
mvn deploy:deploy-file -Dfile=$path/zk.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zk \
	-Dsources=$path/zk-sources.jar -Dversion=$version	
mvn deploy:deploy-file -Dfile=$path/zkbind.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zkbind \
	-Dsources=$path/zkbind-sources.jar -Dversion=$version
mvn deploy:deploy-file -Dfile=$path/zkplus.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zkplus \
	-Dsources=$path/zkplus-sources.jar -Dversion=$version	
mvn deploy:deploy-file -Dfile=$path/zkplus-legacy.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zkplus-legacy \
	-Dsources=$path/zkplus-legacy-sources.jar -Dversion=$version	
mvn deploy:deploy-file -Dfile=$path/zkwebfragment.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zkwebfragment \
	-Dsources=$path/zkwebfragment-sources.jar -Dversion=$version	
mvn deploy:deploy-file -Dfile=$path/zul.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zul \
	-Dsources=$path/zul-sources.jar -Dversion=$version
mvn deploy:deploy-file -Dfile=$path/zweb.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$cgid -DartifactId=zweb \
	-Dsources=$path/zweb-sources.jar -Dversion=$version	
mvn deploy:deploy-file -Dfile=$path/zweb-dsp.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$cgid -DartifactId=zweb-dsp \
	-Dsources=$path/zweb-dsp-sources.jar -Dversion=$version
mvn deploy:deploy-file -Dfile=$tpath/breeze.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$tgid -Dversion=$version -DartifactId=breeze
mvn deploy:deploy-file -Dfile=$tpath/iceblue_c.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$tgid -Dversion=$version -DartifactId=iceblue_c		
