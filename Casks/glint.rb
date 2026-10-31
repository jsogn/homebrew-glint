cask "glint" do
  version "0.7.2"
  sha256 "5293c55eb509d1a1486dd24951dc2f33efecf8909e407ba615c13c8c27382298"

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
