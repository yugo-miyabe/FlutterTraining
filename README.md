# Flutterの勉強

長いので、基本的なところをピックアップしています。

概要|	Androidでは？|	Flutterでは？
|-|-|-|
View | View |	Widget
Viewの更新 |	Viewを直接変更 | Widgetは不変でありStateを更新
レイアウト |	XML	| Widget treeを組む
アニメーション |	XML or animate() | Animationウィジェット
Canvasのdraw/paint | CanvasとDrawables | CustomPaintとCustomPainter
Intent1. 画面遷移 |	Intent	| NavigatorとRoutes
Intent2. 外部コンポーネント呼び出し	|Intent	|プラグインを使用/ネイティブに実装
外部アプリからIntentを受け取る|	Intent|	MethodChannelでネイティブ実装
Activity/Fragment|	Activity/Fragment|	同等のものは存在しない。RouteがActivityに近い
startActivityForResult|	startActivityForResult|	Navigator
runOnUiThread()|	runOnUiThread()	|非同期のときだけasync/await使って処理
OKHttp|	OKHttp|	httpプラグイン
文字列の国際化||		Intlプラグイン
Gradle	|Gradle|	pubspec.yaml
LinearLayout|	LinearLayout|	RowまたはColumnウィジェット
RelativeLayout	|RelativeLayout	|Column,Row,Stackの各ウィジェット
ScrollView|	ScrollView	|ListViewウィジェット
タップイベント	|setOnClickListener()	|ウィジェットのイベント検出パラメータ/GestureDetector
ListView	|ListView	|ListView（Adaptor不要）
リスト項目タップイベント	|ListViewのonItemClickListener()	|ウィジェットのタップ処理
カスタムフォント	|TextViewのFontFamily|	TextウィジェットのfontFamily
文字のスタイリング	|	|TextウィジェットのStyleパラメータ
hintと同等のものは？|		|Textウィジェットのdecorationパラメータ
Inputフォームのエラー表示	||	Textウィジェットのdecorationパラメータ
GPSセンサーを使用するには？	||	geolocatorプラグイン
カメラにアクセスするには？	||	image_pickerプラグイン
Facebookログイン	||	flutter_facebook_loginプラグイン
Firebase機能を使うには	||	各公式プラグイン
NDKを使用するには？	||	FlutterとAndroidでやりとり
テーマ	XML	MaterialAppのThemeData
Shared| Preferences|	SharedPreferences	Shared_Preferencesプラグイン
SQLite	|SQLite	|SQFliteプラグイン
プッシュ通知|	|	Firebase Cloud Messagingをfirebase_messagingプラグインで
