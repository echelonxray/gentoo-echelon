# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aho-corasick@1.1.2
	askama@0.12.1
	askama_derive@0.12.2
	askama_escape@0.10.3
	askama_parser@0.1.1
	asn1-rs@0.5.2
	asn1-rs-derive@0.4.0
	asn1-rs-impl@0.1.0
	async-trait@0.1.74
	atty@0.2.14
	autocfg@1.1.0
	backtrace@0.3.69
	base16@0.2.1
	base64@0.13.1
	base64@0.21.5
	basic-toml@0.1.7
	bincode@1.3.3
	bitflags@1.3.2
	bitflags@2.4.1
	bitmaps@2.1.0
	block-buffer@0.9.0
	bstr@1.8.0
	bumpalo@3.14.0
	bytes@1.5.0
	camino@1.1.6
	capnp@0.14.11
	capnpc@0.14.9
	cc@1.0.83
	cfg-if@1.0.0
	clap@3.2.25
	clap_derive@3.2.25
	clap_lex@0.2.4
	codespan-reporting@0.11.1
	combine@4.6.6
	console@0.15.7
	console_error_panic_hook@0.1.7
	core-foundation@0.9.4
	core-foundation-sys@0.8.6
	cpufeatures@0.2.11
	crc32fast@1.3.2
	crossbeam-channel@0.5.9
	crossbeam-deque@0.8.4
	crossbeam-epoch@0.9.16
	crossbeam-utils@0.8.17
	ctrlc@3.4.1
	data-encoding@2.5.0
	debug-ignore@1.0.5
	der-parser@8.2.0
	deranged@0.3.10
	diff@0.1.13
	digest@0.9.0
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	displaydoc@0.2.4
	ecow@0.2.0
	either@1.9.0
	encode_unicode@0.3.6
	encoding_rs@0.8.33
	equivalent@1.0.1
	errno@0.3.8
	fastrand@2.0.1
	filetime@0.2.23
	fixedbitset@0.4.2
	flate2@1.0.28
	fnv@1.0.7
	form_urlencoded@1.2.1
	fs_extra@1.3.0
	fslock@0.2.1
	futures@0.3.29
	futures-channel@0.3.29
	futures-core@0.3.29
	futures-executor@0.3.29
	futures-io@0.3.29
	futures-macro@0.3.29
	futures-sink@0.3.29
	futures-task@0.3.29
	futures-util@0.3.29
	generic-array@0.14.7
	getrandom@0.2.11
	gimli@0.28.1
	globset@0.4.14
	h2@0.3.22
	hashbrown@0.12.3
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.1.19
	hermit-abi@0.3.3
	hexpm@2.1.1
	hostname@0.3.1
	http@0.2.11
	http-auth-basic@0.3.3
	http-body@0.4.6
	httparse@1.8.0
	httpdate@1.0.3
	humansize@2.1.3
	hyper@0.14.27
	hyper-rustls@0.24.2
	id-arena@2.2.1
	idna@0.5.0
	ignore@0.4.21
	im@15.1.0
	indexmap@1.9.3
	indexmap@2.1.0
	insta@1.34.0
	ipnet@2.9.0
	itertools@0.10.5
	itoa@1.0.10
	js-sys@0.3.66
	kstring@1.0.6
	lazy_static@1.4.0
	libc@0.2.151
	libm@0.2.8
	libredox@0.0.1
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.12
	log@0.4.20
	lsp-server@0.7.5
	lsp-types@0.94.1
	match_cfg@0.1.0
	matchers@0.1.0
	memchr@2.6.4
	memoffset@0.9.0
	mime@0.3.17
	mime_guess@2.0.4
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	mio@0.8.10
	nix@0.27.1
	nom@7.1.3
	normpath@1.1.1
	nu-ansi-term@0.46.0
	num-bigint@0.4.4
	num-integer@0.1.45
	num-traits@0.2.17
	num_cpus@1.16.0
	object@0.32.1
	oid-registry@0.6.1
	once_cell@1.19.0
	opaque-debug@0.3.0
	opener@0.6.1
	openssl-probe@0.1.5
	os_str_bytes@6.6.1
	overload@0.1.1
	pathdiff@0.2.1
	percent-encoding@2.3.1
	petgraph@0.6.4
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	pretty_assertions@1.4.0
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro2@1.0.70
	protobuf@2.28.0
	protobuf-codegen@2.28.0
	protobuf-codegen-pure@2.28.0
	pubgrub@0.2.1
	pulldown-cmark@0.8.0
	quote@1.0.33
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rand_xoshiro@0.6.0
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex@1.10.2
	regex-automata@0.1.10
	regex-automata@0.4.3
	regex-syntax@0.6.29
	regex-syntax@0.8.2
	reqwest@0.11.22
	ring@0.16.20
	ring@0.17.7
	rpassword@5.0.1
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rusticata-macros@4.1.0
	rustix@0.38.28
	rustls@0.21.10
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustversion@1.0.14
	ryu@1.0.16
	same-file@1.0.6
	schannel@0.1.22
	scoped-tls@1.0.1
	sct@0.7.1
	security-framework@2.9.2
	security-framework-sys@2.9.1
	serde@1.0.193
	serde-wasm-bindgen@0.4.5
	serde_derive@1.0.193
	serde_json@1.0.108
	serde_repr@0.1.17
	serde_urlencoded@0.7.1
	sha2@0.9.9
	sharded-slab@0.1.7
	similar@2.3.0
	sized-chunks@0.6.5
	slab@0.4.9
	smallvec@1.11.2
	smawk@0.3.2
	socket2@0.4.10
	socket2@0.5.5
	spdx@0.8.1
	spin@0.5.2
	spin@0.9.8
	static_vcruntime@2.0.0
	strsim@0.10.0
	strum@0.24.1
	strum_macros@0.24.3
	syn@1.0.109
	syn@2.0.41
	synstructure@0.12.6
	system-configuration@0.5.1
	system-configuration-sys@0.5.0
	tar@0.4.40
	tempfile@3.8.1
	termcolor@1.4.0
	terminal_size@0.1.17
	textwrap@0.15.0
	textwrap@0.16.0
	thiserror@1.0.51
	thiserror-impl@1.0.51
	thread_local@1.1.7
	time@0.3.30
	time-core@0.1.2
	time-macros@0.2.15
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio@1.35.0
	tokio-rustls@0.24.1
	tokio-util@0.7.10
	toml@0.5.11
	toml_edit@0.9.1
	tower-service@0.3.2
	tracing@0.1.40
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing-wasm@0.2.1
	try-lock@0.2.5
	typenum@1.17.0
	unicase@2.7.0
	unicode-bidi@0.3.14
	unicode-ident@1.0.12
	unicode-linebreak@0.1.5
	unicode-normalization@0.1.22
	unicode-width@0.1.11
	unicode-xid@0.2.4
	untrusted@0.7.1
	untrusted@0.9.0
	url@2.5.0
	valuable@0.1.0
	vec1@1.10.1
	version_check@0.9.4
	walkdir@2.4.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.89
	wasm-bindgen-backend@0.2.89
	wasm-bindgen-futures@0.4.39
	wasm-bindgen-macro@0.2.89
	wasm-bindgen-macro-support@0.2.89
	wasm-bindgen-shared@0.2.89
	wasm-bindgen-test@0.3.39
	wasm-bindgen-test-macro@0.3.39
	web-sys@0.3.66
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winreg@0.50.0
	x509-parser@0.15.1
	xattr@1.1.3
	xxhash-rust@0.8.7
	yaml-rust@0.4.5
	yansi@0.5.1
"

inherit cargo optfeature

DESCRIPTION="A friendly language for building type-safe, scalable systems!"
HOMEPAGE="https://gleam.run https://github.com/gleam-lang/gleam"
SRC_URI="
	https://github.com/gleam-lang/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 CC0-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB openssl"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-lang/erlang:*"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	dodoc CHANGELOG.md
	cargo_src_install --path compiler-cli
}

pkg_postinst() {
	optfeature "erlang package support" dev-util/rebar:3
}
