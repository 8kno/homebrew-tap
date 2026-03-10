class Eightkno < Formula
  desc "8kno command line interface"
  homepage "https://8kno.com"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.2/8kno-darwin-arm64.tar.gz"
      sha256 "1e8c5a0c02ffad4cf447fb499553f5322086940ad291b4ffd1eabc504a36fd32"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.2/8kno-darwin-x64.tar.gz"
      sha256 "f75f43b5627589dfe12ebf3dd7c4728bf0a1369f3915100f4aeecd9e47655b1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.2/8kno-linux-arm64.tar.gz"
      sha256 "1a103cd70791a8023b1a91d68fbf3dcec4b3ee876d5e8e824933c0bc05b8fc8d"
    else
      url "https://github.com/8kno/homebrew-tap/releases/download/v0.1.2/8kno-linux-x64.tar.gz"
      sha256 "5108d10f9cbaeea0c7634468cfe87031496dbcefa8ab4e34dd599ac325b68a06"
    end
  end

  def install
    bin.install "8kno"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/8kno --version")
  end
end
