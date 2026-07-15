cask "forgeterm" do
  version "0.21.0"
  sha256 "2d84c800fa0b5cf4be6b54b5916722a33032891def207a7162afe0bb0b035f7b"

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
