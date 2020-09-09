set -e 

### Important: run rebuild_for_geppetto.sh in org.neuroml.export before this to generate a Geppetto specific version of the libraries!
### See https://github.com/NeuroML/org.neuroml.export/blob/experimental/rebuild_for_geppetto.sh

LEMS_VERSION=0.10.3
NML_VERSION=1.7.1
NML_ROOT_DIR=../..

mvn install:install-file  \
     -DgroupId=org.lemsml \
     -DartifactId=jlems \
     -Dversion=$LEMS_VERSION \
     -Dfile=$NML_ROOT_DIR/jLEMS/target/jlems-$LEMS_VERSION.jar \
     -Dpackaging=jar \
     -DgeneratePom=false \
     -DlocalRepositoryPath=.  \
     -DcreateChecksum=true \
     -DpomFile=$NML_ROOT_DIR/jLEMS/pom.xml

mvn install:install-file \
     -DgroupId=org.neuroml.model \
     -DartifactId=org.neuroml.model \
     -Dversion=$NML_VERSION \
     -Dfile=$NML_ROOT_DIR/org.neuroml.model/target/org.neuroml.model-$NML_VERSION.jar \
     -Dpackaging=jar \
     -DgeneratePom=false \
     -DlocalRepositoryPath=. \
     -DcreateChecksum=true \
     -DpomFile=$NML_ROOT_DIR/org.neuroml.model/pom.xml

mvn install:install-file \
     -DgroupId=org.neuroml1.model \
     -DartifactId=org.neuroml1.model \
     -Dversion=$NML_VERSION \
     -Dfile=$NML_ROOT_DIR/org.neuroml1.model/target/org.neuroml1.model-$NML_VERSION.jar \
     -Dpackaging=jar \
     -DgeneratePom=false \
     -DlocalRepositoryPath=. \
     -DcreateChecksum=true \
     -DpomFile=$NML_ROOT_DIR/org.neuroml1.model/pom.xml

mvn install:install-file \
     -DgroupId=org.neuroml.export \
     -DartifactId=org.neuroml.export \
     -Dversion=$NML_VERSION \
     -Dfile=$NML_ROOT_DIR/org.neuroml.export/target/org.neuroml.export-$NML_VERSION.jar \
     -Dpackaging=jar \
     -DgeneratePom=false \
     -DlocalRepositoryPath=. \
     -DcreateChecksum=true \
     -DpomFile=$NML_ROOT_DIR/org.neuroml.export/pom.xml

mvn install:install-file \
     -DgroupId=org.neuroml.model.injectingplugin \
     -DartifactId=org.neuroml.model.injectingplugin \
     -Dversion=$NML_VERSION \
     -Dfile=$NML_ROOT_DIR/org.neuroml.model.injectingplugin/target/org.neuroml.model.injectingplugin-$NML_VERSION.jar \
     -Dpackaging=jar \
     -DgeneratePom=false \
     -DlocalRepositoryPath=.  \
     -DcreateChecksum=true \
     -DpomFile=$NML_ROOT_DIR/org.neuroml.model.injectingplugin/pom.xml

mvn install:install-file \
     -DgroupId=org.neuroml.core \
     -DartifactId=neuroml2-base-definitions \
     -Dversion=$NML_VERSION \
     -Dfile=$NML_ROOT_DIR/NeuroML2/target/neuroml2-base-definitions-$NML_VERSION.jar \
     -Dpackaging=jar \
     -DgeneratePom=false \
     -DlocalRepositoryPath=.  \
     -DcreateChecksum=true \
     -DpomFile=$NML_ROOT_DIR/NeuroML2/pom.xml




