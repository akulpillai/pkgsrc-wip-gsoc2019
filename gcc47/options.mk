# $NetBSD: options.mk,v 1.5 2012/11/23 22:33:36 othyro Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.gcc47
PKG_SUPPORTED_OPTIONS=	nls gcc-quadmath
PKG_SUGGESTED_OPTIONS=	gcc-quadmath
.if ${OPSYS} == "NetBSD"
PKG_SUGGESTED_OPTIONS+=	nls
.endif

.include "../../mk/bsd.options.mk"

###
### Native Language Support
###
.if !empty(PKG_OPTIONS:Mnls)
CONFIGURE_ARGS+=	--enable-nls
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-nls
.endif

###
### quadmath
###
.if empty(PKG_OPTIONS:Mgcc-quadmath)
CONFIGURE_ARGS+=	--disable-libquadmath --disable-libquadmath-support
.endif
