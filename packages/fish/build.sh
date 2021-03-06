TERMUX_PKG_HOMEPAGE=https://fishshell.com/
TERMUX_PKG_DESCRIPTION="Shell geared towards interactive use"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=3.0.2
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://github.com/fish-shell/fish-shell/releases/download/$TERMUX_PKG_VERSION/fish-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=14728ccc6b8e053d01526ebbd0822ca4eb0235e6487e832ec1d0d22f1395430e
# fish calls 'tput' from ncurses-utils, at least when cancelling (Ctrl+C) a command line.
# man is needed since fish calls apropos during command completion.
TERMUX_PKG_DEPENDS="libc++, ncurses, libandroid-support, ncurses-utils, man, bc, pcre2"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
ac_cv_file__proc_self_stat=yes
ac_cv_func_wcstod_l=no
--without-included-pcre2
"

termux_step_pre_configure() {
	CXXFLAGS+=" $CPPFLAGS"
}

termux_step_post_make_install() {
	cat >> $TERMUX_PREFIX/etc/fish/config.fish <<HERE

function __fish_command_not_found_handler --on-event fish_command_not_found
	$TERMUX_PREFIX/libexec/termux/command-not-found \$argv[1]
end
HERE
}
