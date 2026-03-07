class Eightkno < Formula
  desc "8kno command line interface"
  homepage "https://8kno.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-darwin-arm64.tar.gz"
      sha256 "66f043e422a701f80d9017156ccb8d0060ade3b616839b987377a60712b4e4d5"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-darwin-x64.tar.gz"
      sha256 "e3f0434da9963c359651136478329d37fcfb8f1a50c9c8cdfc3885c4242c3e06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-linux-arm64.tar.gz"
      sha256 "7c58ae692cde49b45a027dd192f45299c2cf11142072a40bde8436471e9a8400"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-linux-x64.tar.gz"
      sha256 "54997ff9127abd76f27706d3e083062f240b088c40f2589e7798c3d3b70842b0"
    end
  end

  def install
    bin.install "8kno"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/8kno --version")
  end
end
