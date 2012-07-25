#
# Regular cron jobs for the dropwizard-scala-sample package
#
0 4	* * *	root	[ -x /usr/bin/dropwizard-scala-sample_maintenance ] && /usr/bin/dropwizard-scala-sample_maintenance
