class Eightkno < Formula
  desc "8kno command line interface"
  homepage "https://8kno.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://raw.githubusercontent.com/8kno/homebrew-tap/main/archives/v0.1.0/8kno-darwin-arm64.tar.gz"
      sha256 "bb14ac2fefadae6e8076d775e388a0bfe5dfdc039dcb6f7106d777f22f53f8da"
    else
      url "https://raw.githubusercontent.com/8kno/homebrew-tap/main/archives/v0.1.0/8kno-darwin-x64.tar.gz"
      sha256 "fcc3f616d3baa780ca9cb6dff84fe456c75f2e11b7857ebf3e48643eea75411f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://raw.githubusercontent.com/8kno/homebrew-tap/main/archives/v0.1.0/8kno-linux-arm64.tar.gz"
      sha256 "83c56c2fac858eb209e5e5a2b0b8e9684d41f2a542ee449c51089b53c9f5899b"
    else
      url "https://raw.githubusercontent.com/8kno/homebrew-tap/main/archives/v0.1.0/8kno-linux-x64.tar.gz"
      sha256 "25cbb57708074f0625b5a83162fd21953bec01b96aaf8734dd15ae31ea33fafd"
    end
  end

  def install
    bin.install "8kno"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/8kno --version")
  end
end
