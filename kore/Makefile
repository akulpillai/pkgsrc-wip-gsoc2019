# $NetBSD$

DISTNAME=	kore-3.3.1
CATEGORIES=	www
MASTER_SITES=	https://kore.io/releases/

MAINTAINER=	fcambus@NetBSD.org
HOMEPAGE=	https://kore.io/
COMMENT=	Web application framework for writing scalable web APIs in C
LICENSE=	isc

USE_LANGUAGES=	c99
USE_TOOLS+=	gmake

MAKE_ENV+=	MAN_DIR="${PREFIX}/${PKGMANDIR}"
MAKE_FLAGS+=	TASKS=1

.include "options.mk"

.include "../../mk/bsd.pkg.mk"
