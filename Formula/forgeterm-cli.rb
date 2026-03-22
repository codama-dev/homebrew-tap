class ForgetermCli < Formula
  desc "CLI tool for ForgeTerm - open projects, send notifications, list recent projects"
  homepage "https://github.com/codama-dev/forgeterm"
  url "https://github.com/codama-dev/forgeterm/releases/download/v0.11.0/forgeterm-cli.sh"
  sha256 "a484d4439c330b59457047898f8aac7b3833697e83fd4524a757f35ddf8c66c4"
  version "0.11.0"
  license "MIT"

  def install
    bin.install "forgeterm-cli.sh" => "forgeterm"
  end

  test do
    assert_match "forgeterm", shell_output("#{bin}/forgeterm --version")
  end
end
