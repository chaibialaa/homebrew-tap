class MacCleaner < Formula
  desc "Tiny macOS cleaner: free RAM, empty Trash, uninstall apps, find large files"
  homepage "https://github.com/chaibialaa/mac-cleaner"
  url "https://github.com/chaibialaa/mac-cleaner/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "47302470edf6dde3a2849ed6a11e8d8b560e3b9494ef4860e4364a7bba818432"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mac-cleaner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mac-cleaner --version")
  end
end
