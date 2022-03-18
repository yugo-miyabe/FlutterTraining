import 'package:flutter/widgets.dart';
import 'package:inherited_widget/my_inherited_widget.dart';

class WidgetA extends StatelessWidget {
  const WidgetA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyInheritedWidget _myInheritedWidget = MyInheritedWidget.of(context);
    String message = _myInheritedWidget.message;
    return Text(message);
  }
}
