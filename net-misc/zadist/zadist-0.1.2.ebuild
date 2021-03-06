# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit zs-minimal
DESCRIPTION="ZADist - Zscheile Automatic Distributor Client"
KEYWORDS="arm amd64 x86"
RDEPEND="$RDEPEND
sys-apps/sed
net-misc/rsync
virtual/cron"

src_install() {
	dobin zadist
	insinto /etc/cron.d
	newins zadist.cron zadist
}

pkg_postinst() {
	einfo "To setup, run 'zadist setup DISTHOST'."
	einfo "On the host DISTHOST: "
	einfo " 1. emerge rsync"
	einfo " 2. create the rsyncd export 'zadist'."
	einfo " 3. start rsyncd (and rc-update add rsyncd)"
	if [ -f "${EROOT%/}/config/zadist" ]; then
		ebegin "zadist migrate"
		zadist migrate
		eend $?
	fi
}
