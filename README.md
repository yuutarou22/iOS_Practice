# iOS_Practice
iOSアプリ開発に慣れる。

<!-- START doctoc -->
<!-- END doctoc -->

## 参考元
以下の書籍を使用。

[たった2日でマスターできるiPhoneアプリ開発集中講座 Xcode 11　Swift 5対応 Kindle版](https://www.amazon.co.jp/dp/B081FG9J2V/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1)

---
## **iOSで最低限知ってお項目**
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

---

## **学習メモ**
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

### AppleID と Xcode
実機ビルドする場合、XcodeへAppleIDを登録する必要がある。

Xcodeに登録しているAppleIDとiPhoneに登録しているAppleIDが同じであればアプリを転送できる。

[Xcode]->[Preferences..]->[Accounts]->[+]->[AppleID]

### Team と Xcode
AppleIDの登録をしたら、Teamへの登録も必要になる。

Teamとは、複数人でアプリ開発するための仕組み。権限に応じてビルドしたり、アプリ配信を行なったりできる。

個人開発の場合特に気にしなくてもいいが、Teamを作成し設定しなければならない。

[Project]を選択->[TARGETS]を選択->[Signing&Capabilities]->[Team]で登録したアカウントがプルダウンに表示される。

### 画像の追加方法
[Assets.xcassets]を選択した状態で、ドラッグ＆ドロップすると画像が追加できる。

※ちなみに、[Assets.xcassets]は画像を管理するためのフォルダ。

### AutoLayout の5つのボタンの役割（左から順）
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

### SafeArea とは
iOS11 + Xcode9から[SafeArea]というレイアウトガイドが導入された。

切り掛け部分にレイアウトが重なると、見切れてしまう可能性があるため、どの機種でも正しく表示されるようにSafeArea内でUIパーツを配置する必要がある。

AutoLayoutを使うと、SafeArea内に配置されるので安心！

### IBOutlet とは
『Interface Builder Outlet』の略称。

『Interface Builder』は、XcodeのなかでUIを設計するツールの名称。

『Outlet』にはコンセントや差込口のような意味がある。

**@IBOutletは、Interface Builderにあるパーツとコードを連結する事を示す**キーワードのこと。

### IBAction とは
『Interface Builder Action』の略称。

**@IBActionは、Interface Builderにあるパーツでユーザによって何かのアクションが行われたときに実行するプログラムを連結するため**のキーワードのこと。

### Bundle とは
iOSでの[Bundle]クラスは、ファイルや画像を管理してくれるクラス。

取り込んだ音源などのファイル名を指定し、ファイルの場所を指定することで取得できる。

```swift
let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
```

### do-try-catch の書き方
Swiftでは、エラーが発生する可能性のあるクラスを使用する場合、エラーが表示される。

 > Call can throw, but it is not marked with 'try' and the error is not handled

例えば、AVAudioPlayerは、音源のファイルURLを間違えていると音が鳴らない。参照できない。

このような正常でない場合、アプリが落ちたりしてしまうので、例外処理として書く。

```swift
do {
  cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
} catch {
  print("シンバルエラー！")
}
```

参考：https://code-schools.com/swift-error-handler/

### Delegate とは
Delegateは、あるクラスで行いたい処理の一部を他のクラスに任せたり、任せた処理を指定したクラスに通知したりする仕組み。

- 処理を依頼するクラス（ViewController）
- 依頼する、依頼されるクラスを取り持つプロトコル（UITextFieldDelegate）
- 処理が依頼されるクラス（UITextField）

```swift
① ViewController（依頼するクラス）で、通知先を自分自身に設定する

 > inputText.delegate = self

② UITextFieldのdelegateというUITextFieldDelegateプロトコルの変数に通知先が代入される

③ ViewController（依頼するクラス）で、通知して欲しい内容（Delegateメソッド）を書く。

 > func textFieldShouldReturn () -> Bool { 通知されたら実行する処理 }

④ UITextFieldDelegate.textFieldShouldReturnで、リターンキーを押下されたことをハンドリングする。

⑤ UITextFieldへ通知し、UITextFieldは通知先(delegate)へ通知をすると、ViewControllerのデェがてメソッドが実行される。
```

### クロージャとは
1. まとめた処理をオブジェクトとして扱う
1. イベント発生時に一連の処理を実行することが可能（delegateと同様）
1. Appleから提供されているクラスには、delegateを利用して実装するもの、クロージャとして処理を実行できるものの2パターンがある
1. 戻り値がない場合は「->」と「return」を省略可

基本的な構文
```swift
{(引数:引数の型) -> (戻り値の型) in
  処理
  return 戻り値
}
```

### NavigationController とは
プロジェクト作成直後のstoryboardは、ViewControllerクラスをデフォルトで使用している。

そこでNavigationControllerに変更することで、階層的な画面遷移を管理することが可能になる。

Navigation Barや「戻る（Back）」ボタンも自動で表示してくれる機能を持つクラス。

#### 設定の手順
```
1. storyboardの一番上の階層「View Controller Scene」を選択
2. メニューバー > Editor > Embed In > Navigation Controller
3. すると、Navigation Barが追加される
```

#### NavigationController の右側のボタンを設定する手順
Bar Button Itemは、ToolbarやNavigation Barにボタンを表示する時に使うUIパーツ。

```
1. 画面右上の「+」をクリックし、「Item」と検索する
2. 「Bar Button Item」を、NavigationControllerの右側にドラッグする
3. 青枠が表示されるので、そこにドロップする
```

### Segue とは
ViewControllerの移動先を設定できる。

横にスライドして画面遷移したり、遷移先の画面を下からオーバラップするように表示させたりと表現方法も設定可能。

### Segue で画面遷移を設定する
- StoryboardでViewControllerを追加する
- ViewControllerファイルを追加
- Storyboardに追加したViewControllerのCustomClassに、追加したViewControllerを選択して紐付ける

参考：https://i-app-tec.com/ios/tap_gesture.html

参考：https://ja.stackoverflow.com/questions/4248/storyboard%E3%81%AEcustom-class%E3%81%AB%E8%87%AA%E4%BD%9C%E3%81%AE%E3%82%AF%E3%83%A9%E3%82%B9%E3%81%8C%E8%A1%A8%E7%A4%BA%E3%81%95%E3%82%8C%E3%81%AA%E3%81%84

### プレビュー機能
[ViewController]と[Storyboard]を紐づけるときに[assistant]を使うけど、その下にある[Preview]を使えば同時に複数端末のイメージ画面を確認することができる。

参考：https://pg-happy.jp/xcode-simulator-preview.html

---

## **こんな時は（トラブルシューティング）**
### Assistant を開いても、ViewControllerが表示されない。
何かの手違いでViewControllerが開かないようになっていた場合は、上部にあるベン図[Top Level Objects]みたいなところでViewControllerを選択すると解決する。

### Xcodeの予測候補（入力補完）が表示されない。
- メニューバーの Xcode > Preferences > Text Editingへ移動する
- [Suggest completion while typing]のチェックマークを外す
- [Quit Xcode]で一度Xcodeを終了し、もう一度起動する
- 再度メニューバーのXcode > Preferences > Text Editingへ移動する
- [Suggest completion while typing]にチェックを入れる

参考：https://orangelog.site/miscellaneous/xcode-autocomplete-method/

### コンテンツを追加したら、エラーが起きてビルドできない。
[Multiple commands produce '/Users/ユーザ名/...省略.../Info.plist']みたいなのだったら、

Runner > Build Phases > Copy Bundle Resources

Copy Bundle Resourcesに記載されているInfo.plistを削除する。

僕の場合は同じリソースの参照が2つあり、重複してしまっていた。

参考：https://qiita.com/121a/items/b0b5ee053059e199bef4
