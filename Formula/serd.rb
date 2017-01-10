class Serd < Formula
  desc "C library for RDF syntax"
  homepage "https://drobilla.net/software/serd/"
  url "https://download.drobilla.net/serd-0.26.0.tar.bz2"
  sha256 "e3e44a88f90a9971d55e6cbd59a7b9cfa97cfc17c512fed7166a4252d5209298"

  bottle do
    cellar :any
    sha256 "fc7d9a1c14291d000ebc948606a464bf4dec7049b59c11934151508e1786abaf" => :sierra
    sha256 "4823586c4d1f956cabed930511eb04645058b35ac7b85e7e105b93c093615875" => :el_capitan
    sha256 "2471f7258b353078f557267da8c6bd671dfa25edf69d8f7449ce64e835ff54d7" => :yosemite
  end

  depends_on "pkg-config" => :build

  def install
    system "./waf", "configure", "--prefix=#{prefix}"
    system "./waf"
    system "./waf", "install"
  end
end
