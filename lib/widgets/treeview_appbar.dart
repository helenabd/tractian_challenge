import 'package:flutter/material.dart';

import '../core/core.dart';

class TreeViewAppBar {
  static PreferredSizeWidget buildAppBar({
    required BuildContext context,
    Widget? title,
    bool showIconBack = true,
    Function? functionIconBack,
    String? icon,
    List<Widget>? actions,
  }) {
    return AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.colorBrandPrimaryDarkest,
        title: title,
        leading: (showIconBack)
            ? InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () => Navigator.of(context).pop(false),
                child: const Icon(
                  Icons.chevron_left_rounded,
                  color: AppColors.colorFunctionalSoftLightest,
                  size: 24,
                ))
            : Container());
  }
}
