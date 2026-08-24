cask "memorydot" do
  version "1.3"
  sha256 "76c0ad10f44fbc950ea65342b516d322379ce6037d4d9f1b3e5b6e0391849ac1"

  url "https://github.com/nadimkobeissi/memorydot/releases/download/v#{version}/MemoryDot-#{version}.dmg",
      verified: "github.com/nadimkobeissi/memorydot"

  name "MemoryDot"
  desc "macOS menu bar app showing system memory pressure"
  homepage "https://github.com/nadimkobeissi/memorydot"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MemoryDot.app"

  zap trash: [
    "~/Library/Preferences/com.symbolicsoft.memorydot.plist",
  ]
end
