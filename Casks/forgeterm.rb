cask "forgeterm" do
  version "0.16.1"
  sha256 "f2daeb1c58988edf61f7320c8bead09c43c713f37617f9f2f14a131ce834efca"

  url "https://github.com/ncamaa/forgeterm/releases/download/v#{version}/ForgeTerm-Mac-#{version}.dmg"
  name "ForgeTerm"
  desc "Terminal emulator for multi-project workflows"
  homepage "https://github.com/ncamaa/forgeterm"

  app "ForgeTerm.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/ForgeTerm.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/ForgeTerm",
    "~/Library/Preferences/com.forgeterm.app.plist",
  ]
end
