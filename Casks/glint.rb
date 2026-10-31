cask "glint" do
  version "0.7.1"
  sha256 "fe268b212e4f26c9c771a11780dfcc646a6d615338549d4bcc46ad3a7fe9e1fd"

  url "https://github.com/jsogn/Glint/releases/download/v#{version}/Glint-#{version}-macOS-arm64.dmg"
  name "Glint"
  desc "English translation overlay for Chinese input method candidates"
  homepage "https://github.com/jsogn/Glint"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Glint.app"

  caveats <<~EOS
    This preview build is ad-hoc signed and not notarized.
    macOS may require you to allow Glint in System Settings > Privacy & Security before its first launch.
  EOS
end
