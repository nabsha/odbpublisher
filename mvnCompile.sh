rm -Rf target/build
mvn install
mvn assembly:assembly
mkdir -p target/build
cp -Rf config target/build/
cp -Rf lib target/build/
cp target/publisher-jar-with-dependencies.jar target/build
echo 'java -Djava.library.path="lib" -classpath "publisher-jar-with-dependencies.jar" com.odb.publisher.PublisherApp' > target/build/start.bat
