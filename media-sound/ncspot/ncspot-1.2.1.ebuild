# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.6

EAPI=8

CRATES="
	addr2line@0.24.2
	adler2@2.0.0
	aes@0.8.4
	ahash@0.8.11
	aho-corasick@1.1.3
	alsa-sys@0.3.1
	alsa@0.9.1
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.17
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.6
	anstyle@1.0.9
	anyhow@1.0.91
	arboard@3.4.1
	arrayvec@0.7.6
	async-broadcast@0.7.1
	async-channel@2.3.1
	async-executor@1.13.1
	async-fs@2.1.2
	async-io@2.3.4
	async-lock@3.4.0
	async-process@2.3.0
	async-recursion@1.1.1
	async-signal@0.2.10
	async-task@4.7.1
	async-trait@0.1.83
	atomic-waker@1.1.2
	autocfg@1.4.0
	aws-lc-rs@1.10.0
	aws-lc-sys@0.22.0
	backtrace@0.3.74
	base64@0.13.1
	base64@0.21.7
	base64@0.22.1
	base64ct@1.6.0
	bindgen@0.69.5
	bindgen@0.70.1
	bitflags@1.3.2
	bitflags@2.6.0
	block-buffer@0.10.4
	block2@0.5.1
	block@0.1.6
	blocking@1.6.1
	bumpalo@3.16.0
	bytemuck@1.19.0
	byteorder-lite@0.1.0
	byteorder@1.5.0
	bytes@1.8.0
	castaway@0.2.3
	cc@1.1.31
	cesu8@1.1.0
	cexpr@0.6.0
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	cfg_aliases@0.2.1
	chrono@0.4.38
	cipher@0.4.4
	clang-sys@1.8.1
	clap@4.5.20
	clap_builder@4.5.20
	clap_complete@4.5.36
	clap_lex@0.7.2
	clap_mangen@0.2.24
	clipboard-win@5.4.0
	cmake@0.1.51
	colorchoice@1.0.3
	combine@4.6.7
	compact_str@0.8.0
	concurrent-queue@2.5.0
	const-oid@0.9.6
	cookie@0.18.1
	cookie_store@0.21.0
	core-foundation-sys@0.8.7
	core-foundation@0.9.4
	core-graphics-types@0.1.3
	core-graphics@0.23.2
	coreaudio-rs@0.11.3
	coreaudio-sys@0.2.16
	cpal@0.15.3
	cpufeatures@0.2.14
	crc32fast@1.4.2
	crossbeam-channel@0.5.13
	crossbeam-utils@0.8.20
	crossterm@0.28.1
	crossterm_winapi@0.9.1
	crypto-common@0.1.6
	ctr@0.9.2
	cursive-macros@0.1.0
	cursive@0.21.1
	cursive_core@0.4.6
	darling@0.20.10
	darling_core@0.20.10
	darling_macro@0.20.10
	dasp_sample@0.11.0
	data-encoding@2.6.0
	der@0.7.9
	deranged@0.3.11
	derive-new@0.6.0
	derive_builder@0.20.2
	derive_builder_core@0.20.2
	derive_builder_macro@0.20.2
	digest@0.10.7
	dirs-next@1.0.2
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	dlib@0.5.2
	downcast-rs@1.2.1
	dunce@1.0.5
	either@1.13.0
	encoding_rs@0.8.35
	endi@1.1.0
	enum-map-derive@0.17.0
	enum-map@2.7.3
	enum_dispatch@0.3.13
	enumflags2@0.7.10
	enumflags2_derive@0.7.10
	enumset@1.1.5
	enumset_derive@0.10.0
	equivalent@1.0.1
	errno@0.3.9
	error-code@3.3.1
	event-listener-strategy@0.5.2
	event-listener@5.3.1
	fastrand@2.1.1
	fdeflate@0.3.6
	fern@0.7.0
	fixedbitset@0.4.2
	flate2@1.0.34
	fnv@1.0.7
	foreign-types-macros@0.2.3
	foreign-types-shared@0.1.1
	foreign-types-shared@0.3.1
	foreign-types@0.3.2
	foreign-types@0.5.0
	form_urlencoded@1.2.1
	fs_extra@1.3.0
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-lite@2.4.0
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-timer@3.0.3
	futures-util@0.3.31
	futures@0.3.31
	generic-array@0.14.7
	gethostname@0.4.3
	getrandom@0.2.15
	gimli@0.31.1
	glob@0.3.1
	governor@0.6.3
	h2@0.3.26
	h2@0.4.6
	half@1.8.3
	hashbrown@0.15.0
	headers-core@0.3.0
	headers@0.4.0
	heck@0.5.0
	hermit-abi@0.3.9
	hermit-abi@0.4.0
	hex@0.4.3
	hmac@0.12.1
	home@0.5.9
	http-body-util@0.1.2
	http-body@0.4.6
	http-body@1.0.1
	http@0.2.12
	http@1.1.0
	httparse@1.9.5
	httpdate@1.0.3
	hyper-proxy2@0.1.0
	hyper-rustls@0.24.2
	hyper-rustls@0.26.0
	hyper-rustls@0.27.3
	hyper-tls@0.6.0
	hyper-util@0.1.10
	hyper@0.14.31
	hyper@1.5.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.61
	ident_case@1.0.1
	idna@0.5.0
	image@0.25.4
	indexmap@2.6.0
	inout@0.1.3
	ioctl-rs@0.2.0
	ipnet@2.10.1
	is_terminal_polyfill@1.70.1
	itertools@0.12.1
	itertools@0.13.0
	itoa@1.0.11
	jni-sys@0.3.0
	jni@0.21.1
	jobserver@0.1.32
	jpeg-decoder@0.3.1
	js-sys@0.3.72
	lazy_static@1.5.0
	lazycell@1.3.0
	libc@0.2.161
	libloading@0.8.5
	libm@0.2.11
	libpulse-binding@2.28.1
	libpulse-simple-binding@2.28.1
	libpulse-simple-sys@1.21.1
	libpulse-sys@1.21.0
	libredox@0.1.3
	librespot-audio@0.6.0
	librespot-core@0.6.0
	librespot-metadata@0.6.0
	librespot-oauth@0.6.0
	librespot-playback@0.6.0
	librespot-protocol@0.6.0
	linux-raw-sys@0.4.14
	lock_api@0.4.12
	log@0.4.22
	mac-notification-sys@0.6.2
	mach2@0.4.2
	malloc_buf@0.0.6
	maplit@1.0.2
	maybe-async@0.2.10
	memchr@2.7.4
	memoffset@0.9.1
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.8.0
	mio@1.0.2
	mirai-annotations@1.12.0
	native-tls@0.2.12
	ncurses@5.101.0
	ncurses@6.0.1
	ndk-context@0.1.1
	ndk-sys@0.5.0+25.2.9519653
	ndk@0.8.0
	nix@0.28.0
	nix@0.29.0
	no-std-compat@0.4.1
	nom@7.1.3
	nonzero_ext@0.3.0
	notify-rust@4.11.3
	ntapi@0.4.1
	num-bigint-dig@0.8.4
	num-bigint@0.2.6
	num-bigint@0.4.6
	num-complex@0.2.4
	num-complex@0.4.6
	num-conv@0.1.0
	num-derive@0.3.3
	num-derive@0.4.2
	num-integer@0.1.46
	num-iter@0.1.45
	num-rational@0.2.4
	num-rational@0.4.2
	num-traits@0.2.19
	num@0.2.1
	num@0.4.3
	num_enum@0.7.3
	num_enum_derive@0.7.3
	num_threads@0.1.7
	numtoa@0.2.4
	oauth2@4.4.2
	objc-foundation@0.1.1
	objc-sys@0.3.5
	objc2-app-kit@0.2.2
	objc2-core-data@0.2.2
	objc2-core-image@0.2.2
	objc2-encode@4.0.3
	objc2-foundation@0.2.2
	objc2-metal@0.2.2
	objc2-quartz-core@0.2.2
	objc2@0.5.2
	objc@0.2.7
	objc_id@0.1.1
	object@0.36.5
	oboe-sys@0.6.1
	oboe@0.6.1
	once_cell@1.20.2
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.104
	openssl@0.10.68
	ordered-stream@0.2.0
	os_pipe@1.2.1
	pancurses@0.17.0
	parking@2.2.1
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	parse_duration@2.1.1
	paste@1.0.15
	pbkdf2@0.12.2
	pdcurses-sys@0.7.1
	pem-rfc7468@0.7.0
	percent-encoding@2.3.1
	petgraph@0.6.5
	pin-project-lite@0.2.15
	pin-utils@0.1.0
	piper@0.2.4
	pkcs1@0.7.5
	pkcs8@0.10.2
	pkg-config@0.3.31
	platform-dirs@0.3.0
	png@0.17.14
	polling@3.7.3
	portable-atomic@1.9.0
	portaudio-rs@0.3.2
	portaudio-sys@0.1.1
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	prettyplease@0.2.25
	priority-queue@2.1.1
	proc-macro-crate@3.2.0
	proc-macro2@1.0.89
	protobuf-codegen@3.7.1
	protobuf-parse@3.7.1
	protobuf-support@3.7.1
	protobuf@3.7.1
	quick-xml@0.31.0
	quick-xml@0.36.2
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rand_distr@0.4.3
	redox_syscall@0.5.7
	redox_termios@0.1.3
	redox_users@0.4.6
	regex-automata@0.4.8
	regex-syntax@0.8.5
	regex@1.11.1
	reqwest@0.11.27
	reqwest@0.12.9
	ring@0.17.8
	rodio@0.19.0
	roff@0.2.2
	rsa@0.9.6
	rspotify-http@0.13.3
	rspotify-macros@0.13.3
	rspotify-model@0.13.3
	rspotify@0.13.3
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustix@0.38.38
	rustls-native-certs@0.7.3
	rustls-native-certs@0.8.0
	rustls-pemfile@1.0.4
	rustls-pemfile@2.2.0
	rustls-pki-types@1.10.0
	rustls-webpki@0.101.7
	rustls-webpki@0.102.8
	rustls@0.21.12
	rustls@0.22.4
	rustls@0.23.16
	rustversion@1.0.18
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.26
	scoped-tls@1.0.1
	scopeguard@1.2.0
	sct@0.7.1
	security-framework-sys@2.12.0
	security-framework@2.11.1
	serde@1.0.214
	serde_cbor@0.11.2
	serde_derive@1.0.214
	serde_json@1.0.132
	serde_path_to_error@0.1.16
	serde_repr@0.1.19
	serde_spanned@0.6.8
	serde_urlencoded@0.7.1
	sha1@0.10.6
	sha2@0.10.8
	shannon@0.2.0
	shell-words@1.1.0
	shlex@1.3.0
	signal-hook-mio@0.2.4
	signal-hook-registry@1.4.2
	signal-hook@0.3.17
	signature@2.2.0
	simd-adler32@0.3.7
	slab@0.4.9
	smallvec@1.13.2
	socket2@0.5.7
	socks@0.3.4
	spin@0.9.8
	spinning_top@0.3.0
	spki@0.7.3
	static_assertions@1.1.0
	strsim@0.11.1
	strum@0.26.3
	strum_macros@0.26.4
	subtle@2.6.1
	symphonia-bundle-mp3@0.5.4
	symphonia-codec-vorbis@0.5.4
	symphonia-core@0.5.4
	symphonia-format-ogg@0.5.4
	symphonia-metadata@0.5.4
	symphonia-utils-xiph@0.5.4
	symphonia@0.5.4
	syn@1.0.109
	syn@2.0.85
	sync_wrapper@0.1.2
	sync_wrapper@1.0.1
	sysinfo@0.31.4
	system-configuration-sys@0.5.0
	system-configuration-sys@0.6.0
	system-configuration@0.5.1
	system-configuration@0.6.1
	tauri-winrt-notification@0.2.1
	tempfile@3.13.0
	termion@4.0.3
	thiserror-impl@1.0.65
	thiserror@1.0.65
	thread-id@4.2.2
	tiff@0.9.1
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tokio-macros@2.4.0
	tokio-native-tls@0.3.1
	tokio-rustls@0.24.1
	tokio-rustls@0.25.0
	tokio-rustls@0.26.0
	tokio-stream@0.1.16
	tokio-tungstenite@0.24.0
	tokio-util@0.7.12
	tokio@1.41.0
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.22.22
	tower-service@0.3.3
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing@0.1.40
	tree_magic_mini@3.1.6
	try-lock@0.2.5
	tungstenite@0.24.0
	typenum@1.17.0
	uds_windows@1.1.0
	unicode-bidi@0.3.17
	unicode-ident@1.0.13
	unicode-normalization@0.1.24
	unicode-segmentation@1.12.0
	unicode-width@0.1.14
	unicode-width@0.2.0
	untrusted@0.9.0
	ureq@2.10.1
	url@2.5.2
	utf-8@0.7.6
	utf8parse@0.2.2
	uuid@1.11.0
	vcpkg@0.2.15
	vergen-gitcl@1.0.1
	vergen-lib@0.1.4
	vergen@9.0.1
	version_check@0.9.5
	walkdir@2.5.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.95
	wasm-bindgen-futures@0.4.45
	wasm-bindgen-macro-support@0.2.95
	wasm-bindgen-macro@0.2.95
	wasm-bindgen-shared@0.2.95
	wasm-bindgen@0.2.95
	wayland-backend@0.3.7
	wayland-client@0.31.7
	wayland-protocols-wlr@0.2.0
	wayland-protocols@0.31.2
	wayland-scanner@0.31.5
	wayland-sys@0.31.5
	web-sys@0.3.72
	webpki-roots@0.25.4
	webpki@0.22.4
	weezl@0.1.8
	which@4.4.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-core@0.54.0
	windows-core@0.56.0
	windows-core@0.57.0
	windows-implement@0.56.0
	windows-implement@0.57.0
	windows-interface@0.56.0
	windows-interface@0.57.0
	windows-registry@0.2.0
	windows-result@0.1.2
	windows-result@0.2.0
	windows-strings@0.1.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows-version@0.1.1
	windows@0.54.0
	windows@0.56.0
	windows@0.57.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winnow@0.6.20
	winreg@0.5.1
	winreg@0.50.0
	wl-clipboard-rs@0.8.1
	x11rb-protocol@0.13.1
	x11rb@0.13.1
	xdg-home@1.3.0
	xi-unicode@0.3.0
	zbus@4.4.0
	zbus@5.0.1
	zbus_macros@4.4.0
	zbus_macros@5.0.1
	zbus_names@3.0.0
	zbus_names@4.0.0
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zeroize@1.8.1
	zvariant@4.2.0
	zvariant@5.0.1
	zvariant_derive@4.2.0
	zvariant_derive@5.0.1
	zvariant_utils@2.1.0
	zvariant_utils@3.0.1
"

# xtask crates:
CRATES+="
	cargo-xtask@0.1.0
	clap_mangen@0.2.24
	clap_complete@4.5.35
	clap@4.5.20
"

PYTHON_COMPAT=( python3_{10..13} )

inherit bash-completion-r1 cargo desktop optfeature python-any-r1

DESCRIPTION="ncurses Spotify client written in Rust using librespot"
HOMEPAGE="https://github.com/hrkfdn/ncspot"
SRC_URI="https://github.com/hrkfdn/ncspot/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}"

LICENSE="BSD-2"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 BSD Boost-1.0 ISC MIT MPL-2.0 openssl Unicode-DFS-2016
"
SLOT="0"
KEYWORDS="~amd64"

IUSE="clipboard cover mpris ncurses +notify pulseaudio"

RDEPEND="dev-libs/openssl:=
	sys-apps/dbus
	clipboard? ( x11-libs/libxcb:= )
	cover? ( media-gfx/ueberzug )
	ncurses? ( sys-libs/ncurses:= )
	!ncurses? ( sys-libs/ncurses )
	pulseaudio? ( media-libs/libpulse )
	!pulseaudio? ( media-libs/alsa-lib )"
DEPEND="${RDEPEND}"
BDEPEND="${PYTHON_DEPS}
	virtual/pkgconfig"

QA_FLAGS_IGNORED="/usr/bin/ncspot"

src_configure() {
	local myfeaturesdef=""

	use clipboard && myfeaturesdef+="share_clipboard,share_selection,"
	use cover && myfeaturesdef+="cover,"
	use mpris && myfeaturesdef+="mpris,"
	use ncurses && myfeaturesdef+="ncurses_backend,"
	use notify && myfeaturesdef+="notify,"

	# It always seems to link to libpulse regardless of this setting if libpulse is installed.
	if use pulseaudio; then
	  myfeaturesdef+="pulseaudio_backend,"
	else
	  myfeaturesdef+="alsa_backend,"
	fi

	local myfeatures=( "${myfeaturesdef::-1}" )

	cargo_src_configure --no-default-features
}

src_compile() {
	cargo_src_compile

	cargo xtask generate-shell-completion || die
	cargo xtask generate-manpage || die
}

src_install() {
	cargo_src_install
	einstalldocs

	domenu misc/ncspot.desktop
	newicon -s scalable images/logo.svg ncspot.svg

	newbashcomp misc/ncspot.bash ncspot

	insinto /usr/share/fish/completions
	doins misc/ncspot.fish

	insinto /usr/share/zsh/site-functions
	doins misc/_ncspot

	doman misc/ncspot.1
}

pkg_postinst() {
	optfeature_header "Optional runtime features:"
	optfeature "MPRIS song scrobbling support" media-sound/rescrobbled
}
