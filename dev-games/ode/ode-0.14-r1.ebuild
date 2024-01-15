# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="Open Dynamics Engine SDK"
HOMEPAGE="http://ode.org/"
SRC_URI="https://bitbucket.org/odedevs/ode/downloads/${P}.tar.gz"

LICENSE="|| ( LGPL-2.1+ BSD )"
SLOT="0/6"
KEYWORDS="amd64 ~arm64 x86 ~amd64-linux ~x86-linux"
IUSE="debug doc double-precision examples gyroscopic static-libs"

RDEPEND="
	examples? (
		virtual/glu
		virtual/opengl
	)
"
DEPEND="${RDEPEND}"
BDEPEND="doc? ( app-text/doxygen )"

MY_EXAMPLES_DIR=/usr/share/doc/${PF}/examples

DOCS=( CHANGELOG.txt README.md )

PATCHES=(
	"${FILESDIR}"/${PN}-0.14-gcc7.patch
)

src_prepare() {
	default

	sed -i \
		-e "s:\$.*/drawstuff/textures:${MY_EXAMPLES_DIR}:" \
		drawstuff/src/Makefile.am \
		ode/demo/Makefile.am || die
	eautoreconf
}

src_configure() {
	# use bash (bug #335760)
	CONFIG_SHELL=/bin/bash \
	econf \
		--enable-shared \
		$(use_enable static-libs static) \
		$(use_enable debug asserts) \
		$(use_enable double-precision) \
		$(use_enable examples demos) \
		$(use_enable gyroscopic) \
		$(use_with examples drawstuff X11)
}

src_compile() {
	emake
	if use doc ; then
		cd ode/doc || die
		doxygen Doxyfile || die
	fi
}

src_install() {
	default

	find "${ED}" -name '*.la' -delete || die

	if use doc ; then
		docinto html
		dodoc docs/*
	fi

	if use examples ; then
		docompress -x ${MY_EXAMPLES_DIR}

		insinto ${MY_EXAMPLES_DIR}
		exeinto ${MY_EXAMPLES_DIR}

		doexe drawstuff/dstest/dstest
		doins ode/demo/*.{c,cpp,h} \
			drawstuff/textures/*.ppm \
			drawstuff/dstest/dstest.cpp \
			drawstuff/src/{drawstuff.cpp,internal.h,x11.cpp}

		cd ode/demo || die

		local f
		for f in *.c* ; do
			doexe .libs/${f%.*}
		done
	fi
}
