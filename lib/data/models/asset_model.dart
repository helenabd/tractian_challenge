class AssetModel {
  final String id;
  final String name;
  final String? parentId;
  final String? sensorId;
  final String? sensorType;
  final String status;
  final String getewayId;
  final String? locationId;

  AssetModel({
    required this.id,
    required this.name,
    required this.parentId,
    required this.sensorId,
    required this.sensorType,
    required this.status,
    required this.getewayId,
    required this.locationId,
  });

  AssetModel copyWith({
    String? id,
    String? name,
    String? parentId,
    String? sensorId,
    String? sensorType,
    String? status,
    String? getewayId,
    String? locationId,
  }) {
    return AssetModel(
      id: id ?? this.id,
      name: name ?? this.name,
      parentId: parentId ?? this.parentId,
      sensorId: sensorId ?? this.sensorId,
      sensorType: sensorType ?? this.sensorType,
      status: status ?? this.status,
      getewayId: getewayId ?? this.getewayId,
      locationId: locationId ?? this.locationId,
    );
  }

  factory AssetModel.fromJson(Map<String, dynamic> json) {
    return AssetModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      parentId: json['parentId'],
      sensorId: json['sensorId'],
      sensorType: json['sensorType'],
      status: json['status'] ?? '',
      getewayId: json['getewayId'] ?? '',
      locationId: json['locationId'],
    );
  }

  @override
  String toString() {
    return 'AssetModel(id: $id, name: $name, parentId: $parentId, sensorId: $sensorId, sensorType: $sensorType, status: $status, getewayId: $getewayId, locationId: $locationId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AssetModel &&
        other.id == id &&
        other.name == name &&
        other.parentId == parentId &&
        other.sensorId == sensorId &&
        other.sensorType == sensorType &&
        other.status == status &&
        other.getewayId == getewayId &&
        other.locationId == locationId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        parentId.hashCode ^
        sensorId.hashCode ^
        sensorType.hashCode ^
        status.hashCode ^
        getewayId.hashCode ^
        locationId.hashCode;
  }
}
