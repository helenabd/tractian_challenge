import 'package:flutter/material.dart';

import '../../../core/core.dart';

class TreeViewSearchBar extends StatelessWidget {
  const TreeViewSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double totalWidth = MediaQuery.sizeOf(context).width;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: totalWidth,
      child: TextFormField(
        style: AppTextStyles.searchHintTextStyle,
        controller: TextEditingController(),
        cursorColor: AppColors.colorFunctionalSoftDark,
        decoration: InputDecoration(
          hintText: 'Buscar Ativo ou Local',
          hintStyle: AppTextStyles.searchHintTextStyle,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
          fillColor: AppColors.colorFunctionalSoftLight,
          filled: true,
          prefixIcon: const Icon(
            Icons.search_outlined,
            color: AppColors.colorFunctionalSoftDark,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        ),
      ),
    );
  }
}
