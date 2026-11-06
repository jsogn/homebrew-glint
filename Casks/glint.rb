cask "glint" do
  version "0.8.1"
  sha256 "1aed73f81531edf5018f08db1eedee2c9e6a99cee4eb1cf67066853339959f4e"

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
