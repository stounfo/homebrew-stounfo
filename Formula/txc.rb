class Txc < Formula
  desc "A simple tool for converting text between different formats."
  homepage "https://github.com/stounfo/txc"
  version "0.1.1"
  license "WTFPL"
  url "https://github.com/stounfo/txc/archive/refs/tags/v0.1.1.zip"
  sha256 "8dc4a8eef8e6ecd76b28f8e2851349e717626b7ffdd0dc851559e795f8d8040c"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/txc", "--version"
  end
end
