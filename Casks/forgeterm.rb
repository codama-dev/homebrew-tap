cask "forgeterm" do
  version "0.10.0"
  sha256 "3bdc10421060d8cce378b14e055229aee389260d2657e9cea249b0a404490906"

  url "https://github.com/codama-dev/forgeterm/releases/download/v#{version}/ForgeTerm-Mac-#{version}.dmg"
  name "ForgeTerm"
  desc "Terminal emulator for multi-project workflows"
  homepage "https://github.com/codama-dev/forgeterm"

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
