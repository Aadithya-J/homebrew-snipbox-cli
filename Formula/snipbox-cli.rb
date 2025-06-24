class SnipboxCli < Formula
  desc "A command-line interface for Snipbox"
  homepage "https://github.com/Aadithya-J/snipbox-cli"
  url "https://github.com/Aadithya-J/snipbox-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "27890f92ad69d683e29fd573bc7c5ca32295a0d6f5827967e6edf3e3a3eb9e99"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "snipbox"
    chmod 0755, "snipbox"
    bin.install "snipbox"
  end

  test do
    system "#{bin}/snipbox", "--version"
  end
end
