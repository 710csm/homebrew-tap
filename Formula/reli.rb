class Reli < Formula
  desc "AI-powered Swift refactoring linter for iOS projects"
  homepage "https://github.com/710csm/Reli"
  url "https://github.com/710csm/Reli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a8b3359e9482f72271a1e541bb7433eb019299366b40e3a770d0b2de530b2ef9"
  license "MIT"

  depends_on :macos
  depends_on "swift" => :build

  def install
    system "swift", "build", "--configuration", "release"
    bin.install ".build/release/reli"
  end

  test do
    system "#{bin}/reli", "--help"
  end
end
