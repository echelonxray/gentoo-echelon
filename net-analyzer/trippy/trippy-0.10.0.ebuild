# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	ahash@0.8.7
	aho-corasick@1.1.2
	allocator-api2@0.2.16
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.11
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.6
	anyhow@1.0.81
	arrayvec@0.7.4
	async-trait@0.1.77
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.21.7
	bitflags@1.3.2
	bitflags@2.5.0
	bumpalo@3.14.0
	bytes@1.5.0
	c2rust-bitfields-derive@0.18.0
	c2rust-bitfields@0.18.0
	caps@0.5.5
	cassowary@0.3.0
	castaway@0.2.2
	cc@1.0.83
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	chrono@0.4.37
	clap@4.4.18
	clap_builder@4.4.18
	clap_complete@4.4.10
	clap_derive@4.4.7
	clap_lex@0.6.0
	colorchoice@1.0.0
	comfy-table@7.1.0
	compact_str@0.7.1
	core-foundation-sys@0.8.6
	crossbeam-channel@0.5.11
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.19
	crossbeam@0.8.4
	crossterm@0.27.0
	crossterm_winapi@0.9.1
	csv-core@0.1.11
	csv@1.3.0
	darling@0.20.5
	darling_core@0.20.5
	darling_macro@0.20.5
	data-encoding@2.5.0
	deranged@0.3.11
	derive_more@0.99.17
	diff@0.1.13
	dns-lookup@2.0.4
	downcast@0.11.0
	either@1.10.0
	encoding_rs@0.8.33
	encoding_rs_io@0.1.7
	enum-as-inner@0.6.0
	equivalent@1.0.1
	errno@0.3.8
	etcetera@0.8.0
	fixedbitset@0.4.2
	fnv@1.0.7
	form_urlencoded@1.2.1
	fragile@2.0.0
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-io@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	getrandom@0.2.12
	gimli@0.28.1
	hashbrown@0.12.3
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.3.5
	hex-literal@0.4.1
	hex@0.4.3
	hickory-proto@0.24.0
	hickory-resolver@0.24.0
	home@0.5.9
	hostname@0.3.1
	humantime@2.1.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	ident_case@1.0.1
	idna@0.4.0
	idna@0.5.0
	indexmap@1.9.3
	indexmap@2.2.6
	indoc@2.0.4
	ipconfig@0.3.2
	ipnet@2.9.0
	ipnetwork@0.20.0
	itertools@0.12.1
	itoa@1.0.10
	js-sys@0.3.68
	lazy_static@1.4.0
	libc@0.2.153
	libloading@0.8.1
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.13
	lock_api@0.4.11
	log@0.4.20
	lru-cache@0.1.2
	lru@0.12.2
	match_cfg@0.1.0
	matchers@0.1.0
	maxminddb@0.24.0
	memchr@2.7.1
	memoffset@0.9.0
	miniz_oxide@0.7.2
	mio@0.8.11
	mockall@0.12.1
	mockall_derive@0.12.1
	nix@0.28.0
	nu-ansi-term@0.46.0
	num-conv@0.1.0
	num-traits@0.2.18
	num_cpus@1.16.0
	object@0.32.2
	once_cell@1.19.0
	overload@0.1.1
	parking_lot@0.12.1
	parking_lot_core@0.9.9
	paste@1.0.14
	percent-encoding@2.3.1
	petgraph@0.6.4
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	predicates-core@1.0.6
	predicates-tree@1.0.9
	predicates@3.1.0
	pretty_assertions@1.4.0
	proc-macro2@1.0.78
	quick-error@1.2.3
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	ratatui@0.26.1
	redox_syscall@0.4.1
	regex-automata@0.1.10
	regex-automata@0.4.5
	regex-syntax@0.6.29
	regex-syntax@0.8.2
	regex@1.10.3
	resolv-conf@0.7.0
	rustc-demangle@0.1.23
	rustix@0.38.31
	rustversion@1.0.14
	ryu@1.0.16
	scopeguard@1.2.0
	serde@1.0.197
	serde_derive@1.0.197
	serde_json@1.0.115
	serde_spanned@0.6.5
	serde_with@3.7.0
	serde_with_macros@3.7.0
	serde_yaml@0.9.33
	sharded-slab@0.1.7
	signal-hook-mio@0.2.3
	signal-hook-registry@1.4.1
	signal-hook@0.3.17
	slab@0.4.9
	smallvec@1.13.1
	socket2@0.5.6
	stability@0.1.1
	static_assertions@1.1.0
	strsim@0.10.0
	strum@0.25.0
	strum@0.26.2
	strum_macros@0.25.3
	strum_macros@0.26.1
	syn@1.0.109
	syn@2.0.48
	terminal_size@0.3.0
	termtree@0.4.1
	test-case-core@3.3.1
	test-case-macros@3.3.1
	test-case@3.3.1
	thiserror-impl@1.0.58
	thiserror@1.0.58
	thread_local@1.1.7
	time-core@0.1.2
	time-macros@0.2.17
	time@0.3.34
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-macros@2.2.0
	tokio-util@0.7.10
	tokio@1.37.0
	toml@0.8.12
	toml_datetime@0.6.5
	toml_edit@0.22.8
	tracing-attributes@0.1.27
	tracing-chrome@0.7.2
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-serde@0.1.3
	tracing-subscriber@0.3.18
	tracing@0.1.40
	tun2@1.2.7
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-segmentation@1.11.0
	unicode-width@0.1.11
	unsafe-libyaml@0.2.11
	url@2.5.0
	utf8parse@0.2.1
	valuable@0.1.0
	version_check@0.9.4
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.91
	wasm-bindgen-macro-support@0.2.91
	wasm-bindgen-macro@0.2.91
	wasm-bindgen-shared@0.2.91
	wasm-bindgen@0.2.91
	widestring@1.0.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winnow@0.6.5
	winreg@0.50.0
	wintun@0.4.0
	yansi@0.5.1
	zerocopy-derive@0.7.32
	zerocopy@0.7.32
"

inherit cargo fcaps

DESCRIPTION="A network diagnostic tool"
HOMEPAGE="https://trippy.cli.rs/ https://github.com/fujiapple852/trippy"
SRC_URI="
	https://github.com/fujiapple852/trippy/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+="
	ISC MIT Unicode-DFS-2016 WTFPL-2
"
SLOT="0"
KEYWORDS="amd64"
IUSE="suid"

FILECAPS=( cap_net_raw+p usr/bin/trip )

QA_FLAGS_IGNORED="usr/bin/trip"

src_install() {
	cargo_src_install

	dodoc README.md CHANGELOG.md

	if use suid; then
		fperms u+s usr/bin/trip
	fi
}
