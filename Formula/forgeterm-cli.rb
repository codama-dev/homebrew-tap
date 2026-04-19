class ForgetermCli < Formula
  desc "CLI tool for ForgeTerm - open projects, send notifications, list recent projects"
  homepage "https://github.com/ncamaa/forgeterm"
  url "https://github.com/ncamaa/forgeterm/releases/download/v0.16.1/forgeterm-cli.sh"
  sha256 "d87be619e9c09879c323ab4f4ea4a2faa1c8a991f2811b3c1031ff784cfc149a"
  version "0.16.1"
  license "MIT"

  def install
    bin.install "forgeterm-cli.sh" => "forgeterm"
    bin.install_symlink "forgeterm" => "ft"
  end

  test do
    assert_match "forgeterm", shell_output("#{bin}/forgeterm --version")
  end
end
