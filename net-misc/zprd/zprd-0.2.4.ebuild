# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake zs-abi32

DESCRIPTION="ZPRD - Zscheile Peer Routing Daemon"
KEYWORDS="arm amd64 x86"
LICENSE="GPL-3"

IUSE="tbb multilib"
HOMEPAGE="https://github.com/zserik/zprd.git"

CMDEPEND="tbb? (
		dev-cpp/tbb
		multilib? (
			dev-cpp/tbb$(zs_abi32_use_wrapped)
		)
	)"

DEPEND="${DEPEND}
	${CMDEPEND}"

RDEPEND="sys-apps/grep
	sys-apps/iproute2
	virtual/daemontools
	${CMDEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_use tbb TBB)
		-DUSE_ABI_32=$((zs_abi32_ready && use multilib) \
		  && echo ON || echo OFF)
	)

	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install

	echo 'install documentation'
	dodoc README.md docs/files/CONF docs/files/zprd.conf

	echo 'install service files'
	dodir /etc/zprd
	cp -R -t "${D}/etc" "${S}/docs/service/zprd/" || die 'install service files failed'
}