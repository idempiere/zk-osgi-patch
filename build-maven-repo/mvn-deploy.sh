rid=zk.maven.repo
gid=org.zkoss.zk
cgid=org.zkoss.common
version=10.0.1
path=../build/dist/lib/osgi
spath=../build/dist/lib/osgi-src
tpath=../dist/lib
tgid=org.zkoss.theme

mvn deploy:deploy-file -Dfile=$path/zcommon.osgi.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$cgid -DartifactId=zcommon \
	-Dsources=$spath/zcommon-sources.jar -Dversion=$version
mvn deploy:deploy-file -Dfile=$path/zel.osgi.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$cgid -DartifactId=zel \
	-Dsources=$spath/zel-sources.jar -Dversion=$version	
mvn deploy:deploy-file -Dfile=$path/zhtml.osgi.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zhtml \
	-Dsources=$spath/zhtml-sources.jar -Dversion=$version
mvn deploy:deploy-file -Dfile=$path/zk.osgi.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zk \
	-Dsources=$spath/zk-sources.jar -Dversion=$version	
mvn deploy:deploy-file -Dfile=$path/zkbind.osgi.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zkbind \
	-Dsources=$spath/zkbind-sources.jar -Dversion=$version
mvn deploy:deploy-file -Dfile=$path/zkplus.osgi.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zkplus \
	-Dsources=$spath/zkplus-sources.jar -Dversion=$version	
mvn deploy:deploy-file -Dfile=$path/zkwebfragment.osgi.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zkwebfragment \
	-Dsources=$spath/zkwebfragment-sources.jar -Dversion=$version	
mvn deploy:deploy-file -Dfile=$path/zul.osgi.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$gid -DartifactId=zul \
	-Dsources=$spath/zul-sources.jar -Dversion=$version
mvn deploy:deploy-file -Dfile=$path/zweb.osgi.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$cgid -DartifactId=zweb \
	-Dsources=$spath/zweb-sources.jar -Dversion=$version	
mvn deploy:deploy-file -Dfile=$path/zweb-dsp.osgi.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$cgid -DartifactId=zweb-dsp \
	-Dsources=$spath/zweb-dsp-sources.jar -Dversion=$version
mvn deploy:deploy-file -Dfile=$tpath/breeze.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$tgid -Dversion=$version -DartifactId=breeze \
	-Dsources=$tpath/breeze-sources.jar
mvn deploy:deploy-file -Dfile=$tpath/iceblue_c.jar -DrepositoryId=$rid -Durl=$1 \
	-DgroupId=$tgid -Dversion=$version -DartifactId=iceblue_c \
	-Dsources=$tpath/iceblue_c-sources.jar
