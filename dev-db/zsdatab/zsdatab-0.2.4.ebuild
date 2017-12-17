# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-cmake

DESCRIPTION="Zscheile data text table Management"
LICENSE="MIT"
SLOT="0/0.2.8"
KEYWORDS="arm amd64 x86"

DEPEND="$DEPEND
>=sys-devel/gcc-6.3.0:=[cxx]
sys-libs/zlib"

RDEPEND="$RDEPEND
app-shells/bash
sys-libs/zlib
virtual/zcmake-libfindmacros"