cask "forgeterm" do
  version "0.7.0"
  sha256 "7fbd372f71dde5c1fd6b0652e57653a58c1b45d61fcd89ce5771cc9b486ecde5"

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
