dest=../dist/lib/osgi

jar --create --file $dest/zcommon-sources.jar -C ../zcommon/src org
jar --create --file $dest/zel-sources.jar -C ../zel/src org
jar --create --file $dest/zhtml-sources.jar -C ../zhtml/src org
jar --create --file $dest/zk-sources.jar -C ../zk/src org
jar --create --file $dest/zkbind-sources.jar -C ../zkbind/src org
jar --create --file $dest/zkplus-sources.jar -C ../zkplus/src org
jar --create --file $dest/zkplus-legacy-sources.jar -C ../zkplus-legacy/src org
jar --create --file $dest/zkwebfragment-sources.jar -C ../zkwebfragment/src archive
jar --create --file $dest/zul-sources.jar -C ../zul/src org
jar --create --file $dest/zweb-sources.jar -C ../zweb/src org
jar --create --file $dest/zweb-dsp-sources.jar -C ../zweb-dsp/src org
