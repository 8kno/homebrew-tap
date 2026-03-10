class Eightkno < Formula
  desc "8kno command line interface"
  homepage "https://8kno.com"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.1/8kno-darwin-arm64.tar.gz"
      sha256 "71d3d46188f7f8669b89346b5c298c82e4566a87ab9fdfc58b8c37a2ad4e3fad"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.1/8kno-darwin-x64.tar.gz"
      sha256 "2bcdf72ca42b17d36e67263ff75d3e43c293c25e6cff3316d6cdcd60d7be6574"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.1/8kno-linux-arm64.tar.gz"
      sha256 "3186648f9713e1f53063c4359cef7d781b217372e4dc187be9c1fa80386b2ba1"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.1/8kno-linux-x64.tar.gz"
      sha256 "e797a5ec8ffe28e3272894e5c72e154582d22ec1f5d3cd11c09640fc239297f4"
    end
  end

  def install
    bin.install "8kno"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/8kno --version")
  end
end
