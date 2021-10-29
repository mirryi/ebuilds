# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=7

inherit go-module

DESCRIPTION="general purpose language server"
HOMEPAGE="https://github.com/mattn/efm-langserver"

inherit git-r3
# EGIT_COMMIT="26be4445542b8aa1aa0233a856ade7161644035c" # v0.0.26
EGIT_REPO_URI="https://github.com/mattn/efm-langserver.git"

RESTRICT="network-sandbox strip"
LICENSE="MIT"
SLOT="0"
IUSE=""
KEYWORDS="~amd64"

src_unpack() {
	default
	git-r3_src_unpack
	go-module_live_vendor
}

src_compile() {
	go build -o ${PN} || die
}

src_install() {
	dobin ${PN}
}
