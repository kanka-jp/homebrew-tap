cask "konnyaku" do
  version "0.3.0"
  sha256 "26fd15c3db7334c68bc714daf7d499687cef408cfb07dd120f2fd0489b06b5ca"

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
