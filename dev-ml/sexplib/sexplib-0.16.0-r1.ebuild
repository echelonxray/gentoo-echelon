# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit dune

DESCRIPTION="Library for automated conversion of OCaml-values to and from S-expressions"
HOMEPAGE="https://github.com/janestreet/sexplib"
SRC_URI="https://github.com/janestreet/sexplib/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/$(ver_cut 1-2)"
KEYWORDS="amd64 arm arm64 ~ppc ppc64 ~riscv x86"
IUSE="+ocamlopt"

RDEPEND="
	=dev-ml/sexplib0-0.16*:=[ocamlopt?]
	dev-ml/base:${SLOT}[ocamlopt?]
	dev-ml/num:=[ocamlopt?]
	dev-ml/parsexp:${SLOT}[ocamlopt?]
"
DEPEND="${RDEPEND}"
