class Aarch64UnknownLinuxGnu < Formula
  desc "Pre-built ARM/Linux C cross-compilers for MacOS"
  homepage "https://crosstool-ng.github.io/"
  url "https://github.com/CandySunPlus/homebrew-osx_arm_cross_toolchain/releases/download/11.1.0/aarch64-unknown-linux-gnu.tar.xz"
  version "11.1.0"
  sha256 "19a1d51b887211fbd985f72b4c0fd7962f91ba398deeb8e689bd0ce009b151bc"

  def install
    (prefix/"toolchain").install Dir["./*"]
    Dir.glob(prefix/"toolchain/bin/*") {|file| bin.install_symlink file}
  end
end
