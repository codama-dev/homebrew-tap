class ForgetermCli < Formula
  desc "CLI tool for ForgeTerm - open projects, send notifications, list recent projects"
  homepage "https://github.com/codama-dev/forgeterm"
  url "https://github.com/codama-dev/forgeterm/releases/download/v0.15.0/forgeterm-cli.sh"
  sha256 "f3707c712473682dea7d1a8c8c4e953d48cee942c9fbe6dbb8fc315d829dae8a"
  version "0.15.0"
  license "MIT"

  def install
    bin.install "forgeterm-cli.sh" => "forgeterm"
    bin.install_symlink "forgeterm" => "ft"
  end

  test do
    assert_match "forgeterm", shell_output("#{bin}/forgeterm --version")
  end
end
