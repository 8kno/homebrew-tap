class Eightkno < Formula
  desc "8kno command line interface"
  homepage "https://8kno.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-darwin-arm64.tar.gz"
      sha256 "2f7e82f82fa5305cc3af01903f2f8022dd67405eef2343e4e37934e008fe1ce7"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-darwin-x64.tar.gz"
      sha256 "6507808dd2914584e2587cf2652a5873e8909b6d26a8b4374087156cd59b27c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-linux-arm64.tar.gz"
      sha256 "1336379a3a8eaf1504b486f134cdc614be5b45a1d7112807751a2d1cd19775d3"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.0/8kno-linux-x64.tar.gz"
      sha256 "9e3133915cde57e434e1e94f3fa7d0bf1e162674bc119a8b110b0c1b1110e968"
    end
  end

  def install
    bin.install "8kno"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/8kno --version")
  end
end
