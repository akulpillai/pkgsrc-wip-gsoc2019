$NetBSD: patch-doc_doc.mk,v 1.1 2015/05/28 11:00:49 n-t-roff Exp $

Propagate make error

--- doc/doc.mk.orig	2015-05-18 16:15:00.000000000 +0200
+++ doc/doc.mk	2015-05-18 16:15:16.000000000 +0200
@@ -50,7 +50,7 @@
 	if [ -d $@ -a -f $@/$@.mk ]; then \
 	    cd $@; \
 	    echo "---- Making $(ACTION) in directory $(CURRENTDIR)/$@ ----"; \
-	    $(MAKE) -e -f $@.mk MAKE=$(MAKE) $(ACTION); \
+	    $(MAKE) -e -f $@.mk MAKE=$(MAKE) $(ACTION) && \
 	    echo; \
 	fi
 
