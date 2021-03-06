# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A simple progress bar for the console"
HOMEPAGE="https://github.com/yamadapc/haskell-ascii-progress"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND="dev-haskell/ansi-terminal:=[profile?]
	>=dev-haskell/async-2.0.1.5:=[profile?]
	>=dev-haskell/conduit-1.2:=[profile?]
	>=dev-haskell/data-default-0.5.3:=[profile?]
	dev-haskell/http:=[profile?]
	>=dev-haskell/http-conduit-2.1:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-2.1 <dev-haskell/hspec-3
		>=dev-haskell/quickcheck-2.6 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples examples)
}
