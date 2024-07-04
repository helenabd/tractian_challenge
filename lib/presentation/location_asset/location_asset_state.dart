import 'package:equatable/equatable.dart';

import '../../data/models/models.dart';

abstract class LocationAssetsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LocationAssetsInitial extends LocationAssetsState {}

class LocationAssetsLoading extends LocationAssetsState {}

class LocationAssetsLoaded extends LocationAssetsState {
  final List<LocationModel> locations;
  final List<AssetModel> assets;

  LocationAssetsLoaded({required this.locations, required this.assets});
}

class LocationAssetsError extends LocationAssetsState {
  final String message;

  LocationAssetsError(this.message);
}
