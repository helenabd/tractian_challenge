import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../presentation/presentation.dart';
import '../../../widgets/widgets.dart';
import '../components/components.dart';

class AssetPage extends StatefulWidget {
  static const routeName = '/assets';

  final String companyId;

  const AssetPage({super.key, required this.companyId});

  @override
  State<AssetPage> createState() => _AssetPageState();
}

class _AssetPageState extends State<AssetPage> {
  @override
  void initState() {
    super.initState();

    final locationAssetsCubit = context.read<LocationAssetsCubit>();
    if (locationAssetsCubit.state is! LocationAssetsLoaded) {
      locationAssetsCubit.fetchLocationsAndAssets(companyId: widget.companyId);
    }
  }

  @override
  Widget build(BuildContext context) {
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
