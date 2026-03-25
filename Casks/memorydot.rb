cask "memorydot" do
  version "1.0"
  sha256 "9d143685b675f21fc4f0b1368be33b493660ec737447c9ab375b66c2d9a24398"

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
