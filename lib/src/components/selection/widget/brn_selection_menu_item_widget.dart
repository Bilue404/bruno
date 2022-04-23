import 'package:bruno/src/components/selection/brn_selection_view.dart';
import 'package:bruno/src/components/selection/widget/menu/brn_selection_menu_item_context.dart';
import 'package:bruno/src/components/selection/widget/menu/brn_selection_default_menu_widget.dart';
import 'package:bruno/src/theme/configs/brn_selection_config.dart';
import 'package:flutter/material.dart';

typedef void ItemClickFunction();

class BrnSelectionMenuItemWidget extends StatelessWidget {
  final String title;
  final bool isHighLight;
  final bool active;
  final ItemClickFunction? itemClickFunction;
  final BrnSelectionConfig themeData;
  final BrnOnCustomMenuItemBuilder? customMenuItemBuilder;
  final int index;

  BrnSelectionMenuItemWidget(
      {Key? key,
        required this.title,
        this.isHighLight = false,
        this.active = false,
        this.itemClickFunction,
        required this.themeData,
        this.customMenuItemBuilder,
        required this.index,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  context =  BrnSelectionMenuItemContext(
      title,
      isHighLight,
      active,
      index,
      themeData,
    );
    return Expanded(
      child: GestureDetector(
          onTap: () {
            _menuItemTapped();
          },
          child: customMenuItemBuilder?.call(context) ?? BrnSelectionDefaultMenuWidget(context)
      ),
      flex: 1,
    );
  }

  void _menuItemTapped() {
    if (this.itemClickFunction != null) {
      this.itemClickFunction!();
    }
  }
}
