cask "tick" do
  version "1.0.0"
  sha256 "bfd55d5396c2cedd55c16c37be38bb04f212dc2c13f5befe740aa1e382d922a4"

  url "https://github.com/DeepanshuMishraa/tick/releases/download/v#{version}/tick.dmg"
  name "Tick"
  desc "On-device voice-to-text"
  homepage "https://github.com/DeepanshuMishraa/tick"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "tick.app"

  zap trash: [
    "~/Library/Application Support/com.dipxsy.Tick",
    "~/Library/Caches/com.dipxsy.tick",
    "~/Library/HTTPStorages/com.dipxsy.tick",
    "~/Library/Preferences/com.dipxsy.tick.plist",
  ]

  caveats <<~EOS
    Tick is not notarized yet. If macOS says it can't be opened, run:
      xattr -dr com.apple.quarantine /Applications/tick.app
  EOS
end
