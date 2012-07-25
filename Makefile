package:
	mvn package

install:
	mkdir -p $(DESTDIR)/usr/share/airbnb
	cp target/dropwizard-scala-sample-*-SNAPSHOT.jar $(DESTDIR)/usr/share/airbnb/
	cp sample.yml $(DESTDIR)/usr/share/airbnb/
	mkdir -p $(DESTDIR)/usr/bin
	cp bin/dropwizard-scala-sample $(DESTDIR)/usr/bin/
	chmod 755 $(DESTDIR)/usr/bin/dropwizard-scala-sample
