class MacrosEntity {
  String brand;
  String fabric;
  int length;
  String type;

  MacrosEntity({
    required this.brand,
    required this.fabric,
    required this.length,
    required this.type,
  });

  Map<String, Object?> toDocument() {
    return {
      'brand': brand,
      'fabric': fabric,
      'length': length,
      'type': type,
    };
  }

  static MacrosEntity fromDocument(Map<String, dynamic> doc) {
    return MacrosEntity(
      brand: doc['brand'],
      fabric: doc['fabric'],
      length: doc['length'],
      type: doc['type'],
    );
  }
}
