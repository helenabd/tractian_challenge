import 'package:flutter/material.dart';

import '../../../core/core.dart';

class TreeViewFilterChip extends StatelessWidget {
  final String name;
  final IconData icon;

  const TreeViewFilterChip({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.colorFunctionalSoftMedium),
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Icon(icon),
          Text(
            name,
            style: AppTextStyles.filterUnselectedTextStyle,
          )
        ],
      ),
    );
  }
}
