# $NetBSD$

DISTNAME=	aiohttp_socks-0.2.2
PKGNAME=	${PYPKGPREFIX}-aiohttp-socks-0.2.2
CATEGORIES=	www python
MASTER_SITES=	${MASTER_SITE_PYPI:=a/aiohttp-socks/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/romis2012/aiohttp-socks
COMMENT=	SOCKS proxy connector for aiohttp
LICENSE=	apache-2.0

PYTHON_VERSIONS_ACCEPTED=       37 36 35

DEPENDS+=	${PYPKGPREFIX}-aiohttp>=2.3.2*:../../www/py-aiohttp

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
