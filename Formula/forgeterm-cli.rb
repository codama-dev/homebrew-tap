class ForgetermCli < Formula
  desc "CLI tool for ForgeTerm - open projects, send notifications, list recent projects"
  homepage "https://github.com/codama-dev/forgeterm"
  url "https://github.com/codama-dev/forgeterm/releases/download/v0.7.0/forgeterm-cli.sh"
  sha256 "1f943a47c0afb2e846cd8ab63aaa45db568bf555364716a6238b1ce5ce33ef5c"
  version "0.7.0"
  license "MIT"

  def install
    bin.install "forgeterm-cli.sh" => "forgeterm"
  end

  test do
    assert_match "forgeterm", shell_output("#{bin}/forgeterm --version")
  end
end
