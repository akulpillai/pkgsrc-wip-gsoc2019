# $NetBSD: buildlink3.mk,v 1.2 2014/09/29 15:25:54 makoto Exp $

BUILDLINK_TREE+=	gnuradio-digital

.if !defined(GNURADIO_DIGITAL_BUILDLINK3_MK)
GNURADIO_DIGITAL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnuradio-digital+=	gnuradio-digital>=3.7.5
BUILDLINK_ABI_DEPENDS.gnuradio-digital+=	gnuradio-digital>=3.7.5
BUILDLINK_PKGSRCDIR.gnuradio-digital?=	../../wip/gnuradio-digital
.endif # GNURADIO_DIGITAL_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnuradio-digital
