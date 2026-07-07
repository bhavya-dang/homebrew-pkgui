class Pkgui < Formula
  desc "TUI to manage multiple package managers and packages installed by them"
  homepage "https://github.com/bhavya-dang/pkgui"
  url "https://github.com/bhavya-dang/pkgui/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "de3be059fea62a1063e10f616f4c9eb0dfc544bbffe9470be047d3b2ca4cbe20"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
