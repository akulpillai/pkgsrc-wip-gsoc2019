# $NetBSD: buildlink3.mk,v 1.1 2005/10/10 17:46:00 mchittur Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBOPENMODELLER_BUILDLINK3_MK:=	${LIBOPENMODELLER_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libopenmodeller
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibopenmodeller}
BUILDLINK_PACKAGES+=	libopenmodeller

.if !empty(LIBOPENMODELLER_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libopenmodeller+=	libopenmodeller>=0.3.3
BUILDLINK_PKGSRCDIR.libopenmodeller?=	../../wip/openmodeller
.endif	# LIBOPENMODELLER_BUILDLINK3_MK


BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
