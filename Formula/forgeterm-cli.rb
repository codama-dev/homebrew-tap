class ForgetermCli < Formula
  desc "CLI tool for ForgeTerm - open projects, send notifications, list recent projects"
  homepage "https://github.com/ncamaa/forgeterm"
  url "https://github.com/ncamaa/forgeterm/releases/download/v0.23.0/forgeterm-cli.sh"
  sha256 "6607983004a0382a9904e5270fde980f41abad8ba40ac3832ca94433245d4739"
  version "0.23.0"
  license "MIT"

  def install
    bin.install "forgeterm-cli.sh" => "forgeterm"
    bin.install_symlink "forgeterm" => "ft"
  end

  test do
    assert_match "forgeterm", shell_output("#{bin}/forgeterm --version")
  end
end
