class LocationModel {
  final String id;
  final String name;
  final String? parentId;

  LocationModel({
    required this.id,
    required this.name,
    this.parentId,
  });

  LocationModel copyWith({
    String? id,
    String? name,
    String? parentId,
  }) {
    return LocationModel(
      id: id ?? this.id,
      name: name ?? this.name,
      parentId: parentId ?? this.parentId,
    );
  }

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      parentId: json['parentId'],
    );
  }

  @override
  String toString() =>
      'LocationModel(id: $id, name: $name, parentId: $parentId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocationModel &&
        other.id == id &&
        other.name == name &&
        other.parentId == parentId;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ parentId.hashCode;
}
