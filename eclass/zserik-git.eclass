# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

if [[ ${___ECLASS_ONCE_ZSERIK_GIT} != "recur -_+^+_- spank" ]] ; then
___ECLASS_ONCE_ZSERIK_GIT="recur -_+^+_- spank"

inherit zserik-minimal git-r3

SRC_URI=""
HOMEPAGE="https://github.com/zserik/${PN}"
EGIT_REPO_URI="${HOMEPAGE}.git"
LICENSE="MIT"
KEYWORDS="-* ~arm ~amd64 ~x86"
fi