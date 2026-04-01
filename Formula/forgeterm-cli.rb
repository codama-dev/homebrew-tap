class ForgetermCli < Formula
  desc "CLI tool for ForgeTerm - open projects, send notifications, list recent projects"
  homepage "https://github.com/codama-dev/forgeterm"
  url "https://github.com/codama-dev/forgeterm/releases/download/v0.14.1/forgeterm-cli.sh"
  sha256 "8020bd5c8934291d47c2e5841a84cd7ebe22fe5e2c9d15a77ae7f75ea9b60dcc"
  version "0.14.1"
  license "MIT"

  def install
    bin.install "forgeterm-cli.sh" => "forgeterm"
  end

  test do
    assert_match "forgeterm", shell_output("#{bin}/forgeterm --version")
  end
end
