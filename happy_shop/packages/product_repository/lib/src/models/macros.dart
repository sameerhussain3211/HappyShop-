import '../entities/macros_entity.dart';

class Macros {
  String brand;
  String fabric;
  int length;
  String type;

  Macros({
    required this.brand,
    required this.fabric,
    required this.length,
    required this.type,
  });

  MacrosEntity toEntity() {
    return MacrosEntity(
      brand: brand,
      fabric: fabric,
      length: length,
      type: type,
    );
  }

  static Macros fromEntity(MacrosEntity entity) {
    return Macros(
        brand: entity.brand,
        fabric: entity.fabric,
        length: entity.length,
        type: entity.type);
  }
}
