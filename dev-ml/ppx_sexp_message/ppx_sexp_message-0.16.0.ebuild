# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="A ppx rewriter for easy construction of s-expressions"
HOMEPAGE="https://github.com/janestreet/ppx_sexp_message"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/$(ver_cut 1-2)"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt"

DEPEND="
	>=dev-lang/ocaml-4.14
	dev-ml/ppx_here:${SLOT}
	dev-ml/ppx_sexp_conv:${SLOT}
	>=dev-ml/ppxlib-0.28.0:=
"
RDEPEND="${DEPEND}"
