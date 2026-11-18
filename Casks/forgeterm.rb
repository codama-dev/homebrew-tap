cask "forgeterm" do
  version "0.28.1"
  sha256 "ab592e1026644db08212d9e0de44ca613a2b48c08e417bb0e74f985c601665a3"

  url "https://github.com/ncamaa/forgeterm/releases/download/v#{version}/ForgeTerm-Mac-#{version}.dmg"
  name "ForgeTerm"
  desc "Terminal emulator for multi-project workflows"
  homepage "https://github.com/ncamaa/forgeterm"

  depends_on :macos

  app "ForgeTerm.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/ForgeTerm.app"]
  end

  zap trash: [
    "~/Library/Application Support/ForgeTerm",
    "~/Library/Preferences/com.forgeterm.app.plist",
  ]
end
