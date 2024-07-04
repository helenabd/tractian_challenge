import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../widgets/widgets.dart';
import '../components/components.dart';

class AssetPage extends StatelessWidget {
  static const routeName = '/assets';

  const AssetPage({super.key});

  @override
  Widget build(BuildContext context) {
    double totalWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
        appBar: TreeViewAppBar.buildAppBar(
          context: context,
          title: const Text(
            'Assets',
            style: AppTextStyles.appbarTextStyle,
          ),
        ),
        backgroundColor: AppColors.colorFunctionalSoftLightest,
        body: const SafeArea(
          minimum: EdgeInsets.only(top: 16),
          child: Column(
            children: [
              TreeViewSearchBar(),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TreeViewFilterChip(
                      name: 'Sensor de energia',
                      icon: Icons.flash_on_rounded,
                    ),
                    SizedBox(width: 8),
                    TreeViewFilterChip(
                      name: 'Crítico',
                      icon: Icons.error_outline,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Divider(
                color: AppColors.colorFunctionalSoftMedium,
              )
            ],
          ),
        ));
  }
}
