# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit zserik-virtual

DESCRIPTION="Erik Zscheile: meta environment package"

IUSE="flash gnome media"

RDEPEND="virtual/zenv-compiler[compiler_gcc]
	flash? ( virtual/zimpl-flash )
	media? ( >=virtual/zenv-media-0.5[gnome?] )"
