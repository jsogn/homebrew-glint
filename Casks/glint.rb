cask "glint" do
  version "0.7.6"
  sha256 "80ad8a810261a9f0a679ae9287351b53a22cab5dba0f822dfcf5c6347ffb0107"

  url "https://github.com/jsogn/Glint/releases/download/v#{version}/Glint-#{version}-macOS-arm64.dmg"
  name "Glint"
  desc "English translation overlay for Chinese input method candidates"
  homepage "https://github.com/jsogn/Glint"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Glint.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Glint.app"]
  end

  caveats <<~EOS
    This preview build is ad-hoc signed and not notarized.
    The cask removes com.apple.quarantine after installation so Gatekeeper does not block the first launch.
    Only install this experimental cask from the project-controlled Tap.
  EOS
end
