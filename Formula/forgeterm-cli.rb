class ForgetermCli < Formula
  desc "CLI tool for ForgeTerm - open projects, send notifications, list recent projects"
  homepage "https://github.com/ncamaa/forgeterm"
  url "https://github.com/ncamaa/forgeterm/releases/download/v0.27.0/forgeterm-cli.sh"
  sha256 "8e0a3a37ba06fa56c81fa366ec79ff4f44016f6c79dda8832b07229a4058806f"
  version "0.27.0"
  license "MIT"

  def install
    bin.install "forgeterm-cli.sh" => "forgeterm"
    bin.install_symlink "forgeterm" => "ft"
  end

  test do
    assert_match "forgeterm", shell_output("#{bin}/forgeterm --version")
  end
end
