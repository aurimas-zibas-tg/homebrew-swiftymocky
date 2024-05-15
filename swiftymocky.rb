class Swiftymocky < Formula
  desc "Framework for automatic mock generation. Adds a set of handy methods, simplifying testing. One of the best and most complete solutions, including generics support and much more."
  homepage "https://github.com/MakeAWishFoundation/SwiftyMocky"
  url "https://github.com/MakeAWishFoundation/SwiftyMocky/archive/refs/tags/4.2.0.tar.gz"
  sha256 "0b517fc5e92dc7a3508e16f8d4f5a63b4ca7714ca7d955dfee87eea50917c82c"
  license "MIT"

  depends_on xcode: "13.0"
  depends_on "sourcery"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/#{name}"
  end

  test do
    system "#{bin}/swiftymocky"
  end
end
