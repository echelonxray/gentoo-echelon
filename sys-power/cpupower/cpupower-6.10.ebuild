# Copyright 2013-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit systemd toolchain-funcs

DESCRIPTION="Shows and sets processor power related values"
HOMEPAGE="https://www.kernel.org/"
SRC_URI="https://dev.gentoo.org/~floppym/dist/${P}.tar.xz"

# Run from a kernel git repo to generate a tarball for version x.y:
# PV=x.y
# git archive --prefix=cpupower-${PV}/ v{PV} Makefile tools/scripts/Makefile.arch \
# tools/power/cpupower | xz > /tmp/cpupower-${PV}.tar.xz

LICENSE="GPL-2"
SLOT="0/0"
KEYWORDS="~amd64 ~arm ~arm64 ~loong ~ppc ~ppc64 ~riscv ~x86"
IUSE="nls"

# File collision w/ headers of the deprecated cpufrequtils
RDEPEND="sys-apps/pciutils"
DEPEND="${RDEPEND}
	virtual/os-headers
	nls? ( sys-devel/gettext )"

PATCHES=(
	"${FILESDIR}/cpupower-5.4-cflags.patch"
)

src_configure() {
	export bindir="${EPREFIX}/usr/bin"
	export sbindir="${EPREFIX}/usr/sbin"
	export mandir="${EPREFIX}/usr/share/man"
	export includedir="${EPREFIX}/usr/include"
	export libdir="${EPREFIX}/usr/$(get_libdir)"
	export localedir="${EPREFIX}/usr/share/locale"
	export docdir="${EPREFIX}/usr/share/doc/${PF}"
	export confdir="${EPREFIX}/etc"
	export bash_completion_dir="${EPREFIX}/usr/share/bash-completion/completions"
	export V=1
	export NLS=$(usex nls true false)
}

src_compile() {
	myemakeargs=(
		AR="$(tc-getAR)"
		CC="$(tc-getCC)"
		LD="$(tc-getCC)"
	)
	emake -C tools/power/cpupower "${myemakeargs[@]}"
}

src_install() {
	cd tools/power/cpupower || die
	emake "${myemakeargs[@]}" DESTDIR="${D}" install
	doheader lib/cpupower.h
	einstalldocs

	newconfd "${FILESDIR}"/conf.d-r2 cpupower
	newinitd "${FILESDIR}"/init.d-r4 cpupower

	systemd_dounit "${FILESDIR}"/cpupower-frequency-set.service
	systemd_install_serviced "${FILESDIR}"/cpupower-frequency-set.service.conf
}
