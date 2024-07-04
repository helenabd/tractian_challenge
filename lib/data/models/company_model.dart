class CompanyModel {
  final String name;
  final String id;

  CompanyModel({
    required this.name,
    required this.id,
  });

  CompanyModel copyWith({
    String? name,
    String? id,
  }) {
    return CompanyModel(
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      name: json['name'] ?? '',
      id: json['id'] ?? '',
    );
  }

  @override
  String toString() => 'CompanyModel(name: $name, id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CompanyModel && other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
