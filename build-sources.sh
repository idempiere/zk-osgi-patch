#!/bin/sh -v
path=../../dist/lib/osgi

cd zcommon/src
jar -c -f $path/zcommon-sources.jar org

cd ../../zel/src
jar -c -f $path/zel-sources.jar org

cd ../../zhtml/src
jar -c -f $path/zhtml-sources.jar org

cd ../../zk/src
jar -c -f $path/zk-sources.jar org

cd ../../zkbind/src
jar -c -f $path/zkbind-sources.jar org

cd ../../zkplus/src
jar -c -f $path/zkplus-sources.jar org

cd ../../zkplus-legacy/src
jar -c -f $path/zkplus-legacy-sources.jar org

cd ../../zkwebfragment/src
jar -c -f $path/zkwebfragment-sources.jar archive

cd ../../zul/src
jar -c -f $path/zul-sources.jar org

cd ../../zweb/src
jar -c -f $path/zweb-sources.jar org

cd ../../zweb-dsp/src
jar -c -f $path/zweb-dsp-sources.jar org

#zjavassist-sources.jar:
#Open dist/lib/ext/javassist.jar
#Check Bundle-Version: at META-INF/MANIFEST.MF
#Download the corresponding javassist-${version}-sources.jar from https://mvnrepository.com/artifact/org.javassist/javassist
#Copy the downloaded javassist-${version}-sources.jar to dist/lib/osgi and rename to zjavassist-sources.jar

