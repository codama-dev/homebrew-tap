cask "forgeterm" do
  version "0.23.0"
  sha256 "3679de0853c213c829ca32e3e875d09b36088ba24452d96ed04faf94eab38cf8"

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
