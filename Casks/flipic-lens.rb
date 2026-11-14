cask "flipic-lens" do
  version "1.0.36"
  sha256 "5ce0e50fd84cbc381748887e73f228e853ce10a75661bec16d00ef356d807d10"

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
