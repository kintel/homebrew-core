class DyldHeaders < Formula
  desc "Header files for the dynamic linker"
  homepage "https://opensource.apple.com/"
  url "https://github.com/apple-oss-distributions/dyld/archive/refs/tags/dyld-941.5.tar.gz"
  sha256 "1041fc6794579593d244fb1e88f99d1385d6170ec92247af8246d67799b6553b"
  license "APSL-2.0"

  bottle do
    sha256 cellar: :any_skip_relocation, all: "221d2dec7a44925607f6ed07474cc044333c8f93e14a769bfdd4c4131cd27909"
  end

  keg_only :provided_by_macos

  def install
    include.install Dir["include/*"]
  end
end
