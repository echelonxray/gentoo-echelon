# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=6

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test" # Test deps need porting

DESCRIPTION="Reading, writing and manipulating \".tar\" archive files"
HOMEPAGE="https://hackage.haskell.org/package/tar"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"

RDEPEND="
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"
#	test? (
#		dev-haskell/bytestring-handle
#		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
#		>=dev-haskell/tasty-0.10 <dev-haskell/tasty-1.5
#		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.11
#	)
