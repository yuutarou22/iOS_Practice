# iOS_Practice
iOSアプリ開発に慣れる。

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
<details>
<summary>Table of Contents</summary>

- [参考元](#%E5%8F%82%E8%80%83%E5%85%83)
- [**iOSで最低限知ってお項目**](#ios%E3%81%A7%E6%9C%80%E4%BD%8E%E9%99%90%E7%9F%A5%E3%81%A3%E3%81%A6%E3%81%8A%E9%A0%85%E7%9B%AE)
  - [WWDC](#wwdc)
  - [Appleの支払い手数料](#apple%E3%81%AE%E6%94%AF%E6%89%95%E3%81%84%E6%89%8B%E6%95%B0%E6%96%99)
  - [ユーザへの課金方法](#%E3%83%A6%E3%83%BC%E3%82%B6%E3%81%B8%E3%81%AE%E8%AA%B2%E9%87%91%E6%96%B9%E6%B3%95)
  - [Swift](#swift)
- [**学習メモ**](#%E5%AD%A6%E7%BF%92%E3%83%A1%E3%83%A2)
  - [プロジェクト作成時の項目](#%E3%83%97%E3%83%AD%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E4%BD%9C%E6%88%90%E6%99%82%E3%81%AE%E9%A0%85%E7%9B%AE)
  - [AutoLayout](#autolayout)
  - [AppleID と Xcode](#appleid-%E3%81%A8-xcode)
  - [Team と Xcode](#team-%E3%81%A8-xcode)
  - [画像の追加方法](#%E7%94%BB%E5%83%8F%E3%81%AE%E8%BF%BD%E5%8A%A0%E6%96%B9%E6%B3%95)
  - [AutoLayout の5つのボタンの役割（左から順）](#autolayout-%E3%81%AE5%E3%81%A4%E3%81%AE%E3%83%9C%E3%82%BF%E3%83%B3%E3%81%AE%E5%BD%B9%E5%89%B2%E5%B7%A6%E3%81%8B%E3%82%89%E9%A0%86)
  - [SafeArea とは](#safearea-%E3%81%A8%E3%81%AF)
  - [IBOutlet とは](#iboutlet-%E3%81%A8%E3%81%AF)
  - [IBAction とは](#ibaction-%E3%81%A8%E3%81%AF)
  - [Bundle とは](#bundle-%E3%81%A8%E3%81%AF)
  - [do-try-catch の書き方](#do-try-catch-%E3%81%AE%E6%9B%B8%E3%81%8D%E6%96%B9)
  - [Delegate とは](#delegate-%E3%81%A8%E3%81%AF)
  - [クロージャとは](#%E3%82%AF%E3%83%AD%E3%83%BC%E3%82%B8%E3%83%A3%E3%81%A8%E3%81%AF)
  - [NavigationController とは](#navigationcontroller-%E3%81%A8%E3%81%AF)
    - [設定の手順](#%E8%A8%AD%E5%AE%9A%E3%81%AE%E6%89%8B%E9%A0%86)
    - [NavigationController の右側のボタンを設定する手順](#navigationcontroller-%E3%81%AE%E5%8F%B3%E5%81%B4%E3%81%AE%E3%83%9C%E3%82%BF%E3%83%B3%E3%82%92%E8%A8%AD%E5%AE%9A%E3%81%99%E3%82%8B%E6%89%8B%E9%A0%86)
  - [Segue とは](#segue-%E3%81%A8%E3%81%AF)
  - [Segue で画面遷移を設定する](#segue-%E3%81%A7%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E3%82%92%E8%A8%AD%E5%AE%9A%E3%81%99%E3%82%8B)
  - [プレビュー機能](#%E3%83%97%E3%83%AC%E3%83%93%E3%83%A5%E3%83%BC%E6%A9%9F%E8%83%BD)
  - [Timer クラス](#timer-%E3%82%AF%E3%83%A9%E3%82%B9)
  - [UserDefault とは](#userdefault-%E3%81%A8%E3%81%AF)
  - [メソッドの定義方法](#%E3%83%A1%E3%82%BD%E3%83%83%E3%83%89%E3%81%AE%E5%AE%9A%E7%BE%A9%E6%96%B9%E6%B3%95)
  - [「@objc」とは](#objc%E3%81%A8%E3%81%AF)
- [**こんな時は（トラブルシューティング）**](#%E3%81%93%E3%82%93%E3%81%AA%E6%99%82%E3%81%AF%E3%83%88%E3%83%A9%E3%83%96%E3%83%AB%E3%82%B7%E3%83%A5%E3%83%BC%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0)
  - [Assistant を開いても、ViewControllerが表示されない。](#assistant-%E3%82%92%E9%96%8B%E3%81%84%E3%81%A6%E3%82%82viewcontroller%E3%81%8C%E8%A1%A8%E7%A4%BA%E3%81%95%E3%82%8C%E3%81%AA%E3%81%84)
  - [Xcodeが提供しているメソッドやクラスを使う時に、どんな引数を設定すれば良いか調べる](#xcode%E3%81%8C%E6%8F%90%E4%BE%9B%E3%81%97%E3%81%A6%E3%81%84%E3%82%8B%E3%83%A1%E3%82%BD%E3%83%83%E3%83%89%E3%82%84%E3%82%AF%E3%83%A9%E3%82%B9%E3%82%92%E4%BD%BF%E3%81%86%E6%99%82%E3%81%AB%E3%81%A9%E3%82%93%E3%81%AA%E5%BC%95%E6%95%B0%E3%82%92%E8%A8%AD%E5%AE%9A%E3%81%99%E3%82%8C%E3%81%B0%E8%89%AF%E3%81%84%E3%81%8B%E8%AA%BF%E3%81%B9%E3%82%8B)
  - [Xcodeの予測候補（入力補完）が表示されない。](#xcode%E3%81%AE%E4%BA%88%E6%B8%AC%E5%80%99%E8%A3%9C%E5%85%A5%E5%8A%9B%E8%A3%9C%E5%AE%8C%E3%81%8C%E8%A1%A8%E7%A4%BA%E3%81%95%E3%82%8C%E3%81%AA%E3%81%84)
  - [コンテンツを追加したら、エラーが起きてビルドできない。](#%E3%82%B3%E3%83%B3%E3%83%86%E3%83%B3%E3%83%84%E3%82%92%E8%BF%BD%E5%8A%A0%E3%81%97%E3%81%9F%E3%82%89%E3%82%A8%E3%83%A9%E3%83%BC%E3%81%8C%E8%B5%B7%E3%81%8D%E3%81%A6%E3%83%93%E3%83%AB%E3%83%89%E3%81%A7%E3%81%8D%E3%81%AA%E3%81%84)

</details>
<!-- END doctoc generated TOC please keep comment here to allow auto update -->

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

### Timer クラス
指定した時間になんらかの処理を実行したり、定期的に繰り返し処理を実行することが可能になる。

クイズゲームの制限時間などに応用できる。

```swift
var timer : Timer?
```

### UserDefault とは
アプリを停止して再起動した時、UserDefaultを利用して保存していた値を利用する。

AndroidでいうSharedPreferencesのようなもの。

データを保存して復元できることを「永続化」と呼ぶ。

キーと値を指定することで、キーを使って値を取得したり記録することが可能。

```swift
// 設定値を扱うキーを設定
let settingKey = "timer_value"

// UserDefaultsのインスタンス生成
let settings = UserDefaults.standard

// UserDefaultsに初期値を設定
settings.register(defaults: [settingKey:10])
```

### メソッドの定義方法
①以下は、引数が1つ、戻り値がInt型のメソッド。

```swift
func addFunction(num: Int) -> Int {
  return num + 10
}
```

②引数が複数あるメソッドを呼び出す場合、2つ目以降はラベルが必要になる。

```swift
func sumFunction(num1: Int, num2: Int) -> Int {
  return num1 + num2
}

sumFunction(10, num2: 20) // -> 30
```

③ラベルを書くのがめんどい時は、「_」で省略可能。

```swift
func subFunction(num1: Int, _ num2: Int) -> Int {
  return num1 + num2
}

sumFunction(100, 20) // -> 80
```

### 「@objc」とは

タイマー開始処理である「scheduledTimer」の引数「#selector」で指定する際に必要になる。

※Objective-Cでは、メソッドの頭に「#」をつける

Timerクラスは、Objective-Cで書かれたクラスのため、Objective-CからSwift4以降のクラスを参照する場合は「@objc」と明示的に記述する必要がある。

### Swift（ソースコード）上で画面遷移を実装する方法

1. Storyboardを開く
2. Segue（矢印）を選択した状態にする
3. IdentifierにIDを設定する
4. 下記のコードを書く

```swift
performSegue(withIdentifier: "goSetting", sender: nil)
```

### 「_」に代入するのは？
```swift
_ = displayUpdate()
```
displayUpdateメソッドが戻り値を返しても、特に使う場面がない想定。

そこで何も使わない変数があると警告を出すので、受け皿的な立ち位置で「_」を使う。

### for文
```swift
/// 構文
for 変数 in 開始値...終了値 {

}

/// 例
for row in 0..<settingArray.count {
  if settingArray[row] == timerValue {
    //~~~~処理~~~~
  }
}
```

### PickerView の DataSource とは
DataSourceを使うことで、UIパーツとデータのやりとりを行うことが可能。

`numberOfComponents`、`pickerView`の２つを使うことで行列の数を設定することができる。


---

## **こんな時は（トラブルシューティング）**
### Assistant を開いても、ViewControllerが表示されない。
何かの手違いでViewControllerが開かないようになっていた場合は、上部にあるベン図[Top Level Objects]みたいなところでViewControllerを選択すると解決する。

### Xcodeが提供しているメソッドやクラスを使う時に、どんな引数を設定すれば良いか調べる

1. メソッド名にカーソルをあて、「option」キーを押すと「？」マークが表示される
2. 「？」をクリックすると、引数を調べることが可能

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
