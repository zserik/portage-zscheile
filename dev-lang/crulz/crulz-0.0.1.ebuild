# Copyright 2017-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.2.0

EAPI=7

CRATES="
adler32-1.0.4
ahash-0.2.17
ansi_term-0.11.0
ansi_term-0.12.1
anyhow-1.0.19
atty-0.2.13
autocfg-0.1.7
bincode-1.2.0
bitflags-1.2.1
boolinator-2.4.0
byteorder-1.3.2
c2-chacha-0.2.3
cfg-if-0.1.10
clap-2.33.0
codespan-0.5.0
codespan-reporting-0.5.0
const-random-0.1.6
const-random-macro-0.1.6
crc32fast-1.2.0
crulz-0.0.1
either-1.5.3
flate2-1.0.13
getrandom-0.1.13
hashbrown-0.6.3
itertools-0.8.1
lazy_static-1.4.0
libc-0.2.65
memmap-0.7.0
miniz_oxide-0.3.5
new_debug_unreachable-1.0.3
phf_generator-0.8.0
phf_shared-0.8.0
ppv-lite86-0.2.6
precomputed-hash-0.1.1
proc-macro-hack-0.5.11
proc-macro2-1.0.6
quote-1.0.2
rand-0.7.2
rand_chacha-0.2.1
rand_core-0.5.1
rand_hc-0.2.0
rand_pcg-0.2.1
readfilez-0.1.3
serde-1.0.102
serde_derive-1.0.102
siphasher-0.3.1
string_cache-0.8.0
string_cache_codegen-0.5.1
strsim-0.8.0
syn-1.0.8
termcolor-1.0.5
textwrap-0.11.0
unicode-segmentation-1.6.0
unicode-width-0.1.6
unicode-xid-0.2.0
vec_map-0.8.1
wasi-0.7.0
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.2
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-1.0.2
"

inherit cargo

DESCRIPTION="A rust implementation of the 'crulz' macro language interpreter"
HOMEPAGE="https://github.com/zserik/crulz-rs"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="|| ( MIT Apache-2.0 )"
SLOT="0"
KEYWORDS="amd64 ~arm x86"
IUSE=""

DEPEND=""
RDEPEND=""