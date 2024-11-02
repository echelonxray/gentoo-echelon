# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{9..12} )
DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 xdg

DESCRIPTION="Modernize the DisplayCAL code including Python 3 support"
HOMEPAGE="https://github.com/eoyilmaz/displaycal-py3"

MY_PN="DisplayCAL"
MY_P="${MY_PN}-${PV}"
MY_COMMIT="eda424388be5dc18f76b02f8d015d6b2ddafa174"
SRC_URI="https://github.com/eoyilmaz/displaycal-py3/archive/${MY_COMMIT}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="GPL-3"

SLOT="0"
KEYWORDS="~amd64"

RESTRICT="test"

PATCHES="${FILESDIR}/${P}-Fix-build.patch"

DEPEND="
	dev-python/build[${PYTHON_USEDEP}]
	dev-python/dbus-python[${PYTHON_USEDEP}]
	dev-python/distro[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	dev-python/pychromecast[${PYTHON_USEDEP}]
	dev-python/send2trash[${PYTHON_USEDEP}]
	dev-python/zeroconf[${PYTHON_USEDEP}]
	>=dev-python/wxpython-4.2.0[${PYTHON_USEDEP}]
	dev-python/installer[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]
	media-gfx/argyllcms
	x11-libs/libXxf86vm"

RDEPEND="${DEPEND}"

src_unpack() {
	default
	# Upstream build system is very sensitive to the build folder name
	mv "${WORKDIR}/${PN}-${MY_COMMIT}" "${S}" || die
}

src_prepare() {
	sed -e 's/license_file/license_files/g' -i setup.cfg || die

	# remove dependency only imported if `sys.platform in ("darwin", "win32")`
	sed -e '/certifi/d' -i setup.cfg || die

	# Remove x-world MIME
	sed -i 's|x-world/x-vrml;||g' \
		misc/displaycal-vrml-to-x3d-converter.desktop || die

	distutils-r1_src_prepare
}

src_install() {
	distutils-r1_src_install

	# Use Gentoo package name for doc folder
	mv "${ED}/usr/share/doc/${MY_P}" "${ED}/usr/share/doc/${PF}" || die
}

pkg_postinst() {
	xdg_pkg_postinst
}

pkg_postrm() {
	xdg_pkg_postrm
}
