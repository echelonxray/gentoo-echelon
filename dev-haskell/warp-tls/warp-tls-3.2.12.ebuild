# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.4.9999
#hackport: flags: +tls_1_1_3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HTTP over TLS support for Warp via the TLS package"
HOMEPAGE="https://github.com/yesodweb/wai"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cryptonite-0.12:=[profile?]
	>=dev-haskell/data-default-class-0.0.1:=[profile?]
	>=dev-haskell/network-2.2.1:=[profile?]
	dev-haskell/streaming-commons:=[profile?]
	>=dev-haskell/tls-1.5.3:=[profile?]
	>=dev-haskell/tls-session-manager-0.0.4:=[profile?]
	>=dev-haskell/wai-3.2:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/warp-3.3.6:=[profile?] <dev-haskell/warp-3.4:=[profile?]
	>=dev-lang/ghc-8.2.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=tls_1_1_3
}
