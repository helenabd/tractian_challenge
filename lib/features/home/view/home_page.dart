import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tractian_challenge/features/asset/view/asset_page.dart';

import '../../../core/core.dart';
import '../../../presentation/companies/companies.dart';
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
        child: BlocBuilder<CompaniesCubit, CompaniesState>(
          builder: (context, state) {
            if (state is CompaniesLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.colorBrandPrimaryDarkest,
                ),
              );
            } else if (state is CompaniesLoaded) {
              return ListView.builder(
                itemCount: state.companies.length,
                itemBuilder: (context, index) {
                  var company = state.companies[index];
                  return Column(
                    children: [
                      CompanyContainer(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            settings: RouteSettings(name: AssetPage.routeName),
                            builder: (context) => AssetPage(),
                          ));
                        },
                        title: company.name,
                      ),
                      if (index != (state.companies.length - 1))
                        const SizedBox(height: 40),
                    ],
                  );
                },
              );
            } else if (state is CompaniesError) {
              return Center(
                child: Text('Erro: ${state.message}'),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
