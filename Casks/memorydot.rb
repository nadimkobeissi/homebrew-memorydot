cask "memorydot" do
  version "1.0"
  sha256 "38e9a4a6ae080465df331fea1905cb9adeadaf4b71f2eaa6f9ebdd42a9844ebb"

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
