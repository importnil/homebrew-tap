cask "fluent" do
  version "2.3.11"
  sha256 "de01ad370d2f0b9ec7d3b904fe3d3540347b28265b3a6e85925a8f4c95a8f466"

  url "https://fluentmac.app/download/Fluent-#{version}.dmg"
  name "Fluent"
  desc "AI assistant that works in every app"
  homepage "https://fluentmac.app/"

  livecheck do
    url "https://fluentmac.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Fluent.app"
end
