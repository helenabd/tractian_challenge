import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../widgets/widgets.dart';
import '../home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TreeViewAppBar.buildAppBar(
        context: context,
        showIconBack: false,
        title: const Text(
          'TRACTIAN',
          style: AppTextStyles.logoTextStyle,
        ),
      ),
      backgroundColor: AppColors.colorFunctionalSoftLightest,
      body: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          children: [
            CompanyContainer(
              onTap: () {},
              title: 'Jaguar Unit',
            ),
            const SizedBox(height: 40),
            CompanyContainer(
              onTap: () {},
              title: 'Tobias Unit',
            ),
            const SizedBox(height: 40),
            CompanyContainer(
              onTap: () {},
              title: 'Apex Unit',
            ),
          ],
        ),
      ),
    );
  }
}
