# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Partially auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	anyhow@1.0.75
	atty@0.2.14
	autocfg@1.1.0
	bitflags@1.3.2
	clap@3.2.25
	clap_derive@3.2.25
	clap_lex@0.2.4
	hashbrown@0.12.3
	heck@0.4.1
	hermit-abi@0.1.19
	indexmap@1.9.3
	itoa@1.0.9
	libc@0.2.150
	once_cell@1.18.0
	os_str_bytes@6.6.1
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro2@1.0.70
	quote@1.0.33
	ryu@1.0.15
	serde@1.0.193
	serde_derive@1.0.193
	serde_json@1.0.108
	strsim@0.10.0
	syn@1.0.109
	syn@2.0.39
	termcolor@1.4.0
	textwrap@0.16.0
	unicode-ident@1.0.12
	version_check@0.9.4
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
"

inherit cargo cmake

DESCRIPTION="Performance monitoring daemon for heterogeneous CPU-GPU systems"
HOMEPAGE="https://github.com/facebookincubator/dynolog"
SRC_URI="https://dev.gentoo.org/~tupone/distfiles/${P}.tar.gz
	${CARGO_CRATE_URIS}"

LICENSE="BSD Apache-2.0 Boost-1.0 MIT Unicode-DFS-2016 Unlicense"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

DEPEND="dev-cpp/gflags
	dev-cpp/gtest
	dev-cpp/glog
	net-misc/curl"
RDEPEND="${DEPEND}"
BDEPEND=""

# Partially rust build
QA_FLAGS_IGNORED=/usr/bin/dyno

PATCHES=(
	"${FILESDIR}"/${P}-gcc13.patch
	"${FILESDIR}"/${P}-unbundling.patch
	"${FILESDIR}"/${P}-noWerror.patch
)

src_prepare() {
	cmake_src_prepare
	cmake_comment_add_subdirectory third_party/gflags
	cmake_comment_add_subdirectory third_party/glog
}

src_configure() {
	local mycmakeargs=(
		-DBUILD_SHARED_LIBS=OFF
		-DCPR_FORCE_USE_SYSTEM_CURL=ON
		-DBUILD_TESTS=$(usex test)
	)
	cmake_src_configure
	cd cli
	cargo_src_configure
}

src_compile() {
	cmake_src_compile
	cd cli
	cargo_src_compile
}

src_install() {
	cmake_src_install
	mkdir -p headers/dynolog/src/ipcfabric
	cp dynolog/src/ipcfabric/FabricManager.h \
		headers/dynolog/src/ipcfabric || die
	doheader -r dynolog
	cd ../cli
	cd cli
	cargo_src_install

	dobin "${BUILD_DIR}"/${PN}/src/${PN}
}
