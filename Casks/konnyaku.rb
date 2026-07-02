cask "konnyaku" do
  version "0.2.0"
  sha256 "76cc5f83dcde96387e3ad9ff30619e89ee109443ff63b46428b499625b0e8e18"

  url "https://github.com/kanka-jp/konnyaku/releases/download/v#{version}/Konnyaku-v#{version}.zip"
  name "Konnyaku"
  desc "リアルタイム音声翻訳字幕オーバーレイ"
  homepage "https://github.com/kanka-jp/konnyaku"

  depends_on macos: :tahoe

  app "Konnyaku.app"

  caveats <<~EOS
    ad-hoc 署名のため、初回起動時に Gatekeeper にブロックされます。以下のいずれかで解除してください:

    1. quarantine 属性を解除する:
       xattr -dr com.apple.quarantine /Applications/Konnyaku.app

    2. システム設定 → プライバシーとセキュリティ → 下部の「このまま開く」で許可する
       (macOS Sequoia 以降、右クリック→開く のショートカットは廃止されています)
  EOS
end
