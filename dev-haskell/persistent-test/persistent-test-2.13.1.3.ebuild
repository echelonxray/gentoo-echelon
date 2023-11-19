# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Tests for Persistent"
HOMEPAGE="https://www.yesodweb.com/book/persistent"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/blaze-html-0.9:=[profile?]
	>=dev-haskell/conduit-1.2.12:=[profile?]
	>=dev-haskell/hspec-2.4:=[profile?]
	dev-haskell/hspec-expectations:=[profile?]
	dev-haskell/http-api-data:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/monad-control:=[profile?]
	>=dev-haskell/monad-logger-0.3.25:=[profile?]
	>=dev-haskell/path-pieces-0.2:=[profile?]
	>=dev-haskell/persistent-2.14:=[profile?] <dev-haskell/persistent-2.15:=[profile?]
	>=dev-haskell/quickcheck-2.9:=[profile?]
	>=dev-haskell/quickcheck-instances-0.3:=[profile?]
	>=dev-haskell/random-1.1:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0
"
