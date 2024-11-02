# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0
#hackport: flags: +unix

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Modern and extensible testing framework"
HOMEPAGE="https://github.com/UnkindPartition/tasty"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE="+clock"

RDEPEND="
	>=dev-haskell/ansi-terminal-0.9:=[profile?]
	>=dev-haskell/optparse-applicative-0.14:=[profile?]
	>=dev-haskell/stm-2.3:=[profile?]
	>=dev-haskell/tagged-0.5:=[profile?]
	>=dev-haskell/unbounded-delays-0.1:=[profile?]
	dev-haskell/wcwidth:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	clock? (
		>=dev-haskell/clock-0.4.4.0:=[profile?]
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag clock clock) \
		--flag=unix
}
