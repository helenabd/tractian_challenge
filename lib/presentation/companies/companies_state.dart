import 'package:equatable/equatable.dart';

import '../../data/models/models.dart';

abstract class CompaniesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CompaniesInitial extends CompaniesState {}

class CompaniesLoading extends CompaniesState {}

class CompaniesLoaded extends CompaniesState {
  final List<CompanyModel> companies;

  CompaniesLoaded({required this.companies});

  @override
  List<Object?> get props => [companies];
}

class CompaniesError extends CompaniesState {
  final String message;

  CompaniesError(this.message);

  @override
  List<Object?> get props => [message];
}
