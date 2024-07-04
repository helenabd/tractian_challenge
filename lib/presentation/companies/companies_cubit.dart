import 'package:bloc/bloc.dart';

import '../../data/datasource/datasource.dart';
import 'companies_state.dart';

class CompaniesCubit extends Cubit<CompaniesState> {
  final ApiService apiService;

  CompaniesCubit({required this.apiService}) : super(CompaniesInitial());

  Future<void> fetchCompanies() async {
    try {
      emit(CompaniesLoading());
      final companies = await apiService.fetchCompanies();
      emit(CompaniesLoaded(companies: companies));
    } catch (error) {
      emit(CompaniesError(error.toString()));
    }
  }

  Future<void> fetchCompaniesLocationsAndAssets(
      {required String companyId}) async {
    try {
      emit(CompaniesLoading());
      final locations =
          await apiService.fetchCompaniesLocation(companyId: companyId);
      final assets =
          await apiService.fetchCompaniesAssets(companyId: companyId);
      emit(CompaniesLocationsAndAssetsLoaded(
        assets: assets,
        locations: locations,
      ));
    } catch (error) {
      emit(CompaniesError(error.toString()));
    }
  }
}
