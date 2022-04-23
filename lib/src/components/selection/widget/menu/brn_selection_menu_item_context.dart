import 'package:bruno/bruno.dart';

///MenuItem 所需要的上下文
class BrnSelectionMenuItemContext {


  final String title;
  final bool isHighLight;
  final bool active;
  final int index;

  BrnSelectionConfig themeData;


  BrnSelectionMenuItemContext(
    this.title,
    this.isHighLight,
    this.active,
    this.index,
    this.themeData);


}
