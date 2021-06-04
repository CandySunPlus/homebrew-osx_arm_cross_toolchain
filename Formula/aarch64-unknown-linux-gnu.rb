class Aarch64UnknownLinuxGnu < Formula
  desc "Pre-built ARM/Linux C cross-compilers for MacOS"
  homepage "https://github.com/thinkski/osx-arm-linux-toolchains"
  url "https://github.com/CandySunPlus/homebrew-osx_arm_cross_toolchain/releases/download/8.3.0/aarch64-unknown-linux-gnu.tar.xz"
  version "8.3.0"
  sha256 "24318a26556b67b23d2527596c0118b997237d771e0cb5ea9eae7d4b8d784a39"

  def install
    (prefix/"toolchain").install Dir["./*"]
    Dir.glob(prefix/"toolchain/bin/*") {|file| bin.install_symlink file}
  end
end
