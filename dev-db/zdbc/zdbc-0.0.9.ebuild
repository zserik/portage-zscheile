# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit zserik-minimal

DESCRIPTION="ZDBC - Zscheile DataBase Utils"

KEYWORDS="arm amd64 x86"

RDEPEND="app-shells/bash
sys-apps/coreutils
sys-apps/grep"

DOCS="README"

src_install() {
    default

    for file in zdbc; do
        echo "install $file"
        dobin "$file"
    done

    insinto /usr/share/zdbc
    for file in lib.sh zdbc.help; do
        echo "install $file"
        doins "$file"
    done

    exeinto /usr/libexec/zdbc
    for file in dump entry search; do
        echo "install $file"
        doexe "$file"
    done
}

pkg_preinst() {
    if has_version "<dev-db/zdbc-0.0.9"; then
        ewarn "zdbc commandline interface changed"
    fi
}
