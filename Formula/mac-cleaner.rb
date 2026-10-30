class MacCleaner < Formula
  desc "Tiny macOS cleaner: free RAM, empty Trash, uninstall apps, find large files"
  homepage "https://github.com/chaibialaa/mac-cleaner"
  url "https://github.com/chaibialaa/mac-cleaner/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e2c173224f759d984261f95fee572a19ed8dc87736af16593b8c19cde59fb1fc"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mac-cleaner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mac-cleaner --version")
  end
end
