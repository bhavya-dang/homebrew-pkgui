class Pkgui < Formula
  desc "TUI to manage multiple package managers and packages installed by them"
  homepage "https://github.com/bhavya-dang/pkgui"
  url "https://github.com/bhavya-dang/pkgui/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "08ac33c6a59766e73f44e23592b84b18b18d0a06e0af44463773cca15b6b43f3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end
