cask "fluent" do
  version "2.3.9"
  sha256 "44a7cefab259c2b8129c2c8634dcf349b93cda5e35257a94f1c3f9793478b16f"

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
