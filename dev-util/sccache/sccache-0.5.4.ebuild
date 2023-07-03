# Copyright 2017-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.7

EAPI=8

CRATES="
	addr2line@0.19.0
	adler@1.0.2
	aho-corasick@0.7.20
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstyle@0.3.5
	anstyle@1.0.0
	anyhow@1.0.70
	ar@0.9.0
	arc-swap@1.5.1
	arrayref@0.3.6
	arrayvec@0.5.2
	arrayvec@0.7.2
	ascii@1.1.0
	assert_cmd@2.0.10
	async-compat@0.2.1
	async-trait@0.1.68
	autocfg@1.1.0
	backon@0.4.0
	backtrace@0.3.67
	base64@0.13.1
	base64@0.21.0
	base64ct@1.6.0
	bb8@0.8.0
	bincode@1.3.3
	bitflags@1.3.2
	bitflags@2.0.2
	blake3@1.3.3
	block-buffer@0.10.3
	bstr@1.0.1
	buf_redux@0.8.4
	bumpalo@3.11.1
	byteorder@1.4.3
	bytes@1.4.0
	cc@1.0.79
	cfg-if@0.1.10
	cfg-if@1.0.0
	chrono@0.4.26
	chunked_transfer@1.4.0
	clap@4.1.11
	clap_derive@4.1.9
	clap_lex@0.3.0
	combine@4.6.6
	const-oid@0.9.2
	const-random-macro@0.1.15
	const-random@0.1.15
	constant_time_eq@0.2.4
	core-foundation-sys@0.8.3
	core-foundation@0.9.3
	core_affinity@0.8.0
	cpufeatures@0.2.5
	crc32fast@1.3.2
	crossbeam-utils@0.8.15
	crunchy@0.2.2
	crypto-common@0.1.6
	daemonize@0.5.0
	dashmap@5.4.0
	data-encoding@2.3.3
	der@0.7.6
	difflib@0.4.0
	digest@0.10.6
	directories@5.0.0
	dirs-sys@0.4.0
	displaydoc@0.1.7
	dlv-list@0.5.0
	doc-comment@0.3.3
	either@1.8.0
	encoding-index-japanese@1.20141219.5
	encoding-index-korean@1.20141219.5
	encoding-index-simpchinese@1.20141219.5
	encoding-index-singlebyte@1.20141219.5
	encoding-index-tradchinese@1.20141219.5
	encoding@0.2.33
	encoding_index_tests@0.1.4
	encoding_rs@0.8.31
	enum-as-inner@0.5.1
	env_logger@0.10.0
	errno-dragonfly@0.1.2
	errno@0.2.8
	errno@0.3.1
	error-chain@0.12.4
	fastrand@1.8.0
	filetime@0.2.21
	flagset@0.4.3
	flate2@1.0.26
	float-cmp@0.9.0
	flume@0.10.14
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.1.0
	fs-err@2.9.0
	futures-channel@0.3.27
	futures-core@0.3.27
	futures-executor@0.3.27
	futures-io@0.3.27
	futures-macro@0.3.27
	futures-sink@0.3.27
	futures-task@0.3.27
	futures-util@0.3.27
	futures@0.3.27
	generic-array@0.14.6
	getrandom@0.2.8
	gimli@0.27.2
	gzp@0.11.3
	h2@0.3.17
	hashbrown@0.12.3
	hashbrown@0.13.2
	heck@0.4.0
	hermit-abi@0.2.6
	hermit-abi@0.3.1
	hex@0.4.3
	hmac@0.12.1
	home@0.5.5
	hostname@0.3.1
	http-body@0.4.5
	http@0.2.9
	httparse@1.8.0
	httpdate@1.0.2
	humantime@2.1.0
	hyper-rustls@0.24.0
	hyper-tls@0.5.0
	hyper@0.14.25
	iana-time-zone@0.1.47
	idna@0.2.3
	idna@0.3.0
	indexmap@1.9.2
	instant@0.1.12
	io-lifetimes@0.7.5
	io-lifetimes@1.0.3
	ipconfig@0.3.1
	ipnet@2.5.1
	is-terminal@0.4.7
	itertools@0.10.5
	itoa@1.0.4
	jobserver@0.1.26
	js-sys@0.3.60
	jsonwebtoken@8.2.0
	lazy_static@1.4.0
	libc@0.2.140
	libm@0.2.6
	libmount@0.1.15
	linked-hash-map@0.5.6
	linux-raw-sys@0.0.46
	linux-raw-sys@0.1.3
	linux-raw-sys@0.3.8
	lock_api@0.4.9
	log@0.4.19
	lru-cache@0.1.2
	match_cfg@0.1.0
	matches@0.1.10
	md-5@0.10.5
	memchr@2.5.0
	memmap2@0.6.2
	memoffset@0.7.1
	mime@0.3.17
	mime_guess@2.0.4
	miniz_oxide@0.6.2
	miniz_oxide@0.7.1
	mio@0.8.5
	multipart@0.18.0
	nanorand@0.7.0
	native-tls@0.2.11
	nix@0.14.1
	nix@0.26.2
	normalize-line-endings@0.3.0
	num-bigint-dig@0.8.2
	num-bigint@0.4.3
	num-integer@0.1.45
	num-iter@0.1.43
	num-traits@0.2.15
	num_cpus@1.15.0
	num_threads@0.1.6
	number_prefix@0.4.0
	object@0.30.3
	once_cell@1.17.1
	opendal@0.37.0
	openssl-macros@0.1.0
	openssl-probe@0.1.5
	openssl-src@111.25.1+1.1.1t
	openssl-sys@0.9.90
	openssl@0.10.55
	ordered-multimap@0.6.0
	os_str_bytes@6.4.1
	parking_lot@0.12.1
	parking_lot_core@0.9.4
	pem-rfc7468@0.7.0
	pem@1.1.0
	percent-encoding@2.2.0
	pin-project-internal@1.0.12
	pin-project-lite@0.2.9
	pin-project@1.0.12
	pin-utils@0.1.0
	pkcs1@0.7.5
	pkcs8@0.10.2
	pkg-config@0.3.26
	ppv-lite86@0.2.17
	predicates-core@1.0.6
	predicates-tree@1.0.7
	predicates@3.0.3
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro-hack@0.5.20+deprecated
	proc-macro2@1.0.56
	quick-error@1.2.3
	quick-xml@0.27.1
	quick-xml@0.28.1
	quote@1.0.26
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redis@0.22.1
	redox_syscall@0.2.16
	redox_users@0.4.3
	regex-automata@0.1.10
	regex-syntax@0.6.29
	regex@1.7.3
	reqsign@0.13.0
	reqwest@0.11.18
	resolv-conf@0.7.0
	retry@2.0.0
	ring@0.16.20
	rouille@3.6.1
	rsa@0.9.2
	rust-ini@0.19.0
	rustc-demangle@0.1.23
	rustix@0.35.13
	rustix@0.36.4
	rustix@0.37.7
	rustls-native-certs@0.6.2
	rustls-pemfile@1.0.1
	rustls-webpki@0.100.1
	rustls@0.20.7
	rustls@0.21.1
	ryu@1.0.11
	safemem@0.3.3
	same-file@1.0.6
	schannel@0.1.20
	scopeguard@1.1.0
	sct@0.7.0
	security-framework-sys@2.6.1
	security-framework@2.7.0
	semver@1.0.16
	serde@1.0.159
	serde_derive@1.0.159
	serde_json@1.0.94
	serde_repr@0.1.9
	serde_spanned@0.6.1
	serde_urlencoded@0.7.1
	serial_test@2.0.0
	serial_test_derive@2.0.0
	sha1@0.10.5
	sha1_smol@1.0.0
	sha2@0.10.6
	signal-hook-registry@1.4.0
	signature@2.0.0
	simple_asn1@0.6.2
	slab@0.4.7
	smallvec@1.10.0
	socket2@0.4.9
	spin@0.5.2
	spin@0.9.4
	spki@0.7.2
	static_assertions@1.1.0
	stringmatch@0.3.3
	strip-ansi-escapes@0.1.1
	strsim@0.10.0
	subtle@2.4.1
	syn@1.0.104
	syn@2.0.13
	syslog@6.0.1
	tar@0.4.38
	temp-env@0.3.4
	tempfile@3.4.0
	termcolor@1.1.3
	terminal_size@0.2.2
	termtree@0.4.0
	thirtyfour@0.27.3
	thirtyfour_sync@0.27.1
	thiserror-impl@1.0.38
	thiserror@1.0.38
	threadpool@1.8.1
	time-core@0.1.0
	time-macros@0.2.6
	time@0.1.43
	time@0.3.17
	tiny-keccak@2.0.2
	tiny_http@0.12.0
	tinyvec@1.6.0
	tinyvec_macros@0.1.0
	tokio-macros@2.1.0
	tokio-native-tls@0.3.0
	tokio-rustls@0.23.4
	tokio-rustls@0.24.0
	tokio-serde@0.8.0
	tokio-util@0.7.7
	tokio@1.28.2
	toml@0.7.3
	toml_datetime@0.6.1
	toml_edit@0.19.8
	tower-layer@0.3.2
	tower-service@0.3.2
	tower@0.4.13
	tracing-attributes@0.1.23
	tracing-core@0.1.30
	tracing@0.1.37
	trust-dns-proto@0.22.0
	trust-dns-resolver@0.22.0
	try-lock@0.2.3
	twoway@0.1.8
	typenum@1.15.0
	unicase@2.6.0
	unicode-bidi@0.3.8
	unicode-ident@1.0.5
	unicode-normalization@0.1.22
	untrusted@0.7.1
	url@2.3.1
	urlparse@0.7.3
	utf8parse@0.2.0
	uuid@1.3.3
	vcpkg@0.2.15
	version-compare@0.1.1
	version_check@0.9.4
	void@1.0.2
	vte@0.10.1
	vte_generate_state_changes@0.1.1
	wait-timeout@0.2.0
	walkdir@2.3.3
	want@0.3.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.83
	wasm-bindgen-futures@0.4.29
	wasm-bindgen-macro-support@0.2.83
	wasm-bindgen-macro@0.2.83
	wasm-bindgen-shared@0.2.83
	wasm-bindgen@0.2.83
	wasm-streams@0.2.3
	web-sys@0.3.59
	webpki-roots@0.22.5
	webpki@0.22.0
	which@4.4.0
	widestring@0.5.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.36.1
	windows-sys@0.42.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-targets@0.42.1
	windows-targets@0.48.0
	windows_aarch64_gnullvm@0.42.1
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_msvc@0.36.1
	windows_aarch64_msvc@0.42.1
	windows_aarch64_msvc@0.48.0
	windows_i686_gnu@0.36.1
	windows_i686_gnu@0.42.1
	windows_i686_gnu@0.48.0
	windows_i686_msvc@0.36.1
	windows_i686_msvc@0.42.1
	windows_i686_msvc@0.48.0
	windows_x86_64_gnu@0.36.1
	windows_x86_64_gnu@0.42.1
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnullvm@0.42.1
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_msvc@0.36.1
	windows_x86_64_msvc@0.42.1
	windows_x86_64_msvc@0.48.0
	winnow@0.4.1
	winreg@0.10.1
	xattr@0.2.3
	zeroize@1.5.7
	zip@0.6.4
	zstd-safe@6.0.4+zstd.1.5.4
	zstd-sys@2.0.7+zstd.1.5.4
	zstd@0.12.3+zstd.1.5.2
"

inherit cargo optfeature systemd

DESCRIPTION="ccache/distcc like tool with support for rust and cloud storage"
HOMEPAGE="https://github.com/mozilla/sccache/"

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/mozilla/sccache.git"
else
	SRC_URI="
		https://github.com/mozilla/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
		${CARGO_CRATE_URIS}
	"
	KEYWORDS="~amd64 ~ppc64"
fi

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 BSD-2 BSD CC0-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016 ZLIB
"
SLOT="0"
IUSE="azure dist-client dist-server gcs memcached redis s3 simple-s3"
# See https://github.com/mozilla/sccache/issues/1820, hopefully temporary.
RESTRICT="test"
REQUIRED_USE="s3? ( simple-s3 )"

BDEPEND="
	virtual/pkgconfig
	>=virtual/rust-1.65
"
DEPEND="
	app-arch/zstd
	sys-libs/zlib:=
	dist-server? ( dev-libs/openssl:= )
	gcs? ( dev-libs/openssl:= )
"
RDEPEND="
	${DEPEND}
	dist-server? ( sys-apps/bubblewrap )
"

QA_FLAGS_IGNORED="usr/bin/sccache*"

src_unpack() {
	if [[ "${PV}" == *9999* ]]; then
		git-r3_src_unpack
		cargo_live_src_unpack
	else
		cargo_src_unpack
	fi
}

src_configure() {
	# Should be able to drop this once we have a 'gentoo' profile
	sed -i 's/strip = true/strip = false/' Cargo.toml || die

	myfeatures=(
		native-zlib
		$(usev azure)
		$(usev dist-client)
		$(usev dist-server)
		$(usev gcs)
		$(usev memcached)
		$(usev redis)
		$(usev s3)
		$(usev simple-s3)
	)

	cargo_src_configure --no-default-features
}

src_test() {
	if [[ "${PV}" == *9999* ]]; then
		ewarn "tests are always broken for ${PV} (require network), skipping"
	else
		cargo_src_test
	fi
}

src_install() {
	cargo_src_install

	keepdir /etc/sccache

	einstalldocs
	dodoc -r docs/.

	if use dist-server; then
		newinitd "${FILESDIR}"/server.initd sccache-server
		newconfd "${FILESDIR}"/server.confd sccache-server

		newinitd "${FILESDIR}"/scheduler.initd sccache-scheduler
		newconfd "${FILESDIR}"/scheduler.confd sccache-scheduler

		systemd_dounit "${FILESDIR}"/sccache-server.service
		systemd_dounit "${FILESDIR}"/sccache-scheduler.service

	fi
}

pkg_postinst() {
	ewarn "${PN} is experimental, please use with care"
	use memcached && optfeature "memcached backend support" net-misc/memcached
	use redis && optfeature "redis backend support" dev-db/redis
}
