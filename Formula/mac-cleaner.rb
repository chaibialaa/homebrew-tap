class MacCleaner < Formula
  desc "Tiny macOS cleaner: free RAM, empty Trash, uninstall apps, find large files"
  homepage "https://github.com/chaibialaa/mac-cleaner"
  url "https://github.com/chaibialaa/mac-cleaner/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "fb5702727eb40ad4807d3107c60b5e26c39881c0319e5dac8305278713903f5f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mac-cleaner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mac-cleaner --version")
  end
end
