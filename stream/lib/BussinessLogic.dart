import 'dart:async';
import 'dart:math' as math;

/// データを作る
class Generator {
  var rand;
  var intStream;

  // コンストラクタ
  init(StreamController<int> stream) {
    rand = math.Random();
    intStream = stream;
  }

  /// ランダムな整数を作る
  generate() {
    var data = rand.nextInt(100);
    print("generatorが$dataを作ったよ");
    var stream;
    //streamにデータを入れる場合は、sink.addでデータを入れるだけです。
    stream.sink.add(data);
  }
}

/// 加工をする
class Coordinator {
  var intStream;
  var strStream;

  init(StreamController<int> intStream, StreamController<String> strStream) {
    this.intStream = intStream;
    this.strStream = strStream;
  }

  /// 流れてきたものをintからStringにする
  coordinate() {
    intStream.stream.listen((data) async {
      String newData = data.toString();
      print("coordinatorが$dataから$newDataに変換したよ");
      strStream.sink.add(newData);
    });
  }
}

/// 消費をする
class Consumer {
  var strStream;

  init(StreamController<String> stream) {
    strStream = stream;
  }

  /// 流れてきたStringを表示する
  consume() {
    strStream.stream.listen((data) async {
      print("consumerが$dataを使ったよ");
    });
  }
}
