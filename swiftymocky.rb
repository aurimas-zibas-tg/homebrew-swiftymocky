class Swiftymocky < Formula
  desc "Framework for automatic mock generation. Adds a set of handy methods, simplifying testing. One of the best and most complete solutions, including generics support and much more."
  homepage "https://github.com/MakeAWishFoundation/SwiftyMocky"
  url "https://github.com/MakeAWishFoundation/SwiftyMocky/archive/refs/tags/4.2.0.tar.gz"
  sha256 "7966443004dc04ad6759a152c34ce3d049c69d7055d51a5c813e3a65667dfa1e"
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
