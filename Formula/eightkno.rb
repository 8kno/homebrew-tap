class Eightkno < Formula
  desc "8kno command line interface"
  homepage "https://8kno.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-darwin-arm64.tar.gz"
      sha256 "0e1ba21827e89f6f6446e04c7a9e5cdc387f7bc7b3fd010ef9e0985d8847f9b9"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-darwin-x64.tar.gz"
      sha256 "767e185526181f1ab7d19e9dfce506068321edc2f0c1b8f8885ede2449808f74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-linux-arm64.tar.gz"
      sha256 "a8eacc29a511b029c8a3e1a2e7c421acc909bf8d0007a50bb5e58c0d57ab191e"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-linux-x64.tar.gz"
      sha256 "6aaeb76831379d11f3e993dd0a4aa699dcfb95e4efa69352e51729ad8283cc01"
    end
  end

  def install
    bin.install "8kno"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/8kno --version")
  end
end
