class MacCleaner < Formula
  desc "Tiny macOS cleaner: RAM, Trash, apps, large files, caches, duplicates"
  homepage "https://github.com/chaibialaa/mac-cleaner"
  url "https://github.com/chaibialaa/mac-cleaner/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "d5093fc4ce833a1e09fd824e766400aa085448e5ed38130e5139430e0be1fdca"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mac-cleaner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mac-cleaner --version")
  end
end
