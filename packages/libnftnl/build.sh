TERMUX_PKG_HOMEPAGE=https://www.netfilter.org/projects/libnftnl/
TERMUX_PKG_DESCRIPTION="Netfilter library providing interface to the nf_tables subsystem"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com>"
TERMUX_PKG_VERSION=1.1.4
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=http://netfilter.org/projects/libnftnl/files/libnftnl-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=c8c7988347adf261efac5bba59f8e5f995ffb65f247a88cc144e69620573ed20
TERMUX_PKG_DEPENDS="libmnl"
TERMUX_PKG_BREAKS="libnftnl-dev"
TERMUX_PKG_REPLACES="libnftnl-dev"
