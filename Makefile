package:
	mvn package

install:
	mkdir -p $(DESTDIR)/usr/share/airbnb
	cp target/dropwizard-scala-sample-*-SNAPSHOT.jar $(DESTDIR)/usr/share/airbnb/
	cp sample.yml $(DESTDIR)/usr/share/airbnb/
	mkdir -p $(DESTDIR)/usr/bin
	cp bin/*dropwizard-scala-sample $(DESTDIR)/usr/bin/
	chmod 755 $(DESTDIR)/usr/bin/*
	mkdir -p $(DESTDIR)/etc/init
	cp upstart/*.conf $(DESTDIR)/etc/init/
	mkdir -p $(DESTDIR)/etc/cron.d
	cp cron/check-dropwizard-scala-sample $(DESTDIR)/etc/cron.d/
