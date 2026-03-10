class Eightkno < Formula
  desc "8kno command line interface"
  homepage "https://8kno.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-darwin-arm64.tar.gz"
      sha256 "994faa17ceb8a5ad897ea088411a42a9985a1bf3f811f938e384d37cfc6da100"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-darwin-x64.tar.gz"
      sha256 "97967e8e250055cd222d446a0f4e3f104113fa138214b512f142d798aa3864e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-linux-arm64.tar.gz"
      sha256 "5249a9969326b7e72a9793f6e47a923df8b2fcb1a8085bc6c0cc30056e16df89"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-linux-x64.tar.gz"
      sha256 "d0f1ce9ce0256c577308b8b1f011da6203deae7ca88c4e7e9b74f2e21972319b"
    end
  end

  def install
    bin.install "8kno"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/8kno --version")
  end
end
