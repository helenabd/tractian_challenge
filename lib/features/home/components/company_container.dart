import 'package:flutter/material.dart';

import '../../../core/core.dart';

class CompanyContainer extends StatelessWidget {
  final Function() onTap;
  final String title;

  const CompanyContainer({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        decoration: BoxDecoration(
            color: AppColors.colorBrandPrimaryDark,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            const Icon(
              Icons.business,
              color: AppColors.colorFunctionalSoftLightest,
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: AppTextStyles.companiesTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
