import 'package:bruno/src/components/selection/widget/menu/brn_selection_menu_item_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class BrnSelectionBaseMenuItemWidget extends StatelessWidget {
  @protected final BrnSelectionMenuItemContext menuItemContext;

  BrnSelectionBaseMenuItemWidget(this.menuItemContext,{Key? key}) : super(key: key);
}
