class Aarch64UnknownLinuxGnu < Formula
  desc "Pre-built ARM/Linux C cross-compilers for MacOS"
  homepage "https://crosstool-ng.github.io/"
  url "https://github.com/CandySunPlus/homebrew-osx_arm_cross_toolchain/releases/download/11.1.0/aarch64-unknown-linux-gnu.tar.xz"
  version "11.1.0"
  sha256 "3075fa5c4a7e5fe4ea39830cc71c3e65a8ccc957f0aeb61e0425d658e1028ba9"

  def install
    (prefix/"toolchain").install Dir["./*"]
    Dir.glob(prefix/"toolchain/bin/*") {|file| bin.install_symlink file}
  end
end
