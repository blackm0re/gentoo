# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=JESSE
MODULE_VERSION=0.27
inherit perl-module

DESCRIPTION="A lightweight cache with timed expiration"

SLOT="0"
KEYWORDS="~alpha amd64 hppa ia64 ppc sparc x86"
IUSE=""

SRC_TEST="do"

src_prepare() {
	sed -i -e 's/use inc::Module::Install;/use lib q[.]; use inc::Module::Install;/' Makefile.PL ||
		die "Can't patch Makefile.PL for 5.26 dot-in-inc"
	perl-module_src_prepare
}
