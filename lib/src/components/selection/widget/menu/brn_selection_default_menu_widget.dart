import 'package:bruno/bruno.dart';
import 'package:bruno/src/components/selection/widget/menu/brn_selection_menu_item_context.dart';
import 'package:flutter/material.dart';

///默认菜单Item
class BrnSelectionDefaultMenuWidget extends BrnSelectionBaseMenuItemWidget {
  BrnSelectionDefaultMenuWidget(BrnSelectionMenuItemContext context)
      : super(context);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      constraints: BoxConstraints.expand(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Flexible(
            child: Text(
              this.menuItemContext.title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: true,
              style: menuItemContext.isHighLight
                  ? menuItemContext.themeData.menuSelectedTextStyle
                      .generateTextStyle()
                  : menuItemContext.themeData.menuNormalTextStyle
                      .generateTextStyle(),
            ),
          )),
          Padding(
              padding: EdgeInsets.only(left: 4),
              child: menuItemContext.isHighLight
                  ? (menuItemContext.active
                      ? BrunoTools.getAssetImageWithBandColor(
                          BrnAsset.iconArrowUpSelect,
                          configId: menuItemContext.themeData.configId)
                      : BrunoTools.getAssetImageWithBandColor(
                          BrnAsset.iconArrowDownSelect))
                  : (menuItemContext.active
                      ? BrunoTools.getAssetImageWithBandColor(
                          BrnAsset.iconArrowUpSelect,
                          configId: menuItemContext.themeData.configId)
                      : BrunoTools.getAssetImage(
                          BrnAsset.iconArrowDownUnSelect)))
        ],
      ),
    );
  }
}
