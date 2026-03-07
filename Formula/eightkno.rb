class Eightkno < Formula
  desc "8kno command line interface"
  homepage "https://8kno.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-darwin-arm64.tar.gz"
      sha256 "36d5efff6f4d84a283531d712db58efea3be81d254e895e46026cb2868b600a0"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-darwin-x64.tar.gz"
      sha256 "8283c51541049db72d2431d392516514c692bdae0e6b9f1289708452a9db00fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-linux-arm64.tar.gz"
      sha256 "bab89d1940abf56a5b0cb8c0e523a2c581dcc9b02969c8956b16d5a430b22def"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-linux-x64.tar.gz"
      sha256 "f3368319bdb6e55ade336dce39cbdf8fe7738800f6599029c8fe54af81f5c5c8"
    end
  end

  def install
    bin.install "8kno"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/8kno --version")
  end
end
