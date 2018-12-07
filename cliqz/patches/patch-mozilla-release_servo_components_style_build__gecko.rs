$NetBSD$

--- mozilla-release/servo/components/style/build_gecko.rs.orig	2018-11-16 08:40:07.000000000 +0000
+++ mozilla-release/servo/components/style/build_gecko.rs
@@ -557,6 +557,8 @@ mod bindings {
                 .borrowed_type(ty)
                 .zero_size_type(ty, &structs_types);
         }
+	builder = builder
+	   .raw_line(format!("pub use gecko_bindings::structs::root::*;"));
         write_binding_file(builder, BINDINGS_FILE, &fixups);
     }
 
