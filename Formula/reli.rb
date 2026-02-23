class Reli < Formula
  desc "AI-powered Swift refactoring linter for iOS projects"
  homepage "https://github.com/710csm/Reli"
  url "https://github.com/710csm/Reli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "fce518adc51bd37ed0b5b91639b5190b447cf2856aa0968e794dc66bc3db5ffd"
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
