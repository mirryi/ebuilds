# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake

DESCRIPTION="LuaFormatter"
HOMEPAGE="https://github.com/Koihik/LuaFormatter"
EGIT_REPO_URI="${HOMEPAGE}"
EGIT_SUBMODULES=( '*' )
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

BDEPEND="
	dev-util/cmake
"
# Fails to install antlr:3.5
RDEPEND="
	>=dev-cpp/yaml-cpp-0.6.3
	=dev-java/antlr-4*
"
DEPEND="
	${BDEPEND}
	${RDEPEND}
"

src_unpack() {
	git-r3_src_unpack
}

src_prepare() {
	cmake-utils_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DBUILD_TESTS=$(usex test)
	)
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}
