cask "macshot" do
  version "0.3.2"
  sha256 "ecf28e0625b875ad5d9cf8963d17f4e6d120d01cefdc6c37b415de3985ec1080"

  url "https://github.com/mucahitimre/MacShot/releases/download/v#{version}/MacShot-#{version}.dmg"
  name "MacShot"
  desc "ShareX-style region screenshots with clipboard copy and after-capture tasks"
  homepage "https://github.com/mucahitimre/MacShot"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: :sonoma

  app "MacShot.app"

  uninstall quit: "com.mucahitimre.macshot"

  zap trash: [
    "~/Library/Application Scripts/com.mucahitimre.macshot",
    "~/Library/Containers/com.mucahitimre.macshot",
    "~/Library/Preferences/com.mucahitimre.macshot.plist",
  ]
end
