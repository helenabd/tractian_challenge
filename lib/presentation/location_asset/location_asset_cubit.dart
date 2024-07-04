import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/datasource/remote/remote.dart';
import 'location_asset_state.dart';

class LocationAssetsCubit extends Cubit<LocationAssetsState> {
  final ApiService apiService;

  LocationAssetsCubit({required this.apiService})
      : super(LocationAssetsInitial());

  Future<void> fetchLocationsAndAssets({required String companyId}) async {
    try {
      emit(LocationAssetsLoading());
      final locations =
          await apiService.fetchCompaniesLocation(companyId: companyId);
      final assets =
          await apiService.fetchCompaniesAssets(companyId: companyId);
      emit(LocationAssetsLoaded(locations: locations, assets: assets));
    } catch (error) {
      emit(LocationAssetsError(error.toString()));
    }
  }
}
