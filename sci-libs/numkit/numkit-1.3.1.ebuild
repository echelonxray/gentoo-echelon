# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )
inherit distutils-r1

DESCRIPTION="Numerical first aid kit (with numpy/scipy)"
HOMEPAGE="https://numkit.readthedocs.io"
SRC_URI="https://github.com/Becksteinlab/${PN}/archive/release-${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-release-${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

BDEPEND="
	dev-python/six[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.9[${PYTHON_USEDEP}]
	>=dev-python/scipy-1.0[${PYTHON_USEDEP}]
"
RDEPEND="${BDEPEND}"

distutils_enable_tests pytest
