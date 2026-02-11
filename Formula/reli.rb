class Reli < Formula
  desc "AI-powered Swift refactoring linter for iOS projects"
  homepage "https://github.com/710csm/Reli"
  url "https://github.com/710csm/Reli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "cac6c80874441fd088946af9b58686f6bdd3c1b689dabf60d062f4473519e5ea"
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
