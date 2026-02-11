class Reli < Formula
  desc "AI-powered Swift refactoring linter for iOS projects"
  homepage "https://github.com/710csm/Reli"
  url "https://github.com/710csm/Reli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e7027e73c82d991c651e3045b36a7865c38f26645c85b49aaa00f2c2fe5fb000"
  license "MIT"

  depends_on :macos
  
  def install
    ENV["HOME"] = buildpath
    system "xcrun", "swift", "build", "--configuration", "release", "--disable-sandbox"
    bin.install ".build/release/reli"
  end

  test do
    system "#{bin}/reli", "--help"
  end
end
