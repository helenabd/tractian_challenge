import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/datasource/datasource.dart';
import '../../features/home/home.dart';
import '../../presentation/companies/companies.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CompaniesCubit(apiService: ApiServiceImpl())..fetchCompanies(),
      child: const HomePage(),
    );
  }
}
