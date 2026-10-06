cask "fluent" do
  version "2.1.0"
  sha256 "5c3e1556f5ec39945145845d8f5dcff47e4f39d1284a9bd2cebb6575e246c158"

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
