$NetBSD$

--- components/autofill/content/renderer/password_form_conversion_utils.cc.orig	2017-02-02 02:02:52.000000000 +0000
+++ components/autofill/content/renderer/password_form_conversion_utils.cc
@@ -28,7 +28,11 @@
 #include "third_party/WebKit/public/web/WebFormControlElement.h"
 #include "third_party/WebKit/public/web/WebFrame.h"
 #include "third_party/WebKit/public/web/WebInputElement.h"
+#if defined(OS_BSD)
+#include <re2/re2.h>
+#else
 #include "third_party/re2/src/re2/re2.h"
+#endif
 
 using blink::WebDocument;
 using blink::WebFormControlElement;
