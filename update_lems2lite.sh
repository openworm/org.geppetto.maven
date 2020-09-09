set -e

mvn install:install-file -DgroupId=org.neuroml.neuroml2modelLite \
                         -DartifactId=neuroml2modelLite \
                         -Dversion=0.0.9 \
                         -Dfile=../../lems2/neuroml2modelLite/target/neuroml2modelLite-0.0.9.jar \
                         -Dpackaging=jar \
                         -DgeneratePom=false \
                         -DlocalRepositoryPath=. \
                         -DcreateChecksum=true \
                         -DpomFile=../../lems2/neuroml2modelLite/pom.xml



