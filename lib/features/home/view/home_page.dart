import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tractian_challenge/data/models/models.dart';
import 'package:tractian_challenge/features/asset/view/asset_page.dart';

import '../../../core/core.dart';
import '../../../data/datasource/datasource.dart';
import '../../../presentation/presentation.dart';
import '../../../widgets/widgets.dart';
import '../home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    final companiesCubit = context.read<CompaniesCubit>();
    if (companiesCubit.state is! CompaniesLoaded) {
      companiesCubit.fetchCompanies();
    }
  }

  @override
  Widget build(BuildContext context) {
    List<CompanyModel> companies;

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
              companies = state.companies;
              return ListView.builder(
                itemCount: companies.length,
                itemBuilder: (context, index) {
                  var company = companies[index];
                  return Column(
                    children: [
                      CompanyContainer(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            settings:
                                const RouteSettings(name: AssetPage.routeName),
                            builder: (context) => BlocProvider(
                              create: (_) => LocationAssetsCubit(
                                  apiService: ApiServiceImpl()),
                              child: AssetPage(companyId: company.id),
                            ),
                          ));
                        },
                        title: company.name,
                      ),
                      if (index != (companies.length - 1))
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
