package:
	mvn package

install:
	mkdir -p /usr/share/airbnb
	cp target/dropwizard-scala-sample-*-SNAPSHOT.jar /usr/share/airbnb/
	cp sample.yml /usr/share/airbnb/
	cp bin/dropwizard-scala-sample /usr/share/airbnb/
	chmod 755 /usr/share/airbnb/dropwizard-scala-sample
