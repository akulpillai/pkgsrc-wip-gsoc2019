# $NetBSD: buildlink3.mk,v 1.1.1.1 2011/12/02 06:08:39 phonohawk Exp $

BUILDLINK_TREE+=	hs-attempt

.if !defined(HS_ATTEMPT_BUILDLINK3_MK)
HS_ATTEMPT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-attempt+=	hs-attempt>=0.3.1
BUILDLINK_PKGSRCDIR.hs-attempt?=	../../wip/hs-attempt

.include "../../wip/hs-failure/buildlink3.mk"
.endif	# HS_ATTEMPT_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-attempt
