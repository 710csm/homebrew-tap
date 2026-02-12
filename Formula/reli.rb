class Reli < Formula
  desc "AI-powered Swift refactoring linter for iOS projects"
  homepage "https://github.com/710csm/Reli"
  url "https://github.com/710csm/Reli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "6b90c3726d60df35374faa501cefa7230ade59d7a5d76a5ed4a7780476e6bc07"
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
