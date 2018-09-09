# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-cmake multilib git-r3

DESCRIPTION="Wireshark plugins to decode the Zscheile Peer Routing Daemon Protocol"
KEYWORDS="~arm ~amd64 ~x86"
LICENSE="GPL-2"

SRC_URI=""
EGIT_REPO_URI="https://github.com/zserik/wireshark-zprd-plugins.git"

RDEPEND=">net-analyzer/wireshark-2.5.0:="
DEPEND="$DEPEND
$RDEPEND"

get_PV() {
	local pv=$(best_version $1)
	pv=${pv#$1-} pv=${pv%-r*} pv=${pv//_}
	# NOTE: wireshark-2.6.2 installs it's plugins in plugins/2.6/epan/
	pv=${pv%.*}
	echo ${pv}
}

src_configure() {
	local mycmakeargs=(
		-DCMAKE_INSTALL_LIBDIR="/usr/$(get_libdir)/wireshark/plugins/$(get_PV net-analyzer/wireshark)/epan"
	)
	cmake-utils_src_configure
}
