#!/bin/sh

/usr/bin/knime -nosplash -application org.eclipse.equinox.p2.director \
-profile KNIMEProfile -destination {{ knime_root }} \
-uninstallIU $1 && rm -f {{ knime_root }}/$1.installed
