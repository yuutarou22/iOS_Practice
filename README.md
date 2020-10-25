# iOS_Practice
iOSアプリ開発に慣れる。

## 参考元
以下の書籍を使用。

[たった2日でマスターできるiPhoneアプリ開発集中講座 Xcode 11　Swift 5対応 Kindle版](https://www.amazon.co.jp/dp/B081FG9J2V/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1)

## iOSで最低限知ってお項目
### WWDC
Appleが毎年開催している開発者向けイベント。

WWDCではAppleの新製品やOSの新機能、市場動向などが公開されアプリ開発者にとっては関心度が高いイベント。

### Appleの支払い手数料
AppleStoreで販売した売り上げのうち30%をAppleが手数料として差し引く。高い。

残りの70%が開発者への支払額になる。（例：120円の売り上げがあった場合、84円が振り込まれる）

※ちなみに『note』は手数料対策として、有料記事の購入はWebへ遷移させて行わせるようになっている。

### ユーザへの課金方法
- 有料ダウンロード
  - アプリダウンロード時に課金する方法。買い切り。アカウントに紐づいているので再インストール時は無料。
- 広告
  - アプリ内に表示する広告で収益を出す。いろんな会社が広告配信サービスを提供している。
- In App Purchase（アプリ内課金）
  - 消耗型：アプリ実行に伴い消費される。消化アイテムなど。
  - 非消耗型：1度購入すれば全てのデバイスで使用可能。電子書籍など。
  - 自動更新購読：期間を決めて販売、自動で更新。新聞、雑誌など。
  - 非更新購読：期間を決めて販売、自動で更新されない。１ヶ月購読など。

### Swift
[Apple公式サイト](https://swift.org/about/)では **『Swiftは、安全性、パフォーマンス、およびソフトウェアデザインパターンへの最新のアプローチを使用して構築された汎用プログラミング言語です。』** と紹介されている。

## メモ
### プロジェクト作成時の項目
- ProductName
  - プロジェクト名。そのまんま。
- Team
  - Xcodeに登録済みのAppleIDを選択する。実機ビルドする際は必須になる。シミュレータであれば不要。
- OrganizationName
  - 会社名、組織名を入力する。自由に入力してOK。
- OrganizationIdentifier
  - ProductNameと組み合わせて、BundleIdentifierに設定されるもの。
- BundleIdentifier
  - ProductNameとOrganizationIdentifierを組み合わせて自動生成するため、入力不可。
  - 世界中のアプリのなかでユニーク（一意）にする必要がある。
- Language
  - 言語を選べる。新規でObCを選ぶのは頭おかしい。
- UserInterface
  - 開発環境を選択する。SwiftUIとStoryboardが選べる。

### AutoLayout
iPhoneやiPadには様々な画面サイズがあるので、制約に従って自動でレイアウトする仕組みが重要になる。それ。

### AppleIDとXcode
実機ビルドする場合、XcodeへAppleIDを登録する必要がある。

Xcodeに登録しているAppleIDとiPhoneに登録しているAppleIDが同じであればアプリを転送できる。

[Xcode]->[Preferences..]->[Accounts]->[+]->[AppleID]

### TeamとXcode
AppleIDの登録をしたら、Teamへの登録も必要になる。

Teamとは、複数人でアプリ開発するための仕組み。権限に応じてビルドしたり、アプリ配信を行なったりできる。

個人開発の場合特に気にしなくてもいいが、Teamを作成し設定しなければならない。

[Project]を選択->[TARGETS]を選択->[Signing&Capabilities]->[Team]で登録したアカウントがプルダウンに表示される。

### 画像の追加方法
[Assets.xcassets]を選択した状態で、ドラッグ＆ドロップすると画像が追加できる。

※ちなみに、[Assets.xcassets]は画像を管理するためのフォルダ。

### AutoLayoutの5つのボタンの役割（左から順）
- Update Frames（ぐるりん）
  - AutoLayoutの値と実際の表示差異を解消する
- Align（揃え）
  - パーツを中央や左揃えなどに配置したりする制約を設定
- Add New Constraints（四角）
  - パーツの高さや横幅、余白などの制約を設定
  - [Constrain to margins]のチェックを外せば、画面の余白を考慮せず入力値がそのまま余白になる。
    - チェックを入れていれば、デフォルトで20pxの余白が確保される。
- Resolve Auto Layout Issues（三角）
  - 不足している制約を自動的に設定したり、パーツを制約通りに表示する機能などがある
- Embed in Stack
  - パーツにまとめて制約を設定する場合に利用する

### SafeArea
iOS11 + Xcode9から[SafeArea]というレイアウトガイドが導入された。

切り掛け部分にレイアウトが重なると、見切れてしまう可能性があるため、どの機種でも正しく表示されるようにSafeArea内でUIパーツを配置する必要がある。

AutoLayoutを使うと、SafeArea内に配置されるので安心！

### IBOutletとは
『Interface Builder Outlet』の略称。

『Interface Builder』は、XcodeのなかでUIを設計するツールの名称。

『Outlet』にはコンセントや差込口のような意味がある。

**@IBOutletは、Interface Builderにあるパーツとコードを連結する事を示す**キーワードのこと。

### IBActionとは
『Interface Builder Action』の略称。

**@IBActionは、Interface Builderにあるパーツでユーザによって何かのアクションが行われたときに実行するプログラムを連結するため**のキーワードのこと。


## こんな時は
### Assistantを開いても、ViewControllerが表示されない。
何かの手違いでViewControllerが開かないようになっていた場合は、上部にあるベン図[Top Level Objects]みたいなところでViewControllerを選択すると解決する。

