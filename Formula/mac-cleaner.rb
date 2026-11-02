class MacCleaner < Formula
  desc "Tiny macOS cleaner: free RAM, empty Trash, uninstall apps, find large files"
  homepage "https://github.com/chaibialaa/mac-cleaner"
  url "https://github.com/chaibialaa/mac-cleaner/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "305748745b5d73bb16e92bd289bad40c780251d7ea67befb0e7b122771881d94"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mac-cleaner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mac-cleaner --version")
  end
end
