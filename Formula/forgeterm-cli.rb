class ForgetermCli < Formula
  desc "CLI tool for ForgeTerm - open projects, send notifications, list recent projects"
  homepage "https://github.com/ncamaa/forgeterm"
  url "https://github.com/ncamaa/forgeterm/releases/download/v0.17.0/forgeterm-cli.sh"
  sha256 "f73c97358d063c709bac8619159d375bb27c4e4d0b0cdbbf8219b707954c7c3e"
  version "0.17.0"
  license "MIT"

  def install
    bin.install "forgeterm-cli.sh" => "forgeterm"
    bin.install_symlink "forgeterm" => "ft"
  end

  test do
    assert_match "forgeterm", shell_output("#{bin}/forgeterm --version")
  end
end
