# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="An eselect module to manage /etc/fonts/conf.d symlinks"
HOMEPAGE="https://gitweb.gentoo.org/proj/eselect-fontconfig.git"
SRC_URI="https://dev.gentoo.org/~sam/distfiles/${CATEGORY}/${PN}/fontconfig.eselect-${PV}.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~loong ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux ~arm64-macos ~ppc-macos ~x64-macos ~x64-solaris"

RDEPEND=">=app-admin/eselect-1.2.3"

S=${WORKDIR}

src_install() {
	insinto /usr/share/eselect/modules
	newins fontconfig.eselect-${PV} fontconfig.eselect
}
