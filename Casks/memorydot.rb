cask "memorydot" do
  version "1.2"
  sha256 "30e8b6e2954e7abf86b844cf4eda26b6532147f0854e41f581f9f6594f53015a"

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
