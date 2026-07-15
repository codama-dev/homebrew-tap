class ForgetermCli < Formula
  desc "CLI tool for ForgeTerm - open projects, send notifications, list recent projects"
  homepage "https://github.com/ncamaa/forgeterm"
  url "https://github.com/ncamaa/forgeterm/releases/download/v0.21.0/forgeterm-cli.sh"
  sha256 "c0a0f53c0b898c9c68af7ab55c27d1e8e2e8651dc29a6bd07259ead5d054eadb"
  version "0.21.0"
  license "MIT"

  def install
    bin.install "forgeterm-cli.sh" => "forgeterm"
    bin.install_symlink "forgeterm" => "ft"
  end

  test do
    assert_match "forgeterm", shell_output("#{bin}/forgeterm --version")
  end
end
