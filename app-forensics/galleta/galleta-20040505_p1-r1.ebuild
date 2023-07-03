# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

MY_P="${PN}_${PV/_p/_}"

DESCRIPTION="IE Cookie Parser"
HOMEPAGE="https://sourceforge.net/projects/odessa/"
SRC_URI="mirror://sourceforge/odessa/${MY_P}.tar.gz"
S="${WORKDIR}/${MY_P}/src"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc x86"

PATCHES=(
	"${FILESDIR}"/${P}-fix-build-system.patch
	"${FILESDIR}"/${P}-Wimplicit-function-declaration.patch
)

src_configure() {
	tc-export CC
}

src_install() {
	dobin ${PN}
	dodoc ../{CHANGES,Readme.txt}
}
