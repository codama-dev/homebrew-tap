cask "forgeterm" do
  version "0.28.0"
  sha256 "adf9c277ec5bf26b821712eb0f420029d50a4d04fa857b6ec289ce97a6fb5dd6"

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
