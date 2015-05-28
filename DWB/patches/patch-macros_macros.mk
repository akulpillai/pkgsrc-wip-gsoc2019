$NetBSD: patch-macros_macros.mk,v 1.1 2015/05/28 11:00:49 n-t-roff Exp $

Propagate make error

--- macros/macros.mk.orig	2015-05-18 16:18:16.000000000 +0200
+++ macros/macros.mk	2015-05-18 16:18:30.000000000 +0200
@@ -73,7 +73,7 @@
 	if [ -d $@ -a -f $@/$@.mk ]; then \
 	    cd $@; \
 	    echo "---- Making $(ACTION) in directory $(CURRENTDIR)/$@ ----"; \
-	    $(MAKE) -e -f $@.mk MAKE=$(MAKE) $(ACTION); \
+	    $(MAKE) -e -f $@.mk MAKE=$(MAKE) $(ACTION) && \
 	    echo; \
 	fi
 
