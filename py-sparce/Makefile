# $NetBSD: Makefile,v 1.7 2014/05/09 07:38:50 thomasklausner Exp $

DISTNAME=	pysparse-1.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/py//}
CATEGORIES=	math python
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pysparse/}

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://pysparse.sourceforge.net/
COMMENT=	Sparse linear algebra extension for Python
LICENSE=	modified-bsd

USE_LANGUAGES=	c c++ fortran77
PYDISTUTILSPKG=	yes
PYTHON_VERSIONS_INCOMPATIBLE=	36 37 # py-Numeric

#.include "../../graphics/vtk-python/buildlink3.mk"
.include "../../math/py-Numeric/buildlink3.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
