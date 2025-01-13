class Txc < Formula
  desc "A simple tool for converting text between different formats."
  homepage "https://github.com/stounfo/txc"
  version "0.1.0"
  license "WTFPL"
  url "https://github.com/stounfo/txc/archive/refs/tags/v0.1.0.zip"
  sha256 "d04f04ab9c9fcbef56452f658870076257cd1497b1c2d046702eff86d923ed7b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/txc", "--version"
  end
end
