# $NetBSD: Makefile,v 1.26 2013/12/05 10:56:58 noud4 Exp $
#

DISTNAME=		monkey-bubble-0.4.0
PKGREVISION=		4
CATEGORIES=		games
MASTER_SITES=		http://home.gna.org/monkeybubble/downloads/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://home.gna.org/monkeybubble/
COMMENT=		Bust'A'Move clone written for GNOME2

USE_LANGUAGES+=		c
USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake intltool pkg-config
#CFLAGS+=		-Wno-error=deprecated-declarations
CFLAGS+=		-Wno-deprecated-declarations

.include "../../audio/esound/buildlink3.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../mk/bsd.pkg.mk"
