cask "flipic-lens" do
  version "1.0.68"
  sha256 "5d1af892ca27dffb2a4be6805c004dca6c88b774b5b39328912ef02e48e3cc4d"

  url "https://github.com/xmasdong/flipic/releases/download/v#{version}/Flipic.dmg"
  name "Flipic Lens"
  desc "Photo viewer and culling tool for photographers"
  homepage "https://flipic.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Flipic Lens.app"

  zap trash: [
    "~/Library/Application Support/Flipic",
    "~/Library/Caches/com.xmasdong.photoview",
    "~/Library/Caches/Flipic",
    "~/Library/Preferences/com.xmasdong.photoview.plist",
  ]
end
