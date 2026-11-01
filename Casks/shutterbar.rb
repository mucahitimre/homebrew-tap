cask "shutterbar" do
  version "0.4.0"
  sha256 "5d64a8c2f91ed60f14402f055ac040f502e52d3ee90e67cfd4b528e9b16eecdc"

  url "https://github.com/mucahitimre/Shutterbar/releases/download/v#{version}/Shutterbar-#{version}.dmg"
  name "Shutterbar"
  desc "ShareX-style region screenshots with clipboard copy and after-capture tasks"
  homepage "https://github.com/mucahitimre/Shutterbar"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: :sonoma

  app "Shutterbar.app"

  uninstall quit: "com.mucahitimre.shutterbar"

  zap trash: [
    "~/Library/Application Scripts/com.mucahitimre.shutterbar",
    "~/Library/Containers/com.mucahitimre.shutterbar",
    "~/Library/Preferences/com.mucahitimre.shutterbar.plist",
  ]
end
