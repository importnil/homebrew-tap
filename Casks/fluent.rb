cask "fluent" do
  version "2.2.1"
  sha256 "04771626974a0a8de2a68a0008bc4fed79f96235dc7a75a59f0ef921d508dc3d"

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
