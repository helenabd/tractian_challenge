import '../../models/models.dart';

abstract class ApiService {
  Future<List<CompanyModel>> fetchCompanies();
}
