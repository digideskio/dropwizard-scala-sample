package:
	mvn package

install:
	mkdir -p /usr/share/airbnb
	cp target/dropwizard-scala-sample-*-SNAPSHOT.jar /usr/share/airbnb/
	cp sample.yml /usr/share/airbnb/
	mkdir -p /usr/bin
	cp bin/dropwizard-scala-sample /usr/bin/
	chmod 755 /usr/bin/dropwizard-scala-sample
