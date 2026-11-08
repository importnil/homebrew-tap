cask "fluent" do
  version "2.3.6"
  sha256 "40b20d053b7c6117ee0c776055ca24f62789eb9090b35a19f690509e77751fc4"

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
