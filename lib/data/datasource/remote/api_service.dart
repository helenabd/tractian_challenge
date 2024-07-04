import '../../models/models.dart';

abstract class ApiService {
  Future<List<CompanyModel>> fetchCompanies();
  Future<List<LocationModel>> fetchCompaniesLocation(
      {required String companyId});
  Future<List<AssetModel>> fetchCompaniesAssets({required String companyId});
}
