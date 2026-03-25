cask "memorydot" do
  version "1.1"
  sha256 "b065ce59f6267dd9e997cd4e82364d724ad3b9fa537557fbdd88a006b75a45f1"

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
