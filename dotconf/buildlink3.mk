# $NetBSD: buildlink3.mk,v 1.1.1.1 2008/10/31 20:39:29 shattered Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
DOTCONF_BUILDLINK3_MK:=	${DOTCONF_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	dotconf
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ndotconf}
BUILDLINK_PACKAGES+=	dotconf
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}dotconf

.if ${DOTCONF_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.dotconf+=	dotconf>=1.0.13
BUILDLINK_PKGSRCDIR.dotconf?=	../../wip/dotconf
.endif	# DOTCONF_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
