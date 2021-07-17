# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Wrapper for Bitwarden and Rofi"
HOMEPAGE="https://github.com/mattydebie/bitwarden-rofi"
SRC_URI="https://github.com/mattydebie/bitwarden-rofi/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="app-admin/bitwarden-cli app-misc/jq x11-misc/rofi"

src_install() {
	dobin bwmenu
}
