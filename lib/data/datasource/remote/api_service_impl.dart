import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../models/models.dart';
import 'api_service.dart';

class ApiServiceImpl implements ApiService {
  static const baseUrl = 'https://fake-api.tractian.com';

  @override
  Future<List<CompanyModel>> fetchCompanies() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/companies'));

      if (response.statusCode == 200) {
        List<dynamic> body = json.decode(response.body);
        List<CompanyModel> companies =
            body.map((dynamic item) => CompanyModel.fromJson(item)).toList();

        for (var element in companies) {
          log(element.toString());
        }
        return companies;
      } else {
        throw Exception('Failed to load companies: ${response.reasonPhrase}');
      }
    } catch (error) {
      throw Exception('Failed to load companies: $error');
    }
  }

  @override
  Future<List<AssetModel>> fetchCompaniesAssets(
      {required String companyId}) async {
    try {
      final response =
          await http.get(Uri.parse('$baseUrl/companies/$companyId/assets'));

      if (response.statusCode == 200) {
        List<dynamic> body = json.decode(response.body);
        List<AssetModel> assets =
            body.map((dynamic item) => AssetModel.fromJson(item)).toList();

        for (var element in assets) {
          log(element.toString());
        }
        return assets;
      } else {
        throw Exception('Failed to load companies: ${response.reasonPhrase}');
      }
    } catch (error) {
      throw Exception('Failed to load companies: $error');
    }
  }

  @override
  Future<List<LocationModel>> fetchCompaniesLocation(
      {required String companyId}) async {
    try {
      final response =
          await http.get(Uri.parse('$baseUrl/companies/$companyId/locations'));

      if (response.statusCode == 200) {
        List<dynamic> body = json.decode(response.body);
        List<LocationModel> locations =
            body.map((dynamic item) => LocationModel.fromJson(item)).toList();

        for (var element in locations) {
          log(element.toString());
        }
        return locations;
      } else {
        throw Exception('Failed to load companies: ${response.reasonPhrase}');
      }
    } catch (error) {
      throw Exception('Failed to load companies: $error');
    }
  }
}
