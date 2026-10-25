cask "fluent" do
  version "2.3.0"
  sha256 "3069f24368222f7371dabca4dcef753b5ae4540783d5d9ec3c37b2a1659450fd"

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
