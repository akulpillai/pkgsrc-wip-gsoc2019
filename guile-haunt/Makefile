# $NetBSD$

DISTNAME=	haunt-0.2.4
PKGNAME=	guile-${DISTNAME}
CATEGORIES=	www
MASTER_SITES=	https://files.dthompson.us/haunt/

MAINTAINER=	ng0@n0.is
HOMEPAGE=	https://files.dthompson.us/haunt/
COMMENT=	Functional static web site generator
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=		yes
GNU_CONFIGURE_PREFIX=	${PREFIX}/guile/2.2
CONFIGURE_ARGS+=	--libdir=${PREFIX}/guile/2.2/lib
USE_TOOLS+=		automake autoconf autoreconf pkg-config

DEPENDS+=	guile-commonmark-[0-9]*:../../wip/guile-commonmark
INFO_FILES=	YES

# There is no check for guile scripts, the @GUILE@ ends up
# in the package with the WRKSRC/BL3 location of guile.
SUBST_CLASSES+=		guile
SUBST_STAGE.guile=	pre-configure
SUBST_FILES.guile=	scripts/haunt.in
SUBST_SED.guile+=	-e 's,@GUILE@,${PREFIX}/guile/2.2/bin/guile,g'

pre-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} autoreconf -I${PREFIX}/guile/2.2/share/aclocal -vif

.include "../../lang/guile22/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
